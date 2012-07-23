;;;; codegen.lisp
;;;;
;;;; Takes s-expressions and converts them into target code.

;;; Counts the current instruction number for the LLVM code.
(defparameter *instruction-counter* 0)

;;; Holds the instruction number for the result of the previous function. 
;;; Every Lisp function that compiles some code must set this value. Using 
;;; this value makes it easier to generate and optimize code for things like 
;;; if statements, which have the result at the beginning of the target code.
(defparameter *prev-instruction* nil)

(defun instruction-to-string (instruction)
  (let ((str (if (typep instruction 'string)
      instruction
      (write-to-string instruction))))
    (if (or (equalp (char str 0) #\@) (equalp (char str 0) #\%))
      str
      (concatenate 'string "%" str))))

(defun instruction-counter-to-string ()
  (instruction-to-string *instruction-counter*))

(defun prev-instruction-to-string ()
  (instruction-to-string *prev-instruction*))

(defmacro next-instruction ()
  `(setf *instruction-counter* (+ *instruction-counter* 1)))

(defparameter *string-num* 0)

(defparameter *string-literals* "")
(defparameter *string-literal-hash* (make-hash-table :test 'equalp))

(defparameter *lambda-num* 0)
(defparameter *llvm-functions* "")

(defmacro next-string-num ()
  `(setf *string-num* (+ *string-num* 1)))

;;; Short for object declaration. Notice that *obj-noptr* does not end in a 
;;; space.
(defparameter *obj-decl* "%struct.obj_struct* ")
(defparameter *obj-noptr* "%struct.obj_struct")

;;; Creates a new string literal and adds it to *string-literals*.
;;; Returns the number of the new literal.
(defun add-string-literal (str)
  (if (gethash str *string-literal-hash*)
    (return-from add-string-literal (gethash str *string-literal-hash*)))

  (setf *string-literals* (concatenate 'string *string-literals*
    "@.smp_str" (write-to-string (next-string-num)) " = private constant ["
    (write-to-string (+ (length str) 1))
    " x i8] c\"" (subseq (write-to-string str) 1 
    	           (- (length (write-to-string str)) 1))
    "\\00\"" *newline*))
  (setf (gethash str *string-literal-hash*) *string-num*)
  *string-num*)

;;; name: A smp-symbol representing the string literal.
(defmacro make-string-literal (name)
  `(let ((str (smp-symbol-to-string ,name)))
     (concatenate 'string "i8* getelementptr inbounds (["
       (write-to-string (+ (length str) 1)) " x i8]* @.smp_str" 
       (write-to-string (add-string-literal str)) ", i32 0, i32 0)")))


;;; Load the necessary files.
(load "sexpgen.lisp")
(load "keywords.lisp")


(defun llvm-funcall (obj name args &key (indent ""))
  (let (
      (instruction-nums nil) ; a list corresponding to obj + args
      (res-instruction nil)
      (res nil)

      ;; The LLVM values that will be passed in to the function.
      (argc (length args))
      (argv ""))

    ;; Compile the object and the arguments.
    (setf res (codegen-sexp obj :indent indent))
    (setf instruction-nums (list *prev-instruction*))
    (loop for arg in args do
	  (setf res (concatenate 'string res 
				 (codegen-sexp arg :indent indent)))
	  (setf instruction-nums (cons *prev-instruction* 
				       instruction-nums)))
    (setf instruction-nums (nreverse instruction-nums))

    ;; Compile the function differently depending on how many arguments it has.
    (cond
      ((eq argc 0) (setf argv (concatenate 'string *obj-decl* "null")))
      ((eq argc 1) 
        (setf argv (concatenate 'string *obj-decl* 
		     (instruction-to-string (cadr instruction-nums)))))
      (t
        (setf arg-instruction (next-instruction))
	(setf res (concatenate 'string res 
	  indent (instruction-to-string arg-instruction) " = alloca [" 
	    (write-to-string argc) " x " *obj-noptr* "], align 8" *newline*
	  (reduce #'(lambda (total n) (concatenate 'string total 
	     indent (instruction-to-string (next-instruction)) " = " 
	        "getelementptr inbounds [" (write-to-string argc) " x " 
	        *obj-noptr* "]* " (instruction-to-string arg-instruction)
	        ", i32 0, i32 " (write-to-string n) *newline*
	      (progn (next-instruction) "")
  	      (load-form *instruction-counter* (nth n (cdr instruction-nums)))
	      (store-form *instruction-counter* (- *instruction-counter* 1))))
	    ;; build a list of indices, e.g. '(3 2 1 0)
	    (reduce #'(lambda (n x) 
			(if n (cons (+ (car n) 1) n) (list 0)))
		    (cdr instruction-nums) :initial-value nil)
	    :initial-value "")
	  indent (instruction-to-string (next-instruction)) " = " 
	    "bitcast [" (write-to-string argc) " x " *obj-noptr* "]* "
	    (instruction-to-string arg-instruction) " to "*obj-decl* 
	    *newline*))
	(setf argv (concatenate 'string *obj-decl* 
                     (instruction-to-string *instruction-counter*)))))

    (setf res-instruction (next-instruction))
    (dotimes (number 5) (next-instruction))
    (setf *prev-instruction* res-instruction)
    
    (setf res (concatenate 'string res 
		indent (instruction-to-string res-instruction)
		  " = alloca " *obj-noptr* ", align 8" *newline*
	        indent "call void @smpObject_funcall(" *obj-decl* "sret "
		  (instruction-to-string res-instruction)
		  ", " *obj-decl* "byval " 
		  (instruction-to-string (car instruction-nums)) ", "
		  (make-string-literal name)
		  ", i32 " (write-to-string argc)
		  ", " argv ")" *newline*
		(check-for-return-form res-instruction)))))
    

(defun codegen-sexp (sexp &key (indent ""))
  (cond
    ((null sexp)
      (setf *prev-instruction* "@smp_nil")
      "")

    ((eq sexp t)
      (setf *prev-instruction* "@smp_true")
      "")

    ;; If sexp is an integer less than 2**31, instantiate it using a native 
    ;; integer. Otherwise, instantiate it using a native string.
    ((typep sexp 'number)
      (setf *prev-instruction* (next-instruction))
      (concatenate 'string 
	indent (instruction-counter-to-string) 
	  " = alloca " *obj-noptr* ", align 8" *newline*
	(if (and (typep sexp 'integer) (< sexp (expt 2 31)))
	  (concatenate 'string 
	    indent "call void @smpInteger_init_clong(" *obj-decl* "sret "
	      (instruction-counter-to-string) ", i64 " 
	      (write-to-string sexp) ")" *newline*)
	  (concatenate 'string 
    	    indent "call void @smp" (if (typep sexp 'integer) 
				      "Integer" 
				      "Float")
  	      "_init_str(" *obj-decl* "sret " (instruction-counter-to-string) 
	      ", " (make-string-literal sexp) ")" *newline*))))

    ((typep sexp 'string)
      (setf *prev-instruction* (next-instruction))
      (dotimes (number 5) (next-instruction))
      (concatenate 'string
        indent (prev-instruction-to-string)
	  " = alloca " *obj-noptr* ", align 8" *newline*
	indent "call void @smpString_init(" *obj-decl* "sret " 
	  (prev-instruction-to-string) ", "
	  (make-string-literal (make-smp-symbol sexp)) ")" *newline*
	(check-for-return-form *prev-instruction*)))

    ((typep sexp 'smp-symbol)
      (if (scope-exists sexp)
	(if (match-whole "[A-Z][a-z]*" (smp-symbol-to-string sexp))
	  (progn  ; if the symbol is a class name
	    (setf *prev-instruction* (next-instruction))
	    (dotimes (number 5) (next-instruction))
	    (concatenate 'string 
	      indent (prev-instruction-to-string) " = alloca "
	        *obj-noptr* ", align 8" *newline*
	      indent "call void @scope_get(" *obj-decl* 
	        (prev-instruction-to-string)  ", " 
		(make-string-literal sexp) ")" *newline*
	      (check-for-return-form *prev-instruction*)))
          (progn  ; if the symbol is a variable name
	    (setf *prev-instruction* (make-smp-name (car *current-class*) 
						    sexp))
	    ""))
	(error 'undefined-symbol-error :message sexp)))

    ((typep sexp 'list)
      (cond
        ((eq (length sexp) 0) *newline*)
	((eq (length sexp) 1) (codegen-sexp (car sexp) :indent indent))

	;; If the function is a keyword, call the appropriate function 
	;; from keywords.lisp
	((gethash (smp-symbol-to-string (cadr sexp)) *keywords*)
	  (apply (gethash (smp-symbol-to-string (cadr sexp)) *keywords*)
		 (append (list (car sexp)) (cddr sexp) `(:indent ,indent))))
	((eq (length sexp) 2) (llvm-funcall (car sexp) (cadr sexp) nil
					   :indent indent))

	;; Call llvm-funcall to generate the code for the function call.
	(t (llvm-funcall (car sexp) (cadr sexp) (cddr sexp) :indent indent))))
    (t nil))) ; TODO: add error handling code

