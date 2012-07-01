(load "tools.lisp")

(defparameter *error-fatal* 4) ; Program must terminate immediately.
(defparameter *error-internal* 3) ; Does not produce a stack trace.
(defparameter *error-default* 2) ; Program will not compile successfully.
(defparameter *error-warning* 1) ; Warning only.

(defparameter *stack-trace* nil)

(define-condition compile-error (error)
  ((message :initarg :message :accessor :message)
   (linenum :initarg :linenum :accessor :linenum)))

(define-condition syntax-error (compile-error)
  ())

(define-condition mismatched-parentheses-error (syntax-error)
  ())

(define-condition mismatched-quotes-error (syntax-error)
  ())

(define-condition undefined-function-error (compile-error)
  ())

(define-condition undefined-variable-error (compile-error)
  ())

(define-condition unknown-token-error (syntax-error)
  ())


