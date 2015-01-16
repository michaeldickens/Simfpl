;;;; keywords.lisp
;;;;
;;;; Handles special keywords that evaluate at compile time.

(load "codegen-forms.lisp")


;;; A hash containing keywords. The key is a string that holds the value of 
;;; the keyword, and the value is a function that returns compiled source code.
(defparameter *keywords* (make-hash-table :test 'equal))

(defun make-keyword (keyword value)
  (setf (gethash keyword *keywords*) value))

(defun keyword-do-both (obj arg &key (indent ""))
  (concatenate 'string 
    (codegen-sexp obj :indent indent)
    (codegen-sexp arg :indent indent)))

(defun keyword-assign (name value &key (indent "")) 
  (if (and (typep name 'smp-symbol)
	   (find-class-for-fun name))
    (error 'function-redefinition-error :message (smp-symbol-to-string name)))
  (let ((compiled-collection nil)
	(collection-instruction nil)
	(compiled-index nil)
	(index-instruction nil)
	(compiled-value nil)
	(res-instruction nil)
	(end-part-instruction nil)
	(var-exists (scope-exists name)))

    ;; This has to happen before compiled-value.
    (if (not (typep name 'smp-symbol))
      (if (and (typep (cadr name) 'smp-symbol)
	       (symbol= (cadr name) "at"))
	(progn 
	  (setf compiled-collection (codegen-sexp (car name) :indent indent))
	  (setf collection-instruction *prev-instruction*)
	  (setf compiled-index (codegen-sexp (caddr name) :indent indent))
	  (setf index-instruction *prev-instruction*))
	(error 'syntax-error :message 
	       (concatenate 'string 
	         "Invalid operand " (smp-symbol-to-string name) " to the " 
		 "left of an assignment operator."))))

    (setf compiled-value (codegen-sexp value :indent indent))
    (setf res-instruction *prev-instruction*)
    (next-instruction)

    (if compiled-collection
      (concatenate 'string 
	compiled-collection 
	compiled-index
	compiled-value
	indent (instruction-counter-to-string) " = alloca [2 x " 
	  *obj-noptr* "], align 8" *newline*
	indent (instruction-to-string (next-instruction)) " = " 
	  "getelementptr inbounds [2 x " *obj-noptr* "]* " 
	  (instruction-to-string (- *instruction-counter* 1)) 
	  ", i32 0, i32 0" *newline* 
	(progn (next-instruction) "")
	(load-form *instruction-counter* index-instruction)
	(store-form *instruction-counter* (- *instruction-counter* 1))
	indent (instruction-to-string (next-instruction)) " = " 
	  "getelementptr inbounds [2 x " *obj-noptr* "]* " 
	  (instruction-to-string (- *instruction-counter* 3)) 
	  ", i32 0, i32 1" *newline* 
	(progn (next-instruction) "")
	(load-form *instruction-counter* res-instruction)
	(store-form *instruction-counter* (- *instruction-counter* 1))
	indent (instruction-to-string (next-instruction)) " = " 
	  "bitcast [2 x " *obj-noptr* "]* " 
	  (instruction-to-string (- *instruction-counter* 5)) " to " 
	  *obj-decl* *newline*


	(progn (dotimes (number 5) (next-instruction)) "")
	(progn (setf *prev-instruction* *instruction-counter*) "")
	(funcall-form *instruction-counter* collection-instruction 
		      (- *instruction-counter* 5) "at=" 2
		      (- *instruction-counter* 6)))
	  
      (progn
        (scope-add name)
	(setf end-part-instruction *instruction-counter*)
	(dotimes (number 5) (next-instruction))
        (concatenate 'string
          compiled-value
	  (split-obj-struct-form end-part-instruction res-instruction)
	  indent (instruction-counter-to-string) " = call i32 @scope_add("
	    (make-string-literal (smp-symbol-to-string name)) 
	    ", %struct.smpType_struct* " 
	    (instruction-to-string (+ end-part-instruction 2)) 
	    ", i8* " 
	    (instruction-to-string (+ end-part-instruction 4)) ")" 
	    *newline*)))))


(defun keyword-class (obj name parent body) nil)


(defun keyword-lambda (args body &key (indent ""))
  (setf *lambda-num* (+ *lambda-num* 1))
  (keyword-def nil (make-smp-symbol (write-to-string *lambda-num*))
    args body :indent indent :klass (list "Global" *global-funs*)))

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
	(arg-modifiers nil)
	(saved-instruction-counter *instruction-counter*)
	(saved-prev-instruction *prev-instruction*)
	(compiled-body nil)
	(compiled-klass nil)
	(first-instruction nil)
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
	    (progn 
	      (setf arg-modifiers (cons x arg-modifiers)) 
	      xs)
	    (progn 
	      (setf arg-modifiers (cons nil arg-modifiers))
	      (cons x xs)))))
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
    (setf first-instruction (next-instruction))
    (dotimes (number 2) (next-instruction))
    (setf unwrap-instruction (next-instruction))
    (dotimes (number (- (* (length pure-args) 5) 1)) (next-instruction))
    (setf compiled-body (codegen-sexp body :indent indent))
    (setf last-instruction (next-instruction))
    (next-instruction)

    ;; Defines the function itself.
    (setf *llvm-functions* (concatenate 'string *llvm-functions* *newline* 
      "define " *obj-noptr* " @" (make-smp-name class-name name) "("
        "%struct.smpType_struct* %obj.coerce0, i8* %obj.coerce1, "
        " i32 %argc, " *obj-decl* "%argv) {" *newline*

      indent (instruction-to-string first-instruction)
        " = call i32 @scope_push()" *newline*

      ;; Re-combine the split obj.
      (alloca-form "obj")
      indent (instruction-to-string (+ first-instruction 1)) 
        " = getelementptr " *obj-decl* "%obj, i32 0, i32 0" *newline*
      indent "store %struct.smpType_struct* %obj.coerce0, " 
        "%struct.smpType_struct** " 
	(instruction-to-string (+ first-instruction 1)) *newline*
      indent (instruction-to-string (+ first-instruction 2)) 
        " = getelementptr " *obj-decl* "%obj, i32 0, i32 1" *newline*
      indent "store i8* %obj.coerce1, i8** " 
        (instruction-to-string (+ first-instruction 2)) *newline*

      ;; Thanks to smpfun_call(), each argument in %argv maps to exactly one 
      ;; function parameter. This pulls them out into separate variables.
      (reduce #'(lambda (total n) (concatenate 'string total 
	  (getelementptr-form (make-smp-name class-name (nth n pure-args))
			      "argv" 
			      (list (- (length pure-args) (+ n 1))))
	  (split-obj-ptr-form (+ unwrap-instruction (* n 5))
	    (make-smp-name class-name (nth n pure-args)))
          indent (instruction-to-string (+ unwrap-instruction (* n 5) 4))
	    " = call i32 @scope_add(" 
	    (make-string-literal (smp-symbol-to-string (nth n pure-args))) 
	    ", %struct.smpType_struct* " 
	    (instruction-to-string (+ unwrap-instruction (* n 5) 1)) 
	    ", i8* " 
	    (instruction-to-string (+ unwrap-instruction (* n 5) 3)) 
	    ")" *newline*))
	(reverse (reduce #'(lambda (xs x) 
		     (if xs (cons (+ (car xs) 1) xs) (list 0)))
		   pure-args :initial-value nil))
	:initial-value "")

      compiled-body
      indent (instruction-to-string last-instruction)
        " = call i32 @scope_pop()" *newline*
      indent "ret " *obj-noptr* (prev-instruction-to-string)
        *newline*
      "}" *newline*))

    (setf *instruction-counter* saved-instruction-counter)
    (setf *prev-instruction* saved-prev-instruction)
    (setf compiled-klass (codegen-sexp (make-smp-symbol (car *current-class*))
				       :indent indent))
    (setf klass-instruction *prev-instruction*)
    (setf start-instruction (next-instruction))
    (dotimes (number 10) (next-instruction))
    (setf *prev-instruction* (next-instruction))

    (scope-pop)

    ;; Executes the internal call to def().
    (concatenate 'string 
      compiled-klass 

      indent (instruction-to-string start-instruction) " = call " 
        *obj-noptr* " (" *obj-noptr* " (%struct.smpType_struct*, i8*, i32, " 
	*obj-decl* ")*, i32, ...)* "
        "@smpFunction_init(" *obj-noptr* 
	 " (%struct.smpType_struct*, i8*, i32, " *obj-decl* ")* " 
	  "@" (make-smp-name class-name name) ", i32 " 
	(write-to-string (+ (length args) 1)) ", " 
	(reduce #'(lambda (total x) (concatenate 'string total ", "
            (if (eq (char (smp-symbol-to-string x) 0) #\&)
	      (smp-symbol-to-string x)
	      (make-string-literal (make-smp-symbol "Object")))))
	  args :initial-value (make-string-literal (make-smp-symbol "Object")))
	")" *newline*

      (split-obj-struct-form (+ start-instruction 1) klass-instruction)
      (split-obj-struct-form (+ start-instruction 6) start-instruction)
      indent (prev-instruction-to-string) " = call " *obj-noptr* " " 
        "@smpType_def(" 
	"%struct.smpType_struct* " 
	  (instruction-to-string (+ start-instruction 3)) 
	", i8* " (instruction-to-string (+ start-instruction 5))
        ", i32 " (write-to-string flags) ", "
	(make-string-literal name) ", " 
	"%struct.smpType_struct* " 
	  (instruction-to-string (+ start-instruction 8))
	", i8* " (instruction-to-string (+ start-instruction 10))
	")" *newline*)))


