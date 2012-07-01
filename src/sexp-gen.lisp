(load "parser.lisp")

;;;; Takes syntax-analyzed code and converts it into intermediate code, i.e. 
;;;; s-expressions.

;;; Moves through the token list, converting anything between parenthesis 
;;; tokens into an actual list.
(defun add-depth (tokens)
  (car (add-depth-rec tokens 0 0)))

(defmacro add-depth-repeated-code ()
  `(let ((pair (add-depth-rec (cdr tokens) depth (+ count 1))))
    (cons (cons (car tokens) (car pair)) (cdr pair))))

;;; Keeps track of depth to determine whether an open or close parenthesis is 
;;; appropriate. Counts the number of tokens to properly account for when the 
;;; function recursively converts tokens to an inner list.
;;; 
;;; return: A cons cell where the car is the current depth-added list and the 
;;;   cdr is the token count.
(defun add-depth-rec (tokens depth count)
  (if (null tokens)
    (if (= depth 0) (cons nil count)
      (error 'mismatched-parentheses-error :message 
	     "unmatched open parenthesis"))
    (if (typep (car tokens) 'smp-symbol)
      (cond
        ((symbol= (car tokens) "(")
          (let ((inner-pair (add-depth-rec (cdr tokens) (+ depth 1) 0)))
	    (let ((pair
              (add-depth-rec (nthcdr (+ 1 (cdr inner-pair))
			       (cdr tokens)) depth 
			       (+ count (cdr inner-pair) 2))))
	      (cons (cons (car inner-pair) (car pair)) (cdr pair)))))
	  ((symbol= (car tokens) ")")
	    (if (= depth 0)
	      (error 'mismatched-parentheses-error :message
		     "unmatched close parenthesis")
              (cons nil count)))
        (t (add-depth-repeated-code)))
      (add-depth-repeated-code))))


;;; Converts parenthesis tokens into actual depth; 
;;; declares classes, functions, and variables; 
;;; checks that referenced functions and variables actually exist; 
;;; associates functions based on precedence; 
(defun make-sexp (tokens)
  (add-depth tokens))