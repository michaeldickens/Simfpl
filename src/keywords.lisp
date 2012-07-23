;;;; keywords.lisp
;;;;
;;;; Handles special keywords that evaluate at compile time.

(load "codegen-forms.lisp")


;;; A hash containing keywords. The key is a string that holds the value of 
;;; the keyword, and the value is a function that returns compiled source code.
(defparameter *keywords* (make-hash-table :test 'equalp))

(defun make-keyword (keyword value)
  (setf (gethash keyword *keywords*) value))

(defun keyword-do-both (obj arg &key (indent ""))
  (concatenate 'string 
    (codegen-sexp obj :indent indent)
    (codegen-sexp arg :indent indent)))


;;; TODO: This only works for assigning local variables. Create a different 
;;; function that assigns instance and class variables and actually stores 
;;; them in a hash table at runtime.
(defun keyword-assign (name value &key (indent "")) 
  (if (find-class-for-fun name)
    (error 'function-redefinition-error :message (smp-symbol-to-string name)))
  (let ((compiled-value nil)
	(res-instruction nil)
	(smp-name (concatenate 'string 
		    "%" (make-smp-name (car *current-class*) name)))
	(var-exists (scope-exists name)))
    (setf compiled-value (codegen-sexp value :indent indent))
    (setf res-instruction (prev-instruction-to-string))
    (next-instruction)
    (setf *prev-instruction* smp-name)
    (scope-add name)
    (concatenate 'string
      compiled-value
      ;; Only allocate the variable if it hasn't already been allocated.
      (if (not var-exists)
	(concatenate 'string indent smp-name " = alloca " *obj-noptr* 
	  ", align 8" *newline*)
	"")
      indent (instruction-counter-to-string) " = load " 
        *obj-decl* res-instruction ", align 8" *newline*
      indent "store " *obj-noptr* " " (instruction-counter-to-string) ", " 
        *obj-decl* smp-name *newline*)))


(defun keyword-lambda (args body &key (indent ""))
  (setf *lambda-num* (+ *lambda-num* 1))
  (keyword-def nil (make-smp-symbol (write-to-string *lambda-num*))
    args body :indent indent :klass (list "Global" *global-funs*)))

(defun keyword-class (obj name parent body) nil)

;;; obj: Ignored.
;;; name: A smp-symbol representing the name of the function.
;;; args: A list of argument specifiers.
;;; body: A sexp representing the body of the function.
(defun keyword-def (obj name args body &key (indent "") 
			(klass *current-class*))
  (let ((class-name (car klass))
	(flags (if (string= (car klass) "Global")
		 1 ; SCOPE_CLASS_DATA
		 0)) ; SCOPE_INSTANCE_DATA
	(pure-args nil)
	(saved-instruction-counter *instruction-counter*)
	(saved-prev-instruction *prev-instruction*)
	(compiled-body nil)
	(compiled-klass nil)
	(klass-instruction nil)
	(last-instruction nil))

    (if (not (listp args))
      (setf args (list args)))

    (setf pure-args (reduce #'(lambda (xs x)
        (if (listp x)
	  (if (typep (car x) 'smp-symbol)
	    (error 'implementation-error 
	      "default arguments in def() not yet implemented.")
	    (error 'invalid-argspec-error (concatenate 'string 
              "Invalid list parameter " (write-to-string x))))
	  (if (eq (char (smp-symbol-to-string x) 0) #\&)
	    xs
	    (cons x xs))))
      args :initial-value nil))

    (scope-push)
    (loop for arg in pure-args do
	  (scope-add arg))

    (if (equalp flags 1) ; 1 = SCOPE_CLASS_DATA
      (make-class-fun (gethash (car klass) *classes*) 
	  	      (smp-symbol-to-string name)
		      (cons (get-prec name) args))
      (make-instance-fun (gethash (car klass) *classes*) 
	  	         (smp-symbol-to-string name)
		         (cons (get-prec name) args)))


    (setf *instruction-counter* 0)
    (setf compiled-body (codegen-sexp body :indent indent))
    (setf last-instruction (next-instruction))
    
    (setf *llvm-functions* (concatenate 'string *llvm-functions* *newline* 
      "define void @" (make-smp-name class-name name) "("
        *obj-decl* "sret %agg.result, " *obj-decl* "byval %obj, i32 %argc, "
        *obj-decl* "%argv) {" *newline*

      ;; Thanks to smpfun_call(), each argument in %argv maps to exactly one 
      ;; function parameter. This pulls them out into separate variables.
      (reduce #'(lambda (total n) (concatenate 'string total 
          indent "%" (make-smp-name class-name (nth n pure-args)) 
	    " = getelementptr inbounds " *obj-decl* "%argv, i32 " 
	    (write-to-string n) *newline*))
	(reduce #'(lambda (n x) 
		    (if n (cons (+ (car n) 1) n) (list 0)))
		pure-args :initial-value nil)
	:initial-value "")

      compiled-body
      (load-form last-instruction *prev-instruction*)
      (store-form last-instruction "agg.result")
      indent "ret void" *newline*
      "}" *newline*))

    (setf *instruction-counter* saved-instruction-counter)
    (setf *prev-instruction* saved-prev-instruction)
    (setf compiled-klass (codegen-sexp (make-smp-symbol (car *current-class*))
				       :indent indent))
    (setf klass-instruction *prev-instruction*)
    (next-instruction)
    (setf *prev-instruction* (next-instruction))

    (scope-pop)

    (concatenate 'string 
      compiled-klass 
      (alloca-form (- *prev-instruction* 1))
      (alloca-form *prev-instruction*)
      indent "call void (" *obj-decl* ", void (" *obj-decl* ", " *obj-decl* 
        ", i32, " *obj-decl* ")*, i32, ...)* @smpFunction_init(" *obj-decl* 
        "sret " (instruction-to-string (- *prev-instruction* 1)) ", void (" 
	*obj-decl* ", " *obj-decl* ", i32, " *obj-decl* ")* @" 
	(make-smp-name class-name name) ", i32 " 
	(write-to-string (+ (length args) 1)) ", " 
	(reduce #'(lambda (total x) (concatenate 'string total ", "
            (if (eq (char (smp-symbol-to-string x) 0) #\&)
	      (smp-symbol-to-string x)
	      (make-string-literal (make-smp-symbol "Object")))))
	  args :initial-value (make-string-literal (make-smp-symbol "Object")))
	")" *newline*
      indent "call void @smpType_def(" *obj-decl* "sret " 
        (prev-instruction-to-string) ", " *obj-decl* 
	"byval " (instruction-to-string klass-instruction) ", i32 "
	(write-to-string flags) ", "
	(make-string-literal name) ", " *obj-decl* "byval " 
	(instruction-to-string (- *prev-instruction* 1)) ")" *newline*)))


