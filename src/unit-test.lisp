(defparameter *report-on-successp* nil)
(defparameter *report-on-failurep* t)

(defun report-success (form)
  (if *report-on-successp* (format t
    "SUCCESS: ~a => ~a~%~t~tEQUALS: ~a => ~a~%"
    (cadr form) (eval (cadr form)) (caddr form) (eval (caddr form)))))

(defun report-failure (form)
  (if *report-on-failurep* (format t 
    "FAILURE: ~a => ~a~%~t~tDOES NOT EQUAL: ~a => ~a~%"
    (cadr form) (eval (cadr form)) (caddr form) (eval (caddr form)))))

(defmacro report-result (form)
  `(let ((successp (eval ,form)))
     (if successp (report-success ,form) (report-failure ,form))
     successp))

;;; Performs a non-short-circuiting AND operation.
(defun combine-all (&rest forms)
  (loop for form in forms do
    (if (not form) (return-from combine-all nil)))
  t)

(defmacro check (&body forms)
  `(combine-all
     ,@(loop for form in forms collect `(report-result ',form))))

;;; Any forms must not have side effects because they will be evaluated 
;;; repeatedly.
(defmacro check-equality (&body forms)
  `(combine-all
     ,@(loop for form in forms collect `(report-result ',form))))


;; Example usage: 
;; (format t "~a~%" (check 
;;  (= (* 3 4) (+ 5 7))
;;  (= (* 2 5) (+ 2 5))))