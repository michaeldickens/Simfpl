;;;; sexpgen.lisp
;;;;
;;;; Takes syntax-analyzed code and converts it into intermediate code, i.e. 
;;;; s-expressions.
;;;;

(load "macros.lisp")


;;; Finds curly braces and newlines and compiles them into parentheses.
;;;
;;; inside-braces-stack: A stack indicating whether each level of depth is 
;;;   inside curly braces.
(defun precompile-braces (tokens &optional (inside-braces-stack nil))
  (if (null tokens)
    (return-from precompile-braces nil))

  (if (typep (car tokens) 'smp-symbol)
    (cond
      ((symbol= (car tokens) "{")
        (append (make-smp-symbol `("(" "(")) 
	  (precompile-braces 
	    ;; If a newline follows the open brace, remove it.
	    (if (and (typep (cadr tokens) 'smp-symbol)
		     (symbol= (cadr tokens) *newline*) )
	      (cddr tokens)
	      (cdr tokens))
	    (cons t inside-braces-stack))))
      ((symbol= (car tokens) "(")
        (cons (car tokens) (precompile-braces (cdr tokens) 
			     (cons nil inside-braces-stack))))
      ((symbol= (car tokens) "}")
        (if (car inside-braces-stack)
          (append (make-smp-symbol `(")" ")")) (precompile-braces (cdr tokens)
	   			        (cdr inside-braces-stack)))
	  (error 'mismatched-parentheses-error :message 
		 "unmatched close curly brace")))
      ((symbol= (car tokens) ")")
        (if (not (car inside-braces-stack))
	  (cons (car tokens) (precompile-braces (cdr tokens)
						(cdr inside-braces-stack)))
	  (error 'mismatched-parentheses-error :message 
		 "unmatched close parenthesis")))
      ((symbol= (car tokens) *newline*)
        (if (car inside-braces-stack)
	  ;; If the newline is followed by a close brace, remove the newline.
	  (if (and (typep (cadr tokens) 'smp-symbol)
		   (symbol= (cadr tokens) "}"))
	    (precompile-braces (cdr tokens) inside-braces-stack)
  	    (append (make-smp-symbol `(")" ";" "("))
		  (precompile-braces (cdr tokens) inside-braces-stack)))
	  (precompile-braces (cdr tokens) inside-braces-stack)))
      (t 
        (cons (car tokens) (precompile-braces (cdr tokens) 
					      inside-braces-stack))))
      (cons (car tokens) (precompile-braces (cdr tokens) 
					    inside-braces-stack))))
		  

;;; Moves through the token list, converting anything between parenthesis 
;;; tokens into an actual list.
(defun add-depth (tokens)
  (car (add-depth-rec tokens 0 0 nil)))

(defmacro add-depth-repeated-code (new-car)
  `(let ((pair (add-depth-rec (cdr tokens) depth (+ count 1) inside-bracesp)))
    (cons (cons ,new-car (car pair)) (cdr pair))))

;;; Keeps track of depth to determine whether an open or close parenthesis is 
;;; appropriate. Counts the number of tokens to properly account for when the 
;;; function recursively converts tokens to an inner list.
;;; 
;;; return: A cons cell where the car is the current depth-added list and the 
;;;   cdr is the token count.
(defun add-depth-rec (tokens depth count inside-bracesp)
  (if (null tokens)
    (if (= depth 0) (cons nil count)
      (error 'mismatched-parentheses-error :message 
          (if inside-bracesp
            "unmatched open curly brace"
	    "unmatched open parenthesis")))
    (if (typep (car tokens) 'smp-symbol)
      (cond
        ((or (symbol= (car tokens) "(") (symbol= (car tokens) "{"))
          (let ((inner-pair (add-depth-rec (cdr tokens) (+ depth 1) 0 
					   (symbol= (car tokens) "{"))))
	        (let ((pair
              (add-depth-rec (nthcdr (+ 1 (cdr inner-pair))
				            (cdr tokens)) depth 
					           (+ count (cdr inner-pair) 2)
						          (symbol= (car tokens) "{"))))
		        (cons (cons (car inner-pair) (car pair)) (cdr pair)))))
	((or (symbol= (car tokens) ")") (symbol= (car tokens) "}"))
	   (if (= depth 0)
            (error 'mismatched-parentheses-error :message
		              "unmatched close parenthesis")
            (cons nil count)))
	((symbol= (car tokens) *newline*)
	   (if inside-bracesp
             (add-depth-repeated-code (make-smp-symbol ";"))
             (add-depth-rec (cdr tokens) depth (+ count 1) nil)))
        (t (add-depth-repeated-code (car tokens))))
      (add-depth-repeated-code (car tokens)))))


;;; For any function call that leaves off the class, this function infers the 
;;; class. For example, it will compile (list 1 2 3) into (Global list 1 2 3). 
;;; For this to work properly, the function must occur at the beginning of an 
;;; expression. That is, (1 cons list 2 3) will not work, but 
;;; (1 cons (list 2 3)) will correctly compile to (1 cons (Global list 2 3)).
(defun infer-class (tokens)
  (if (or (not (listp tokens)) (null tokens))
    (return-from infer-class tokens))
  (setf tokens (mapcar #'infer-class tokens))
  (if (and (typep (car tokens) 'smp-symbol)
	   (not (eq (char (smp-symbol-to-string (car tokens)) 0) #\$)))
    (let ((klass (find-class-for-fun (car tokens))))
      (if klass
        (cons (make-smp-symbol klass) tokens)
        tokens))
    tokens))


;;; Finds all quote forms and puts them into their own lists to prepare for 
;;; macro expansion.
(defun precompile-quote-forms (tokens)
  (if (or (null tokens) (not (listp tokens)))
    (return-from precompile-quote-forms tokens))
  (setf tokens (mapcar #'precompile-quote-forms tokens))
  (if (or (symbol= (car tokens) "`")
	  (symbol= (car tokens) ",")
	  (symbol= (car tokens) "@"))
    (cons (list (car tokens) (cadr tokens)) 
	  (precompile-quote-forms (cddr tokens)))
    (cons (car tokens) (precompile-quote-forms (cdr tokens)))))


(defun remove-extra-parens (tokens)
  (if (listp tokens)
    (if (equalp (length tokens) 1)
      (remove-extra-parens (car tokens))
      (mapcar #'remove-extra-parens tokens))
    tokens))

;;; Returns a cons cell where the car is all tokens up to the next function, 
;;; and the cdr is all tokens including and after the next function.
(defun tokens-until-next-fun (tokens)
  (if (null tokens)
    nil
    (if (and (typep (car tokens) 'smp-symbol)
	     (not (scope-exists (car tokens)))
	     (not (equalp (char (smp-symbol-to-string (car tokens)) 0) #\$))
	     (not (equalp (char (smp-symbol-to-string (car tokens)) 0) #\:)))
      (cons nil tokens)
      (let ((inner (tokens-until-next-fun (cdr tokens))))
        (cons (cons (car tokens) (car inner)) (cdr inner))))))

;;; Takes depth-added tokens and adds depth based on function precedence.
;;; vars: A hash of strings representing variables.
;;; 
;;; WARNING: This cannot identify the number of arguments a function has, and 
;;; assumes that every function has two arguments. It is recommended that the 
;;; programmer use parentheses for every function except for mathematical 
;;; operations.
(defun add-depth-by-prec-inner (tokens)
  (if (or (null tokens) (not (listp tokens)))
    (return-from add-depth-by-prec-inner tokens))
  (let ((current-pair (tokens-until-next-fun tokens))
	(next-pair nil)
	(current-fun nil)
	(next-fun nil)
	(current-prec nil)
	(next-prec nil)
	(res nil))

    (when (and 
	    (not (symbol= (cadr current-pair) "def"))
	    (not (symbol= (cadr current-pair) "=>")))
      (setf tokens (mapcar #'add-depth-by-prec-inner tokens))
      (setf current-pair (tokens-until-next-fun tokens)))

    (setf next-pair (tokens-until-next-fun (cddr current-pair)))
    (setf current-fun (cadr current-pair))
    (setf next-fun (cadr next-pair))
    (if (null next-fun)
      (return-from add-depth-by-prec-inner (list tokens)))
    (setf current-prec (get-prec current-fun))
    (setf next-prec (get-prec next-fun))

    ;; Find the argument specifier and add the variables to scope.
    (if (or (symbol= current-fun "def") (symbol= current-fun "=>"))
      (let ((new-vars (make-hash-table :test 'equalp))
	    (argspec (cadddr current-pair))
	    (inner nil))

	(if (symbol= current-fun "def")
	  (setf argspec (caddr (cdr current-pair)))
	  (setf argspec (cadr  (cdr current-pair))))

	(scope-push)
	(mapcar #'(lambda (x) 
		    (cond
		      ((listp x)
		         (if (typep (car x) 'smp-symbol)
			   (scope-add x)
			   (error 'invalid-argspec-error :message 
			       (smp-symbol-to-string (car (last (
			         car current-pair)))))))
		      ((typep x 'smp-symbol)
		         (let ((xstr (smp-symbol-to-string x)))
  		           (if (eq (char xstr 0) #\&)
			     (error 'invalid-argspec-error :message 
			         (car (last (car current-pair))))
			     (scope-add x))))
		      (t
		         (error 'invalid-argspec-error :message 
			     (car (last (car current-pair)))))))
		(let ((argspec 
		       (remove-extra-parens (caddr (cdr current-pair)))))
		  (if (listp argspec)
		    argspec
		    (list argspec))))

	(setf inner (add-depth-by-prec-inner (cadddr (cdr current-pair))))
	(scope-pop)
        (return-from add-depth-by-prec-inner 
          (list (caar current-pair) (cadr current-pair) (caddr current-pair) 
		(cadddr current-pair)
		inner))))

    (setf res 
      (if (or
            (< next-prec current-prec)
	    (and (equalp next-prec current-prec) 
	         (equalp (get-assoc next-fun) 'left)))
        ;; If the next function is lower precedence, parenthesize now and 
	;; move backward.
        (let ((pair (tokens-until-next-fun (cddr current-pair))))
          (cons (append (car current-pair) (list (cadr current-pair))
        	        (car pair)) (cdr pair)))
        ;; If the next function is higher precedence, keep scanning.
        (let ((inner (add-depth-by-prec-inner (cddr current-pair))))
          (add-depth-by-prec-inner (append (car current-pair) 
    			       (list (cadr current-pair)) inner)))))
    (add-depth-by-prec-inner res)))

(defun add-depth-by-prec (tokens)
  (if (and (listp tokens) (not (null tokens)))
    (add-depth-by-prec-inner tokens)
    tokens))

;;; Infers the objects on which functions are called; 
;;; Converts parenthesis tokens into actual depth; 
;;; Declares classes, functions, and variables; (TODO: implement this)
;;; Checks that referenced functions and variables actually exist; 
;;; Associates functions based on precedence; 
(defun sexpgen (tokens)
  (remove-extra-parens (add-depth-by-prec (infer-class 
    (expand-macros (precompile-quote-forms (add-depth 
      (precompile-braces tokens))))))))
