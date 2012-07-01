(require "cl-ppcre")

(load "object-table.lisp")

;;; Characters that always make up their own symbol and cannot be part of 
;;; another token.
(defparameter *rematch-single-char* 
  (concatenate 'string "[\\(\\),\\.\\[\\]\\{\\}" *newline* "]"))

;;; Supports floating point, scientific notation, and negation, but not 
;;; any base other than 10.
(defparameter *rematch-number* "(\\+|-)?\\d+(\\.\\d+)?([eE]\\d+)?")

(defparameter *rematch-symbol* (concatenate 'string 
    *rematch-single-char* "|[^'\"#\\s\\d" 
        (subseq *rematch-single-char* 1 (- (length *rematch-single-char*) 1))
        "]+"))

;;; Single-quoted string.
(defparameter *rematch-single-string* "'([^']|(\\'))*'")

;;; Double-quoted string.
(defparameter *rematch-double-string* "\"([^\"]|(\\\"))*\"")

(defparameter *rematch-comment* (concatenate 'string 
  "#[^#" *newline* "]*" *newline* "|##([^#]*#?[^#]+)*##"))

(defparameter *rematch-unmatched-quote*
  "'[^']*|\"[^\"]*|#[^#]*|##([^#][^#]?)*")

(defun match-whole (regex str)
  (cl-ppcre:scan (concatenate 'string "^(" regex ")$") str))

;;; Converts a string to a list of strings where each new string represents a 
;;; token.
(defun split-string (str) 
  (cl-ppcre:all-matches-as-strings (concatenate 'string 
      ;; breaks into separate tokens
      *rematch-number* "|" *rematch-symbol* "|" 
      *rematch-single-string* "|" *rematch-double-string* "|"
      *rematch-comment* "|" *rematch-unmatched-quote*) str))

(defun remove-comments (tokens)
  (cond
    ((null tokens) nil)
    ((eq (char (car tokens) 0) #\#) (remove-comments (cdr tokens)))
    (t (cons (car tokens) (remove-comments (cdr tokens))))))

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
    (cl-ppcre:regex-replace-all "\\\\n" str *newline*) *tab*)))

;;; Takes a list of strings where each string represents a token, and converts 
;;; each string to a token.
(defun strings-to-tokens (strings)
  (mapcar 'string-to-token strings))

(defun string-to-token (str)
  (cond
    ((match-whole *rematch-number* str) (read-from-string str))
    ((match-whole *rematch-symbol* str) (str-to-symbol str))
    ((match-whole *rematch-single-string* str) (str-to-strtoken1 str))
    ((match-whole *rematch-double-string* str) (str-to-strtoken2 str))
    ((or (eq (char str 0) #\') (eq (char str 0) #\"))
      (error 'mismatched-quotes-error :message (concatenate 'string 
        "Unmatched " (if (eq (char str 0) #\') "single" "double")
        " quote.")))
    (t (error 'unknown-token-error) (concatenate 'string)
      "Unknown token: " str)))

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


;;; Takes a string, splits it into token strings, and converts token strings 
;;; to internal tokens.
(defun parse-string (str)
  (handler-case
    (strings-to-tokens (remove-comments (split-string str)))
    (compile-error (ce)
      (format nil "~a: ~a" ce (slot-value ce 'message)))))

(defun parse-file (filename)
  (parse-string (coerce (with-open-file (stream filename)
    (loop for c = (read-char stream nil)
      until (null c) collect c)) 'string)))

