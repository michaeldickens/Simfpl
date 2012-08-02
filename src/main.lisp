;;;; main.lisp
;;;; 
;;;; Top-level file for the Simfpl compiler.

(load "codegen.lisp")

(defun smp-compile (str)
  (load "codegen.lisp")
  (handler-case
    (codegen (sexpgen (parse-string str)))
    (compile-error (ce) 
      (format t "~a: ~a~%" ce (slot-value ce 'message))))
  nil)

(init-macros)

