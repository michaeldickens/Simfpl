(load "tools.lisp")

(defparameter *error-fatal* 4) ; Program must terminate immediately.
(defparameter *error-internal* 3) ; Does not produce a stack trace.
(defparameter *error-default* 2) ; Program will not compile successfully.
(defparameter *error-warning* 1) ; Warning only.

(defparameter *stack-trace* nil)
(defparameter *warning-count* 0)

(defun smp-warning (message)
  (setf *warning-count* (+ *warning-count* 1))
  (format t "Warning: ~a~%" message))

(define-condition compile-error (error)
  ((message :initarg :message :accessor :message)
   (linenum :initarg :linenum :accessor :linenum)))

(define-condition syntax-error (compile-error)
  ())

(define-condition implementation-error (compile-error)
  ())

(define-condition function-redefinition-error (compile-error)
  ())

(define-condition invalid-argspec-error (syntax-error)
  ())

(define-condition invalid-list-expansion-error (syntax-error)
  ((value :initarg :value :accessor :value)))

(define-condition mismatched-brackets-error (syntax-error)
  ())

(define-condition mismatched-quotes-error (syntax-error)
  ())

(define-condition undefined-symbol-error (compile-error)
  ())

(define-condition unknown-token-error (syntax-error)
  ())


