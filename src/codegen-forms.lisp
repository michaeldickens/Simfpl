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

(defmacro getelementptr-form (dest src indices)
  `(concatenate 'string
      indent (instruction-to-string ,dest) " = getelementptr inbounds " 
        *obj-decl* (instruction-to-string ,src) 
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


;;; Splits an obj_struct into its constituent parts.
;;; If you call this, you must increment the instruction counter by 5. 
;;; src must be %struct.obj_struct. instruction must be unused.
;;; Places the result in (instruction+2) and (instruction+4).
(defmacro split-obj-struct-form (instruction src)
  `(concatenate 'string 
     (alloca-form ,instruction)
     (store-form ,src ,instruction)
     (getelementptr-form (+ ,instruction 1) ,instruction '(0 0))
     indent (instruction-to-string (+ ,instruction 2)) 
       " = load %struct.smpType_struct** " 
       (instruction-to-string (+ ,instruction 1)) *newline*
     (getelementptr-form (+ ,instruction 3) ,instruction '(0 1))
      indent (instruction-to-string (+ ,instruction 4))
        " = load i8** " (instruction-to-string (+ ,instruction 3))
	*newline*))

;;; Splits an obj_struct into its constituent parts.
;;; If you call this, you must increment the instruction counter by 4. 
;;; src must be %struct.obj_struct*. instruction must be unused.
;;; Places the result in (instruction+1) and (instruction+3).
(defmacro split-obj-ptr-form (instruction src)
  `(concatenate 'string 
     (getelementptr-form ,instruction,src '(0 0))
     indent (instruction-to-string (+ ,instruction 1)) 
       " = load %struct.smpType_struct** " 
       (instruction-to-string ,instruction) *newline*
     (getelementptr-form (+ ,instruction 2) ,src '(0 1))
      indent (instruction-to-string (+ ,instruction 3))
        " = load i8** " (instruction-to-string (+ ,instruction 2))
	*newline*))

;;; If you call this, you must increment the instruction counter by the same 
;;; amount as (split-obj-struct-form).
(defmacro funcall-form (dest src instruction name argc argv)
  `(concatenate 'string 
     (split-obj-struct-form ,instruction ,src)
     indent (instruction-to-string ,dest) 
       " = call " *obj-noptr* " @smpObject_funcall(" 
       "%struct.smpType_struct* " 
         (instruction-to-string (+ ,instruction 2))
       ", i8* " (instruction-to-string (+ ,instruction 4))
       ", " (make-string-literal ,name)
       ", i32 " (write-to-string ,argc)
       ", " ,argv ")" *newline*
     (check-for-return-form ,dest)))

;;; If you call this, you must increment the instruction counter by 8.
(defmacro breaker-form (name src instruction break-to-here)
  `(concatenate 'string 
    (split-obj-struct-form ,instruction ,src)
    indent (instruction-to-string (+ ,instruction 5)) 
      " = call i32 @" ,name "(%struct.smpType_struct* " 
      (instruction-to-string (+ ,instruction 2)) ", i8* "
      (instruction-to-string (+ ,instruction 4)) ")" *newline*
    (icmp-form (+ ,instruction 6) (+ ,instruction 5))
    (br2-form (+ ,instruction 6) (+ ,instruction 7) ,break-to-here)))

(defmacro truep-form (src instruction break-to-here)
  `(breaker-form "smpObject_truep_c" ,src ,instruction ,break-to-here))

(defmacro should-breakp-form (src instruction break-to-here)
  `(breaker-form "smp_should_breakp_c" ,src ,instruction ,break-to-here))

;;; If you call this, you must increment the instruction counter by 9.
;;; instruction must be %struct.obj_struct.
(defmacro check-for-thrown-form (type instruction)
  `(concatenate 'string
      (split-obj-struct-form (+ ,instruction 1) ,instruction)
      indent (instruction-to-string (+ ,instruction 6))
        " = call i32 @smp_should_" ,type "p_c(" 
	"%struct.smpType_struct* " (instruction-to-string (+ ,instruction 3))
	", i8* " (instruction-to-string (+ ,instruction 5)) ")" *newline*
      (icmp-form (+ ,instruction 7) (+ ,instruction 6))
      (br2-form (+ ,instruction 7) (+ ,instruction 8) (+ ,instruction 9))

      (label-form (+ ,instruction 8))
      indent "ret " *obj-noptr* " " (instruction-to-string ,instruction)
        *newline*

      (label-form (+ ,instruction 9))))

(defmacro check-for-return-form (instruction)
  `(check-for-thrown-form "return" ,instruction))