(defun keyword-apply (obj name args &key (indent ""))
  (llvm-funcall obj 
		(let ((str (smp-symbol-to-string name)))
		  (make-smp-symbol (subseq str 1 (length str))))
		args :indent indent))


(defun keyword-and (left right &key (indent ""))
  (let ((compiled-left nil)
	(compiled-right nil)

	(res-num nil)
	(left-end-num nil)
	(right-end-num nil)

	(left-res-instruction nil)
	(right-res-instruction nil))
    
    (setf res-num (next-instruction))
    (setf compiled-left (codegen-sexp left :indent indent))
    (setf left-res-instruction *prev-instruction*)
    (setf left-end-num (next-instruction))
    (next-instruction)
    (next-instruction)

    (setf compiled-right (codegen-sexp right :indent indent))
    (setf right-res-instruction *prev-instruction*)
    (setf right-end-num (next-instruction))
    (dotimes (number 6) (next-instruction))

    (setf *prev-instruction* res-num)

    (concatenate 'string 
      (alloca-form res-num)
      compiled-left

      indent (instruction-to-string left-end-num) 
        " = call i32 @smpObject_truep_c(" *obj-decl* "byval " 
	(instruction-to-string left-res-instruction) ")" *newline*
      (icmp-form (+ left-end-num 1) left-end-num)
      (br2-form (+ left-end-num 1) (+ left-end-num 2) (+ right-end-num 2))
      
      (label-form (+ left-end-num 2))
      compiled-right
      indent (instruction-to-string right-end-num)
        " = call i32 @smpObject_truep_c(" *obj-decl* "byval "
	(instruction-to-string right-res-instruction) ")" *newline*
      (icmp-form (+ right-end-num 1) right-end-num)
      (br2-form (+ right-end-num 1) (+ right-end-num 4) (+ right-end-num 2))

      (label-form (+ right-end-num 2))
      (load-form (+ right-end-num 3) "@smp_nil")
      (store-form (+ right-end-num 3) res-num)
      (br1-form *instruction-counter*)

      (label-form (+ right-end-num 4))
      (load-form (+ right-end-num 5) "@smp_true")
      (store-form (+ right-end-num 5) res-num)
      (br1-form *instruction-counter*)

      (label-form *instruction-counter*))))

				      

