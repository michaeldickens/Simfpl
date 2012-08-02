;;;; main.lisp
;;;; 
;;;; Top-level file for the Simfpl compiler.

(load "codegen.lisp")

;;; Given an intermediate-code s-expression, compiles it to LLVM. Puts it 
;;; inside a main() function and prints the final result.
(defun codegen (sexp)
  (let ((compiled-sexp (codegen-sexp sexp :indent "  "))
	(indent "  "))
    (next-instruction)
    (format t "~a" (concatenate 'string
      *string-literals* *newline* 
      *llvm-functions* *newline* 
      "define void @smpGlobal_main(" *obj-decl* "sret %agg.result, "
        *obj-decl* "byval %obj, i32 %argc, " *obj-decl* "%argv) {" *newline*
      compiled-sexp 
      (load-form *instruction-counter* *prev-instruction*)
      (store-form *instruction-counter* "agg.result")
      indent "ret void" *newline*
      "}" *newline* *newline*))))

(defun smp-compile (str)
  (load "codegen.lisp")
  (handler-case
    (codegen (sexpgen (parse-string str)))
    (compile-error (ce) 
      (format t "~a: ~a~%" ce (slot-value ce 'message)))))

(init-macros)

