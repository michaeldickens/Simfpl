(require "cl-ppcre")

(load "compile-error.lisp")

;;; Characters that always make up their own symbol and cannot be part of 
;;; another token.
(defparameter *rematch-single-char* "[\\(\\),\\.\\[\\]\\{\\}]")

;;; Supports floating point, scientific notation, and negation, but not 
;;; any base other than 10.
(defparameter *rematch-number* "(\\+|-)?\\d+(\\.\\d+)?([eE]\\d+)?")

(defparameter *rematch-symbol* (concatenate 'string 
    *rematch-single-char* "|[^\\s'\"" 
        (subseq *rematch-single-char* 1 (- (length *rematch-single-char*) 1))
        "]+"))

;;; Single-quoted string.
(defparameter *rematch-single-string* "'([^']|(\\'))*'")

;;; Double-quoted string.
(defparameter *rematch-double-string* "\"([^\"]|(\\\"))*\"")

(defun match-whole (regex str)
  (cl-ppcre:scan (concatenate 'string "^" regex "$") str))

;;; Converts a string to a list of strings where each new string represents a 
;;; token.
(defun split-string (string) 
  (cl-ppcre:all-matches-as-strings (concatenate 'string 
      ;; breaks into separate tokens
      *rematch-number* "|" *rematch-symbol* "|" 
      *rematch-single-string* "|" *rematch-double-string*) string))


(defclass smp-symbol ()
  ((name :initarg :name)))

(defmethod print-object ((sym smp-symbol) stream)
  (format stream "'~a" (slot-value sym 'name)))

(defun make-symbol (name)
  (make-instance 'smp-symbol :name name))

(defun symbol= (sym obj)
  (cond 
    ((typep obj 'string) (string= (slot-value sym 'name) obj))
    ((typep obj 'smp-symbol)
      (string= (slot-value sym 'name) (slot-value obj 'name)))
    (t nil)))
	

(defun str-to-symbol (str)
  (make-instance 'smp-symbol :name str))

;;; Converts a single-quoted string to a Lisp string.
;;; str MUST be surrounded in single quotes.
(defun str-to-strtoken1 (str)
  (cl-ppcre:regex-replace-all "\\\\'"
  (cl-ppcre:regex-replace-all "\\\\\\\\"
      (subseq str 1 (- (length str) 1))
      "\\")
    "'"))

;;; Converts a double-quoted string to a Lisp string.
(defun str-to-strtoken2 (str)
  (read-from-string
    (cl-ppcre:regex-replace-all "\\\\t"
    (cl-ppcre:regex-replace-all "\\\\n" str (coerce '(#\Newline) 'string))
      (coerce '(#\Tab) 'string))))

;;; Takes a list of strings where each string represents a token, and converts 
;;; each string to a token.
(defun strings-to-tokens (strings)
  (mapcar 'string-to-token strings))

(defun string-to-token (str)
  (cond
    ((match-whole *rematch-number* str) (read-from-string str))
    ((match-whole *rematch-symbol* str) (str-to-symbol str)) ; don't use built in because Lisp symbols are not case-sensitive, and Simfpl symbols are
    ((match-whole *rematch-single-string* str) (str-to-strtoken1 str))
    ((match-whole *rematch-double-string* str) (str-to-strtoken2 str))))

;;; If the list begins with a parenthesis, takes until open and close 
;;; parentheses match.
;;; 
;;; Each element must be a string.
;;;
;;; For the following input examples, assume each token is a string, i.e. 
;;; a = "a" and ( = "(".
;;; 
;;; (a b) c => (a b)
;;; (a (b c) d) e (f g) => (a (b c) d)
;;; a (b c d) => nil
;;;
(defmacro take-paren-group (tokens)
  `(take-paren-group-rec ,tokens 0 nil))

(defun take-paren-group-rec (tokens paren-count rev-taken)
  (let ((rev-taken2 (cons (car tokens) rev-taken)))
  (cond
    ((and (null tokens) (not (equalp paren-count 0))) nil)
    ((string= (car tokens) "(")
        (take-paren-group-rec (cdr tokens)
		              (+ paren-count 1) rev-taken2))
    ((equalp paren-count 0) (reverse rev-taken2))
    ((string= (car tokens) ")")
      (if (equalp paren-count 1)
	(reverse rev-taken2)
        (take-paren-group-rec (cdr tokens) (- paren-count 1) rev-taken2)))
    (t (take-paren-group-rec (cdr tokens) paren-count rev-taken2)))))

;;; The drop function that corresponds to (take-paren-group).
;;;
;;; (a b) c d => c d
;;; (a (b c) d) e (f g) => e (f g)
;;; (a (b c) d) => nil
;;; a (b c) d => (b c) d
;;;
(defmacro drop-paren-group (tokens)
  `(drop-paren-group-rec ,tokens 0))

(defun drop-paren-group-rec (tokens paren-count)
  (cond
    ((and (null tokens) (not (equalp paren-count 0))) nil)
    ((string= (car tokens) "(")
      (drop-paren-group-rec (cdr tokens) (+ paren-count 1)))
    ((equalp paren-count 0) (cdr tokens))
    ((string= (car tokens) ")")
      (if (equalp paren-count 1)
	(cdr tokens)
	(drop-paren-group-rec (cdr tokens) (- paren-count 1))))
    (t (drop-paren-group-rec (cdr tokens) paren-count))))


;;; Takens a list of tokens and adds depth. That is, 
;;; tokens between parentheses are converted to lists.
;;;
;;; ("a" "(" "b" "c" ")") => ("a" ("b" "c"))
;;;
;;; TODO: This should go up a level when it hits a close paren.
(defun add-depth-old (tokens)
  (cond
    ((null tokens) nil)
    ((and (typep (car tokens) 'smp-symbol)
t          (string= (slot-value (car tokens) 'name) "("))
      (cons (add-depth (butlast (cdr (take-paren-group tokens))))
	    (add-depth (drop-paren-group tokens))))
    (t (cons (car tokens) (add-depth (cdr tokens))))))

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
 

;;; Takes a list of tokens and converts it to an s-expression.
(defun tokens-to-sexp (tokens) (cons tokens "TODO: implement this"))

;;; Precompiles the tokens into s-expression form, removing syntactic sugar 
;;; and creating initial bindings.
(defun precompile (tokens) tokens)

(defun parse-string (str)
  (handler-case
    (add-depth (strings-to-tokens (split-string str)))
    (compile-error (ce)
      (format nil "~a: ~a" ce (slot-value ce 'message)))))

(defun parse-file (filename) filename)