(defun keyword-or (left right &key (indent ""))
  (let ((compiled-left nil)
	(compiled-right nil)

	(res-num nil)
	(left-end-num nil)
	(right-end-num nil)

	(left-res-instruction nil)
	(right-res-instruction nil))
    
    (setf res-num (next-instruction))
    (setf compiled-left (codegen-sexp left :indent indent))
    (setf left-res-instruction *prev-instruction*)
    (setf left-end-num (next-instruction))
    (next-instruction)
    (next-instruction)

    (setf compiled-right (codegen-sexp right :indent indent))
    (setf right-res-instruction *prev-instruction*)
    (setf right-end-num (next-instruction))
    (dotimes (number 6) (next-instruction))

    (setf *prev-instruction* res-num)

    (concatenate 'string 
      (alloca-form res-num)
      compiled-left

      indent (instruction-to-string left-end-num) 
        " = call i32 @smpObject_truep_c(" *obj-decl* "byval " 
	(instruction-to-string left-res-instruction) ")" *newline*
      (icmp-form (+ left-end-num 1) left-end-num)
      (br2-form (+ left-end-num 1) (+ right-end-num 4) (+ left-end-num 2))
      
      (label-form (+ left-end-num 2))
      compiled-right
      indent (instruction-to-string right-end-num)
        " = call i32 @smpObject_truep_c(" *obj-decl* "byval "
	(instruction-to-string right-res-instruction) ")" *newline*
      (icmp-form (+ right-end-num 1) right-end-num)
      (br2-form (+ right-end-num 1) (+ right-end-num 4) (+ right-end-num 2))

      (label-form (+ right-end-num 2))
      (load-form (+ right-end-num 3) "@smp_nil")
      (store-form (+ right-end-num 3) res-num)
      (br1-form *instruction-counter*)

      (label-form (+ right-end-num 4))
      (load-form (+ right-end-num 5) "@smp_true")
      (store-form (+ right-end-num 5) res-num)
      (br1-form *instruction-counter*)

      (label-form *instruction-counter*))))


;;; Note: obj is not used, but it has to be here so the function call works 
;;; properly.
;;;
;;; Unfortunately, Lisp cannot handle taking an optional else-body argument 
;;; followed by a keyword indent argument. This function takes them as a &rest 
;;; and assigns else-body and indent manually.
(defun keyword-if (obj condition body &rest fun-args)
  (let ((else-body nil)
	(indent nil)
	
	(compiled-condition nil)
        (compiled-body nil)
        (compiled-else-body nil)
    
        ;; the instruction numbers for specific points in the target code
        (res-num nil)
        (condition-end-num nil)
        (body-end-num nil)
        (else-end-num nil)

	(condition-res-instruction nil)
	(body-res-instruction nil)
	(else-res-instruction nil))

    ;; Find the values of else-body and indent.
    (if (eq (car fun-args) :indent)
      (setf indent (cadr fun-args))
      (setf else-body (car fun-args)))
    (if (eq (cadr fun-args) :indent)
      (setf indent (caddr fun-args)))

    (setf res-num (next-instruction))
    (setf compiled-condition (codegen-sexp condition :indent indent))
    (setf condition-res-instruction *prev-instruction*)
    (setf condition-end-num (next-instruction))
    (next-instruction)
    (next-instruction)
    
    (setf compiled-body (codegen-sexp body :indent indent))
    (setf body-res-instruction *prev-instruction*)
    (setf body-end-num (next-instruction))
    (next-instruction)

    (setf compiled-else-body (codegen-sexp else-body :indent indent))
    (setf else-res-instruction *prev-instruction*)
    (setf else-end-num (next-instruction))
    (next-instruction)

    ;; Make sure this is done after compiling the inner sexps.
    (setf *prev-instruction* res-num)
    
    (concatenate 'string
      (alloca-form res-num)
      compiled-condition

      indent (instruction-to-string condition-end-num) 
        " = call i32 @smpObject_truep_c(" *obj-decl* "byval " 
        (instruction-to-string condition-res-instruction) ")" *newline*
      (icmp-form (+ condition-end-num 1) condition-end-num)
      (br2-form (+ condition-end-num 1) (+ condition-end-num 2) 
		(+ body-end-num 1))

      (label-form (+ condition-end-num 2))
      compiled-body
      (load-form body-end-num body-res-instruction)
      (store-form body-end-num res-num)
      (br1-form *instruction-counter*)

      (label-form (+ body-end-num 1))
      compiled-else-body
      (load-form else-end-num else-res-instruction)
      (store-form else-end-num res-num)
      (br1-form *instruction-counter*)

      (label-form *instruction-counter*))))


