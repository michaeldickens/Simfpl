(defparameter *newline* (coerce '(#\Newline) 'string))
(defparameter *tab* (coerce '(#\Tab) 'string))

(defparameter *default-prec* 19)

;;; We cannot use built-in Lisp symbols because Lisp symbols are not case-
;;; sensitive.
(defclass smp-symbol ()
  ((name :initarg :name)))

(defmethod print-object ((sym smp-symbol) stream)
  (format stream "'~a" (slot-value sym 'name)))

(define-condition invalid-function-input (error)
  ((function-name :initarg :name :reader :name)))

(defun make-smp-symbol (name)
  (cond
    ((typep name 'string) (make-instance 'smp-symbol :name name))
    ((null name) nil)
    ((typep name 'list) (mapcar #'make-smp-symbol name))
    (t (error 'invalid-function-input :name "make-smp-symbol"))))

(defun symbol= (sym obj)
  (cond 
    ((typep obj 'string) (string= (slot-value sym 'name) obj))
    ((typep obj 'smp-symbol)
      (string= (slot-value sym 'name) (slot-value obj 'name)))
    (t nil)))

(defun str-to-symbol (str)
  (make-instance 'smp-symbol :name str))

;;; gen-equalp (short for generic-equalp) is a generic equalp function 
;;; especially suited for the purposes of this compiler.
;;; For lists, evaluates recursively.
;;; For smp-symbols, compares the string inside it.
;;; For others, computes (equalp).
(defgeneric gen-equalp (x y))

(defmethod gen-equalp ((x smp-symbol) (y smp-symbol))
  (string= (slot-value x 'name) (slot-value y 'name)))

(defmethod gen-equalp ((x null) (y null))
  t)

(defmethod gen-equalp ((x null) (y list))
  nil)

(defmethod gen-equalp ((x list) (y null))
  nil)

(defmethod gen-equalp ((x list) (y list))
  (and (gen-equalp (car x) (car y))
       (gen-equalp (cdr x) (cdr y))))

(defmethod gen-equalp ((x t) (y t))
  (equalp x y))