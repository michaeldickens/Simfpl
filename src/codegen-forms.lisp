;;;; codegen-forms.lisp
;;;;
;;;; Macros to help make it easier to generate target code.

(defmacro alloca-form (dest)
  `(concatenate 'string 
      indent (instruction-to-string ,dest) " = alloca " *obj-noptr* 
        ", align 8" *newline*))

(defmacro load-form (dest src)
  `(concatenate 'string 
      indent (instruction-to-string ,dest) " = load " *obj-decl* 
        (instruction-to-string ,src) ", align 8" *newline*))

(defmacro store-form (src dest)
  `(concatenate 'string 
      indent "store " *obj-noptr* " " (instruction-to-string ,src) ", "
        *obj-decl* (instruction-to-string ,dest) ", align 8" *newline*))

(defmacro getelementptr-form (src dest indices)
  `(concatenate 'string
      indent (instruction-to-string ,src) " = getelementptr inbounds " 
        *obj-decl* (instruction-to-string ,dest) 
	(reduce #'(lambda (total n-unique-name) (concatenate 'string total 
	    ", i32 " (write-to-string (nth n-unique-name ,indices))))
  	  (reverse (reduce #'(lambda (xs x) 
		       (if xs (cons (+ (car xs) 1) xs) (list 0)))
		     ,indices :initial-value nil))
	  :initial-value "")
	*newline*))

(defmacro icmp-form (dest src)
  `(concatenate 'string
      indent (instruction-to-string ,dest) " = icmp ne i32 " 
        (instruction-to-string ,src) ", 0" *newline*))

(defmacro br1-form (label1)
  `(concatenate 'string 
      indent "br label " (instruction-to-string ,label1) *newline*))

(defmacro br2-form (src label1 label2)
  `(concatenate 'string 
      indent "br i1 " (instruction-to-string ,src) ", "
        "label " (instruction-to-string ,label1) ", "
	"label " (instruction-to-string ,label2) *newline*))

(defmacro label-form (label)
  `(concatenate 'string 
      *newline* "; <label>:" 
      (if (typep ,label 'string) ,label (write-to-string ,label)) *newline*))

;;; If you call this, you must increment the instruction counter by 6.
(defmacro check-for-thrown-form (type instruction)
  `(concatenate 'string
      indent (instruction-to-string (+ ,instruction 1))
        " = call i32 @smp_should_" ,type "p_c(" *obj-decl* 
	(instruction-to-string ,instruction) ")" *newline*
      (icmp-form (+ ,instruction 2) (+ ,instruction 1))
      (br2-form (+ ,instruction 2) (+ ,instruction 3) (+ ,instruction 5))

      (label-form (+ ,instruction 3))
      (load-form (+ ,instruction 4) ,instruction)
      (store-form (+ ,instruction 4) "agg.result")
      indent "ret void" *newline*

      (label-form (+ ,instruction 5))))

(defmacro check-for-return-form (instruction)
  `(check-for-thrown-form "return" ,instruction))