(defun keyword-apply (obj name args &key (indent ""))
  (llvm-funcall obj 
		(let ((str (smp-symbol-to-string name)))
		  (make-smp-symbol (subseq str 1 (length str))))
		args :indent indent))

;;; Deprecated. Use the "and" macro instead.
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

				      
;;; Deprecated. Use the "or" macro instead.
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
    (dotimes (number 7) (next-instruction))
    
    (setf compiled-body (codegen-sexp body :indent indent))
    (setf body-res-instruction *prev-instruction*)
    (setf body-end-num (next-instruction))

    (setf compiled-else-body (codegen-sexp else-body :indent indent))
    (setf else-res-instruction *prev-instruction*)
    (setf else-end-num (next-instruction))
    (next-instruction)

    ;; Make sure this is done after compiling the inner sexps.
    (setf *prev-instruction* *instruction-counter*)
    
    (concatenate 'string
      (alloca-form res-num)
      compiled-condition

      (truep-form condition-res-instruction condition-end-num 
		  body-end-num)

      (label-form (+ condition-end-num 8))
      compiled-body
      (store-form body-res-instruction res-num)
      (br1-form else-end-num)

      (label-form body-end-num)
      compiled-else-body
      (store-form else-res-instruction res-num)
      (br1-form else-end-num)

      (label-form else-end-num)
      (load-form (+ else-end-num 1) res-num))))


