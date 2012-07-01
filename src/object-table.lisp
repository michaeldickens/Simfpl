(load "compile-error.lisp")

;;;; TODO: Test all this stuff.

;;; A hash containing every top-level object. The key is a string that holds 
;;; the name of the object, and the value is the object itself. The objects 
;;; in here do not contain any Simfpl code; they are only used to keep track 
;;; of declarations.
(defparameter *objects* (make-hash-table :test 'equalp))

;;; Copy all the elements of the hash src into the hash dest.
(defun copy-hash-elements (dest src)
  (maphash (lambda (key value) (setf (gethash key dest) value)) src))

(defclass smp-class ()
  ((name :initarg :name :reader :name)
   (parents :initarg :parents :reader :parents)
   (abstractp :initarg :abstractp :reader :abstractp)
   (finalp :initarg :finalp :reader :finalp)

   ;; A hash containing functions. The key is a string representing the 
   ;; function name. The value is a list containing first a number to 
   ;; indicate the precedence, then the minimum number of arguments, then 
   ;; the maximum number of arguments. If unlimited, the maximum will be the 
   ;; symbol 'infinity.
   (instance-funs :initarg :instance-funs :accessor :instance-funs)
   (instance-var-defaults :initarg :instance-var-defaults
			  :accessor :instance-var-defaults)
   (class-funs :initarg :class-funs :accessor :class-funs)
   (class-vars :initarg :class-vars :accessor :class-vars)))

;;; name: A string containing the name of the class. Should be capitalized.
;;; parents: A symbol or list of symbols containing the names of the parent 
;;;   class(es). If there is no parent class, this should be nil. The names 
;;;   here may be uppercase or lowercase.
(defun init-smp-class (name parents &optional &key (abstractp nil)
    (finalp nil))
  (setf name (string-capitalize name))
  (let (
    ;; Create a new Simfpl class.
    (klass (make-instance 'smp-class :name name :parents parents 
	:abstractp abstractp :finalp finalp
    :instance-funs (make-hash-table) :instance-var-defaults (make-hash-table)
    :class-funs (make-hash-table) :class-vars (make-hash-table))))

  ;; If parents is not a list, make it into a list.
  (if (not (listp parents)) (setf parents (list parents)))
  (setf (slot-value klass 'parents) parents)

  ;; Copy the functions and variables from parent classes into this class.
  (loop for parent in parents do
    (let ((src (gethash (string-capitalize (string parent)) *objects*)))
      (copy-hash-elements (slot-value klass 'instance-funs)
          (slot-value src 'instance-funs))
      (copy-hash-elements (slot-value klass 'instance-var-defaults)
          (slot-value src 'instance-var-defaults))
      (copy-hash-elements (slot-value klass 'class-funs)
          (slot-value src 'class-funs))
      (copy-hash-elements (slot-value klass 'class-vars)
          (slot-value src 'class-vars))))

  ;; Add the class to *objects*.
  (setf (gethash name *objects*) klass)

  ;; Return the new class.
  klass))

(defmethod get-instance-fun ((klass smp-class) name)
  (gethash name (slot-value klass 'instance-funs)))

(defmethod get-instance-var-default ((klass smp-class) name)
  (gethash name (slot-value klass 'instance-var-defaults)))

(defmethod get-class-fun ((klass smp-class) name)
  (gethash name (slot-value klass 'class-funs)))

(defmethod get-class-var ((klass smp-class) name)
  (gethash name (slot-value klass 'class-vars)))

(defmethod make-instance-fun ((klass smp-class) name spec)
  (if (equalp (length spec) 2) (append spec (cdr spec)))
  (setf (gethash name (slot-value klass 'instance-funs)) spec))

(defmethod make-instance-var-default ((klass smp-class) name)
  (setf (gethash name (slot-value klass 'instance-var-defaults)) t))

(defmethod make-class-fun ((klass smp-class) name spec)
  (if (equalp (length spec) 2) (append spec (cdr spec)))
  (setf (gethash name (slot-value klass 'class-funs)) spec))

(defmethod make-class-var ((klass smp-class) name)
  (setf (gethash name (slot-value klass 'class-vars)) t))


;;; TODO: finish this
(defun make-default-classes ()
  (setf smp-object (init-smp-class "Object" nil))
  (make-instance-fun smp-object "==" '(11 1))
  (make-instance-fun smp-object "&&" '(10 1))
  (make-instance-fun smp-object "||" '(9 1))
  (make-instance-fun smp-object "," '(5 1))
  (make-instance-fun smp-object ";" '(4 1))
  (make-instance-fun smp-object "and" '(19 1))
  (make-instance-fun smp-object "compute-hash" '(19 1))
  (make-instance-fun smp-object "cons" '(19 1))
  (make-instance-fun smp-object "eq" '(19 1))
  (make-instance-fun smp-object "eql" '(19 1))
  (make-instance-fun smp-object "equalp" '(19 1))
  (make-instance-fun smp-object "getclass" '(19 0))
  (make-instance-fun smp-object "instance?" '(19 1))
  (make-instance-fun smp-object "match" '(19 1))
  (make-instance-fun smp-object "nil?" '(19 0))
  (make-instance-fun smp-object "or" '(19 1))
  (make-instance-fun smp-object "to_s" '(19 0))
  (make-instance-fun smp-object "true?" '(19 0))
  (make-instance-fun smp-object "write" '(19 0))
  
  (setf smp-global (init-smp-class "Global" 'object))
  (make-instance-fun smp-object "!" '(22 1))
  (make-class-fun smp-global "class" '(1 2 3))
  (make-class-fun smp-global "def" '(2 3 3))
  (make-class-fun smp-global "if" '(3 2 3))
  (make-class-fun smp-global "import" '(19 1))
  (make-class-fun smp-global "list" '(19 0 infinity))
  (make-instance-fun smp-object "not" '(19 1))
  (make-class-fun smp-global "while" '(3 2))

  (setf smp-sym (init-smp-class "Symbol" 'object))
  (make-class-fun smp-sym "=" '(7 1))

  (setf smp-class (init-smp-class "Class" 'object :finalp t))
  (setf smp-collection (init-smp-class "Collection" 'object :abstractp t))
  (setf smp-pair (init-smp-class "Pair" 'collection))
  (make-instance-fun smp-pair "car" '(19 0))
  (make-instance-fun smp-pair "cdr" '(19 0))

  (setf smp-list (init-smp-class "List" 'pair))
  (make-instance-fun smp-list "length" '(19 0))

  (setf smp-nil (init-smp-class "Nil" 'list :finalp t))
  (setf smp-array (init-smp-class "Array" 'collection))
  (setf smp-hash (init-smp-class "String" 'array))
  (setf smp-hash (init-smp-class "Hash" 'collection))
  (setf smp-function (init-smp-class "Function" 'object))
  (make-instance-fun smp-function "call")

  (setf smp-numeric (init-smp-class "Numeric" 'object :abstractp t))
  (make-instance-fun smp-numeric "+" '(16 1))
  (make-instance-fun smp-numeric "-" '(16 1))
  (make-instance-fun smp-numeric "*" '(17 1))
  (make-instance-fun smp-numeric "/" '(17 1))
  (make-instance-fun smp-numeric "**" '(23 1))

  (setf smp-integer (init-smp-class "Integer" 'numeric))
  (setf smp-rational (init-smp-class "Rational" 'numeric))
  (setf smp-float (init-smp-class "Float" 'numeric))
  (setf smp-thrown (init-smp-class "Thrown" 'object :finalp t))
  (setf smp-exception (init-smp-class "Exception" 'object))
  )