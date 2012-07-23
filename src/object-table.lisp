(load "compile-error.lisp")

;;;; TODO: Test all this stuff.


;;; A hash containing every top-level class. The key is a string that holds 
;;; the name of the class, and the value is the class itself. The classes 
;;; contain all the code in the program.
(defparameter *classes* (make-hash-table :test 'equalp))

;;; Keeps track of the variables currently in scope. Stores the variable as 
;;; a Lisp string rather than as a smp-symbol.
(defparameter *scope-stack* (list (make-hash-table :test 'equalp)))

;;; Takes a smp-symbol.
(defun scope-add (sym &key (value t))
  (setf (gethash (smp-symbol-to-string sym) (scope-top)) value))

;;; Takes a smp-symbol.
(defun scope-exists (sym)
  (gethash (smp-symbol-to-string sym) (scope-top)))

(defun scope-push ()
  (setf *scope-stack* (cons (make-hash-table :test 'equalp) *scope-stack*))
  (if (cadr *scope-stack*)
    (maphash #'(lambda (k v) (scope-add k :value v)) (cadr *scope-stack*))))

(defun scope-pop ()
  (setf *scope-stack* (cdr *scope-stack*)))

(defun scope-top ()
  (car *scope-stack*))

(defmacro set-prec (names prec)
  `(cons (cons 'or (mapcar #'(lambda (name) `(symbol= ,sym ,name)) ,names))
    (cons ,prec nil)))

;;; Gives the precedence for a symbol.
(defmethod get-prec ((sym smp-symbol))
  (eval
    (list 'cond
    (set-prec '(";") 4)
    (set-prec '("->") 6)
    (set-prec '("=" "+=" "-=" "*=" "/=" "%=" "|=" "&=" ">>=" "<<=" "||=" 
	         "&&=" "**=") 7)
    (set-prec '(".." "...") 8)
    (set-prec '("||") 9)
    (set-prec '("&&") 10)
    (set-prec '("==" "!=") 11)
    (set-prec '("<=" "<" ">" ">=") 12)
    (set-prec '("^" "|") 13)
    (set-prec '("&") 14)
    (set-prec '(">>" "<<") 15)
    (set-prec '("+" "-") 16)
    (set-prec '("*" "/" "%") 17)
    (set-prec '("=>") 21)
    (set-prec '("!" "~") 22)
    (set-prec '("**") 23)
    (set-prec '(".") 24)
	(set-prec '("`" "," "@") 25)
    '(t 19))))

;;; Gives the association for a symbol.
(defmethod get-assoc ((sym smp-symbol))
  (let ((prec (get-prec sym)))
    (if (or (equalp prec 6)
	    (equalp prec 7)
	    (equalp prec 23))
      'right
      'left)))

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
(defun make-smp-class (name parents &optional &key (abstractp nil)
    (finalp nil))
  (setf name (string-capitalize name))
  (let (
    ;; Create a new Simfpl class.
    (klass (make-instance 'smp-class :name name :parents parents 
	:abstractp abstractp :finalp finalp
    :instance-funs (make-hash-table :test 'equalp) 
    :instance-var-defaults (make-hash-table :test 'equalp)
    :class-funs (make-hash-table :test 'equalp) 
    :class-vars (make-hash-table :test 'equalp))))

  ;; If parents is not a list, make it into a list.
  (if (not (listp parents)) (setf parents (list parents)))
  (setf (slot-value klass 'parents) parents)

  ;; Copy the functions and variables from parent classes into this class.
  (loop for parent in parents do
    (let ((src (gethash (string-capitalize (string parent)) *classes*)))
      (copy-hash-elements (slot-value klass 'instance-funs)
          (slot-value src 'instance-funs))
      (copy-hash-elements (slot-value klass 'instance-var-defaults)
          (slot-value src 'instance-var-defaults))
      (copy-hash-elements (slot-value klass 'class-funs)
          (slot-value src 'class-funs))
      (copy-hash-elements (slot-value klass 'class-vars)
          (slot-value src 'class-vars))))

  ;; Add the class to *classes* and to the current scope.
  (setf (gethash name *classes*) klass)
  (scope-add name)

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
  (setf (gethash name (slot-value klass 'instance-funs)) spec))

(defmethod make-instance-var-default ((klass smp-class) name)
  (setf (gethash name (slot-value klass 'instance-var-defaults)) t))

(defmethod make-class-fun ((klass smp-class) name spec)
  (setf (gethash name (slot-value klass 'class-funs)) spec))

(defmethod make-class-var ((klass smp-class) name)
  (setf (gethash name (slot-value klass 'class-vars)) t))

;;; TODO: finish this
(defun make-default-classes ()
  (let ((smp-object nil)
	(smp-global nil)
	(smp-sym nil)
	(smp-class nil)
	(smp-collection nil)
	(smp-pair nil)
	(smp-list nil)
	(smp-nil nil)
	(smp-array nil)
	(smp-string nil)
	(smp-hash nil)
	(smp-function nil)
	(smp-number nil)
	(smp-integer nil)
	(smp-rational nil)
	(smp-float nil)
	(smp-thrown nil)
	(smp-exception nil))

    (setf smp-object (make-smp-class "Object" nil))
    (make-instance-fun smp-object ";" '(4 "Object" "Object"))
    (make-instance-fun smp-object "->" '(6 "List" "Same"))
    (make-instance-fun smp-object "==" '(11 "Bool" "Object"))
    (make-instance-fun smp-object "!=" '(11 "Bool" "Object"))
    (make-instance-fun smp-object "&&" '(10 "Bool" "Object"))
    (make-instance-fun smp-object "||" '(9 "Bool" "Object"))
    (make-instance-fun smp-object "and" '(19 "Bool" "Object"))
    (make-instance-fun smp-object "compute-hash" '(19 "Integer"))
    (make-instance-fun smp-object "cons" '(19 "List" "Same"))
    (make-instance-fun smp-object "eq" '(19 "Bool" "Object"))
    (make-instance-fun smp-object "eql" '(19 "Bool" "Object"))
    (make-instance-fun smp-object "equalp" '(19 "Bool" "Object"))
    (make-instance-fun smp-object "getclass" '(19 "Class"))
    (make-instance-fun smp-object "instance?" '(19 "Bool" "Class"))
    (make-instance-fun smp-object "match" '(19 "Bool" "Object"))
    (make-instance-fun smp-object "nil?" '(19 "Bool"))
    (make-instance-fun smp-object "or" '(19 "Bool" "Object"))
    (make-instance-fun smp-object "to_s" '(19 "String"))
    (make-instance-fun smp-object "true?" '(19 "Bool"))
    (make-instance-fun smp-object "write" '(19 "String"))
    (make-instance-fun smp-object "xor" '(19 "Bool" "Object"))
    
    (setf smp-global (make-smp-class "Global" 'object))
    (make-class-fun smp-global "!" '(22 "Bool" "Object"))
    (make-class-fun smp-global "~" '(22 "Integer" "Integer"))
    (make-class-fun smp-global "def" '(19 "Function" "Symbol" "List" "Object"))
    (make-class-fun smp-global "if" '(19 "Object" "Object" "&optional" 
					"Object"))
    (make-class-fun smp-global "while" '(19 "Object" "Object"))
    (make-class-fun smp-global "array" '(19 "&rest" "Object"))
    (make-class-fun smp-global "list" '(19 "&rest" "Object"))
    (make-class-fun smp-global "print" '(19 "Object"))
    (make-class-fun smp-global "printf" '(19 "String" "&rest" "Object"))
    (make-class-fun smp-global "println" '(19 "Object"))
  
    (setf smp-sym (make-smp-class "Symbol" 'object))
    (setf smp-class (make-smp-class "Class" 'object :finalp t))
    (setf smp-collection (make-smp-class "Collection" 'object :abstractp t))
    
    (setf smp-pair (make-smp-class "Pair" 'collection))
    (make-instance-fun smp-pair "car" '(19 "Object"))
    (make-instance-fun smp-pair "cdr" '(19 "List"))
  
    (setf smp-list (make-smp-class "List" 'pair))
    (make-instance-fun smp-list "length" '(19 "Integer"))
  
    (setf smp-nil (make-smp-class "Nil" 'list :finalp t))
    (setf smp-array (make-smp-class "Array" 'collection))
    (setf smp-string (make-smp-class "String" 'array))
    (setf smp-hash (make-smp-class "Hash" 'collection))
    
    (setf smp-function (make-smp-class "Function" 'object))
    (make-instance-fun smp-function "call" '(19 "T"))
  
    (setf smp-number (make-smp-class "Number" 'object :abstractp t))
    (make-instance-fun smp-number "<" '(12 "Bool" "Number"))
    (make-instance-fun smp-number "<=" '(12 "Bool" "Number"))
    (make-instance-fun smp-number ">=" '(12 "Bool" "Number"))
    (make-instance-fun smp-number ">" '(12 "Bool" "Number"))
    (make-instance-fun smp-number "+" '(16 "Number" "Number"))
    (make-instance-fun smp-number "-" '(16 "Number" "Number"))
    (make-instance-fun smp-number "*" '(17 "Number" "Number"))
    (make-instance-fun smp-number "/" '(17 "Number" "Number"))
    (make-instance-fun smp-number "**" '(23 "Number" "Number"))

    (setf smp-integer (make-smp-class "Integer" 'number))
    (setf smp-rational (make-smp-class "Rational" 'number))
    (setf smp-float (make-smp-class "Float" 'number))
    (setf smp-thrown (make-smp-class "Thrown" 'object :finalp t))
    (setf smp-exception (make-smp-class "Exception" 'object))
  ))

(make-default-classes)

(defparameter *global-funs*
  (slot-value (gethash "Global" *classes*) 'class-funs))

;;; A list containing the name of the current class and the functions 
;;; currently in scope.
(defparameter *current-class* (list "Global" *global-funs*))

;;; Searches the classes currently in scope for a function with the given 
;;; name. If found, returns a string representing the name of the class. If 
;;; not found, returns nil.
;;;
;;; fun-name: A smp-symbol representing a function name.
(defun find-class-for-fun (fun-name)
  (if (current-class-contains-fun fun-name) (car *current-class*)
    (if (global-contains-fun fun-name) "Global" nil)))

;;; fun-name: A smp-symbol representing the function name.
(defun current-class-contains-fun (fun-name)
  (gethash (smp-symbol-to-string fun-name) (cadr *current-class*)))

;;; fun-name: A smp-symbol representing the function name.
(defun global-contains-fun (fun-name)
  (gethash (smp-symbol-to-string fun-name) *global-funs*))