(defun keyword-try (obj body &rest exceptions) nil)


(defun keyword-while (obj condition body &key (indent ""))
  (let ((compiled-condition nil)
	(compiled-body nil)
	(res-num nil)

	;; instruction numbers for specific points in the target code           
        (condition-end-num nil)
	(body-end-num nil)

	(condition-res-instruction nil)
	(body-res-instruction nil)
	
	(catch-num nil)
	(exit-loop-num nil))

    (setf res-num (next-instruction))
    (next-instruction)
    (next-instruction)

    (setf compiled-condition (codegen-sexp condition :indent indent))
    (setf condition-res-instruction *prev-instruction*)
    (dotimes (number 8) (next-instruction))

    (setf compiled-body (codegen-sexp body :indent indent))
    (setf body-res-instruction *prev-instruction*)
    (setf body-end-num (next-instruction))
    (dotimes (number 6) (next-instruction))
    (setf catch-num (next-instruction))
    (dotimes (number 6) (next-instruction))
    (setf exit-loop-num (next-instruction))
    (next-instruction)

    (setf *prev-instruction* (+ exit-loop-num 1))

    (concatenate 'string
      (alloca-form res-num)
      (load-form (+ res-num 1) "@smp_nil")
      (store-form (+ res-num 1) res-num)
      (br1-form (+ res-num 2))

      (label-form (+ res-num 2))
      compiled-condition
      
      (truep-form condition-res-instruction (+ condition-res-instruction 1)
		  exit-loop-num)

      (label-form (- body-res-instruction 1))
      compiled-body

      (should-breakp-form body-res-instruction body-end-num (+ res-num 2))

      (label-form catch-num)
      (alloca-form (+ catch-num 1))
      (store-form body-res-instruction (+ catch-num 1))
      (split-obj-ptr-form (+ catch-num 2) (+ catch-num 1))
      indent (instruction-to-string (+ catch-num 6)) 
        " = call %struct.obj_struct @smpThrown_get_first_value(%struct.smpType_struct* " 
	(instruction-to-string (+ catch-num 3)) ", i8* "
	(instruction-to-string (+ catch-num 5)) ")" *newline*
      (store-form (+ catch-num 6) res-num)
      (br1-form (+ catch-num 7))

      (label-form exit-loop-num)
      (load-form (+ exit-loop-num 1) res-num)
      )))


(defun make-keywords ()
  (make-keyword ";" #'keyword-do-both)
  (make-keyword "=" #'keyword-assign)
  (make-keyword "=>" #'keyword-lambda)
  (make-keyword "class" #'keyword-class)
  (make-keyword "def" #'keyword-def)
  (make-keyword "." #'keyword-apply)
;  (make-keyword "and" #'keyword-and)
;  (make-keyword "&&" #'keyword-and)
;  (make-keyword "or" #'keyword-or)
;  (make-keyword "||" #'keyword-or)
  (make-keyword "if" #'keyword-if)
  (make-keyword "try" #'keyword-try)
  (make-keyword "while" #'keyword-while))

(make-keywords)
