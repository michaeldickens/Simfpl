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
(defparameter *string-literal-hash* (make-hash-table :test 'equal))

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


;;; TODO: This needs some major refactoring. As it is now: 
;;;   (1) compile obj and args
;;;   (2) call funcall(obj, name, args)
;;; It should do this instead: 
;;;   (1) compile obj
;;;   (2) retrieve fun
;;;   (3) compile args, taking arg modifiers into account
;;;   (4) call funcall(obj, fun, args)
(defun llvm-funcall (obj name args &key (indent ""))
  (let (
      (instruction-nums nil) ; a list corresponding to obj + args
      (start-instruction nil)
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
  	      (store-form (nth n (cdr instruction-nums)) 
			  *instruction-counter*)))
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

    (setf start-instruction (next-instruction))
    (dotimes (number 4) (next-instruction))
    (setf res-instruction (next-instruction))
    (dotimes (number 9) (next-instruction))
    (setf *prev-instruction* res-instruction)
    
    (setf res 
	  (concatenate 'string res 
	    (funcall-form res-instruction (car instruction-nums) 
			  start-instruction name argc argv)))))
    

(defun codegen-sexp (sexp &key (indent ""))
  (cond
    ((null sexp)
      (setf *prev-instruction* (next-instruction))
      (concatenate 'string 
	(load-form *prev-instruction* "@smp_nil")))

    ((eq sexp t)
      (setf *prev-instruction* (next-instruction))
      (concatenate 'string 
	(load-form *prev-instruction* "@smp_true")))

    ((typep sexp 'smp-number)
      (setf *prev-instruction* (next-instruction))
      (concatenate 'string 
        indent (instruction-counter-to-string) " = call " *obj-noptr* 
          " @smp" (if (typep sexp 'smp-integer) "Integer" "Float")
	  "_init_str(" (make-string-literal (make-smp-symbol sexp)) 
	  ")" *newline*))

    ((typep sexp 'string)
      (setf *prev-instruction* (next-instruction))
      (dotimes (number 9) (next-instruction))
      (concatenate 'string
	indent (prev-instruction-to-string) " = call " *obj-noptr* 
	  " @smpString_init(" (make-string-literal (make-smp-symbol sexp)) 
	  ")" *newline*
	(check-for-return-form *prev-instruction*)))

    ((typep sexp 'smp-symbol)
      (if (scope-exists sexp)
	(progn
	  (setf *prev-instruction* (next-instruction))
	  (dotimes (number 9) (next-instruction))
	  (concatenate 'string 
	    indent (prev-instruction-to-string) " = call " *obj-noptr* 
	      " @scope_get(" (make-string-literal sexp) ")" *newline*
	    (check-for-return-form *prev-instruction*)))
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
    (t (error 'syntax-error :message sexp))))



;;; Given an intermediate-code s-expression, compiles it to LLVM. Puts it 
;;; inside a main() function and sends the final result to the output file.
;;; 
;;; TODO: Make the filepath flexible.
(defun codegen (sexp)
  (let ((compiled-sexp (codegen-sexp sexp :indent "  "))
	(rfile (open "../bin/user-start.ll"))
	(start-str nil)
	(res nil)
	(indent "  "))
    (setf start-str
      (reduce #'(lambda (total x) (concatenate 'string total x))
        (loop for line = (read-line rfile nil) while line collect
	      (format nil "~a~%" line))))
    (close rfile)

    (setf res (concatenate 'string start-str *newline*
      *string-literals* *newline* 
      *llvm-functions* *newline* 
      "define " *obj-noptr* " @smpGlobal_main(%struct.smpType_struct* "
        "%obj.coerce0, i8* %obj.coerce1, i32 %argc, " *obj-decl* "%argv) {"
	*newline*
      compiled-sexp

      indent "ret " *obj-noptr* " " (instruction-to-string *prev-instruction*)
        *newline*
      "}" *newline* *newline*))

    (write-to-file "../bin/user.ll" res)
    res))

