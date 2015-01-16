;;;; main.lisp
;;;; 
;;;; Top-level file for the Simfpl compiler.

(defun smp-compile (str)
  (load "codegen.lisp")
  (init-macros)
  (handler-case
    (codegen (sexpgen (parse-string str)))
    (compile-error (ce) 
      (format t "~a: ~a~%" ce (slot-value ce 'message))))
  nil)