(defun keyword-try (obj body &rest exceptions) nil)

(defun keyword-while (obj condition body &key (indent ""))
  (let ((compiled-condition nil)
	(compiled-body nil)
	(res-num nil)

	;; instruction numbers for specific points in the target code           
        (condition-end-num nil)
	(body-end-num nil)

	(condition-res-instruction nil)
	(body-res-instruction nil))

    (setf res-num (next-instruction))
    (next-instruction)

    (setf compiled-condition (codegen-sexp condition :indent indent))
    (setf condition-res-instruction *prev-instruction*)
    (setf condition-end-num (next-instruction))
    (next-instruction)
    (next-instruction)

    (setf compiled-body (codegen-sexp body :indent indent))
    (setf body-res-instruction *prev-instruction*)
    (setf body-end-num (next-instruction))
    (dotimes (number 6) (next-instruction))

    (setf *prev-instruction* res-num)

    (concatenate 'string
      (alloca-form res-num)
      (br1-form (+ res-num 1))

      (label-form (+ res-num 1))
      compiled-condition
      
      indent (instruction-to-string condition-end-num)
        " = call i32 @smpObject_truep_c(" *obj-decl* "byval "
        (instruction-to-string condition-res-instruction) ")" *newline*
      (icmp-form (+ condition-end-num 1) condition-end-num)
      (br2-form (+ condition-end-num 1) (+ condition-end-num 2) 
		(+ body-end-num 6))

      (label-form (+ condition-end-num 2))
      compiled-body

      (load-form body-end-num body-res-instruction)
      (store-form body-end-num res-num)


      indent (instruction-to-string (+ body-end-num 1))
        " = call i32 @smp_should_breakp_c(" *obj-decl* 
	(instruction-to-string body-res-instruction) ")" *newline*
      (icmp-form (+ body-end-num 2) (+ body-end-num 1))
      (br2-form (+ body-end-num 2) (+ body-end-num 3) (+ res-num 1))
      
      (label-form (+ body-end-num 3))
      (alloca-form (+ body-end-num 4))
      indent "call void @smpThrown_get_first_value(" *obj-decl* "sret " 
        (instruction-to-string (+ body-end-num 4)) ", " 
	*obj-decl* (instruction-to-string body-res-instruction) ")" *newline*
      (load-form (+ body-end-num 5) (+ body-end-num 4))
      (store-form (+ body-end-num 5) res-num)
      (br1-form (+ body-end-num 6))

      (label-form (+ body-end-num 6)))))


(defun make-keywords ()
  (make-keyword ";" #'keyword-do-both)
  (make-keyword "=" #'keyword-assign)
  (make-keyword "=>" #'keyword-lambda)
  (make-keyword "class" #'keyword-class)
  (make-keyword "def" #'keyword-def)
  (make-keyword "." #'keyword-apply)
  (make-keyword "and" #'keyword-and)
  (make-keyword "&&" #'keyword-and)
  (make-keyword "or" #'keyword-or)
  (make-keyword "||" #'keyword-or))
  (make-keyword "if" #'keyword-if)
  (make-keyword "try" #'keyword-try)
  (make-keyword "while" #'keyword-while)

(make-keywords)