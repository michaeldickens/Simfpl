;;;; macros.lisp
;;;; 
;;;; Functions for creating and using Simfpl macros.

(load "parser.lisp")


(defclass smp-macro ()
  ((name :initarg :name) ; a string
   ;; A list of smp-symbols. Includes the object as the first argument.
   (arg-names :initarg :arg-names)
   (body :initarg :body)))

;;; A hash table where the key is a string representing the name of the macro 
;;; and the value is the macro itself.
(defparameter *macros* (make-hash-table :test 'equal))

;;; Where name and arg-names contain smp-symbols.
(defun make-macro (name arg-names body)
  (setf (gethash (smp-symbol-to-string name) *macros*)
	(make-instance 'smp-macro :name (smp-symbol-to-string name)
		       :arg-names arg-names :body body)))

;;; This function is called in main.lisp before anything executes.
(defun init-macros ()
  ;; dot (.) application. TODO: This should be core syntax, not a macro.
  (make-macro (make-smp-symbol ".") (make-smp-symbol (list "obj" "f" "args")) 
	      (make-smp-symbol `(("," "obj") ("," "f") ("@" "args"))))
  ;; AND, OR.
  (make-macro (make-smp-symbol "and") (make-smp-symbol (list "left" "right"))
	      (make-smp-symbol `(("if" ("," "left") ("," "right") nil)))) 
  (make-macro (make-smp-symbol "or") (make-smp-symbol (list "left" "right"))
          (make-smp-symbol `(("if" ("," "left") ("," "left") ("," "right")))))
  (make-macro (make-smp-symbol "&&") (make-smp-symbol (list "left" "right"))
          (make-smp-symbol `(("," "left") "and" ("," "right"))))
  (make-macro (make-smp-symbol "||") (make-smp-symbol (list "left" "right"))
          (make-smp-symbol `(("," "left") "or" ("," "right"))))
  ;; I think these macros are sort of pointless because you can just use 
  ;; (at) and (drop).
  (make-macro (make-smp-symbol "caar") (make-smp-symbol `("obj"))
	      (make-smp-symbol `((("," "obj") "car") "car")))
  (make-macro (make-smp-symbol "cadr") (make-smp-symbol `("obj"))
	      (make-smp-symbol `((("," "obj") "cdr") "car")))
  (make-macro (make-smp-symbol "cdar") (make-smp-symbol `("obj"))
	      (make-smp-symbol `((("," "obj") "car") "cdr")))
  (make-macro (make-smp-symbol "cddr") (make-smp-symbol `("obj"))
	      (make-smp-symbol `((("," "obj") "cdr") "cdr")))
  (make-macro (make-smp-symbol "caaar") (make-smp-symbol `("obj"))
	      (make-smp-symbol `(((("," "obj") "car") "car") "car")))
  (make-macro (make-smp-symbol "caadr") (make-smp-symbol `("obj"))
	      (make-smp-symbol `(((("," "obj") "cdr") "car") "car")))
  (make-macro (make-smp-symbol "cadar") (make-smp-symbol `("obj"))
	      (make-smp-symbol `(((("," "obj") "car") "cdr") "car")))
  (make-macro (make-smp-symbol "caddr") (make-smp-symbol `("obj"))
	      (make-smp-symbol `(((("," "obj") "cdr") "cdr") "car")))
  (make-macro (make-smp-symbol "cdaar") (make-smp-symbol `("obj"))
	      (make-smp-symbol `(((("," "obj") "car") "car") "cdr")))
  (make-macro (make-smp-symbol "cdadr") (make-smp-symbol `("obj"))
	      (make-smp-symbol `(((("," "obj") "cdr") "car") "cdr")))
  (make-macro (make-smp-symbol "cddar") (make-smp-symbol `("obj"))
	      (make-smp-symbol `(((("," "obj") "car") "cdr") "cdr")))
  (make-macro (make-smp-symbol "cdddr") (make-smp-symbol `("obj"))
	      (make-smp-symbol `(((("," "obj") "cdr") "cdr") "cdr"))))


;;; obj: An internal object representing the object value.
;;; macro: A smp-macro that holds the macro data.
;;; args: A list of internal objects representing the argument values.
(defun expand-macro (obj macro args)
  (let ((arg-names (slot-value macro 'arg-names))
	(body (slot-value macro 'body)))
    (expand-macro-rec (cons obj args) arg-names body)))

(defun expand-macro-rec (args arg-names body)
  (if (or (null body) (not (listp body)))
    (return-from expand-macro-rec body))
  (setf body (mapcar #'(lambda (x) (expand-macro-rec args arg-names x)) body))
  (setf body (expand-lists-rec args arg-names body))
  (loop for n from 0 to (length args) do
    (if (and (symbol= (car body) ",") 
	     (symbol= (cadr body) (nth n arg-names)))
      (return-from expand-macro-rec (nth n args))))
  body)

(defun expand-lists-rec (args arg-names body)
  (if (null body)
    (return-from expand-lists-rec body))
  (if (listp (car body))
    (loop for n from 0 to (length args) do
      (if (and (symbol= (caar body) "@")
	       (symbol= (cadar body) (nth n arg-names)))
        (if (listp (nth n args))
          (return-from expand-lists-rec 
	  	       (append (nth n args) 
		  	       (expand-lists-rec args arg-names (cdr body))))
  	  (error 'invalid-list-expansion-error :value (nth n args) :message 
	         "List expansion operator (@) not followed by a list.")))))
  (cons (car body) (expand-lists-rec args arg-names (cdr body))))


(defun expand-macros (sexp)
  (if (or (null sexp) (not (listp sexp)))
    (return-from expand-macros sexp))
  (setf sexp (mapcar #'expand-macros sexp))
  (if (typep (cadr sexp) 'smp-symbol)
    (let ((macro (gethash (smp-symbol-to-string (cadr sexp)) *macros*))
	      (argc nil))
      (when macro
	    ;; Call expand-macro on the macro and its arguments, then cons 
        ;; the result with the rest of the sexp.
        (setf argc (- (length (slot-value macro 'arg-names)) 1))
	    (return-from expand-macros (expand-macros (cons 
     	  (expand-macro (car sexp) macro 
	                    (butlast (cddr sexp) (- (length (cddr sexp)) argc)))
	      (nthcdr argc (cddr sexp))))))))
  (cons (car sexp) (expand-macros (cdr sexp))))











