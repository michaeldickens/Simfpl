(defparameter *newline* (coerce '(#\Newline) 'string))
(defparameter *tab* (coerce '(#\Tab) 'string))
(defparameter *semicolon* (intern ";"))

(defparameter *default-prec* 19)

;;;;
;;;; Definitions for smp-symbol class.
;;;;

;;; We cannot use built-in Lisp symbols because Lisp symbols are not case-
;;; sensitive.
(defclass smp-symbol ()
  ((name :initarg :name)))

(defmethod print-object ((sym smp-symbol) stream)
  (format stream "'~a" (slot-value sym 'name)))

(defun smp-symbol-to-string (sym)
  (cond
    ((typep sym 'smp-symbol) (slot-value sym 'name))
    ((typep sym 'string) sym)
    (t (write-to-string sym))))

;;; Converts a string or symbol to a smp-symbol. Also may take a list and 
;;; convert the strings and symbols within the list. If an invalid input is 
;;; entered, the input is returned and no error is thrown.
(defun make-smp-symbol (name)
  (cond
    ((typep name 'string) (make-instance 'smp-symbol :name name))
	((typep name 'symbol) (make-smp-symbol (string name)))
    ((typep name 'list) (mapcar #'make-smp-symbol name))
    (t name)))

(defun symbol= (sym obj)
  (if (typep sym 'smp-symbol)
    (cond 
      ((typep obj 'string) (string= (slot-value sym 'name) obj))
      ((typep obj 'smp-symbol)
        (string= (slot-value sym 'name) (slot-value obj 'name)))
      (t nil))
    nil))

;;;;
;;;; Definitions for smp-var class.
;;;;


;;; Represents an instance or class variable.
;;;
;;; objext: A string representing the object in which the variable resides.
;;; name: A string representing the name of the variable.
;;; instancep: If true, the variable is an instance variable. If false, it is 
;;;   a class variable.
(defclass smp-var ()
  ((object :initarg :object)
   (name :initarg :name)
   (instancep :initarg :instancep)))

(defmethod print-object ((var smp-var) stream)
  (format stream "'~a.~a" (slot-value var 'object) (slot-value var 'name)))

(defmethod make-smp-var (obj name &key (instancep t))
  (make-instance 'smp-var :object obj :name name :instancep instancep))

(defmethod smp-var-to-str (var)
  (concatenate 'string
    (slot-value var 'object) "." (slot-value var 'name)))


;;;;
;;;; Other definitions.
;;;;

(define-condition invalid-function-input (error)
  ((function-name :initarg :name :reader :name)))

;;; TODO: This should check for illegal characters.
(defun make-smp-name (klass name)
  (if (typep klass 'smp-symbol) (setf klass (smp-symbol-to-string klass)))
  (if (typep name 'smp-symbol) (setf name (smp-symbol-to-string name)))
  (concatenate 'string "smp" klass "_" name))


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