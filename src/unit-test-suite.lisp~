(load "unit-test.lisp")

(defun test-split-string ()
  (load "parser.lisp")
  (check (equalp (split-string "hello world") '("hello" "world"))
	 (equalp (split-string "123letters") '("123" "letters"))
	 (equalp (split-string "\"quote\"") '("\"quote\""))
	 (equalp (split-string "\"quote\"123") '("\"quote\"" "123"))
	 (equalp (split-string "symbol\"quote\"") '("symbol" "\"quote\""))
	 (equalp (split-string "123.87-54") '("123.87" "-54"))
	 (equalp (split-string "99.8e3+12") '("99.8e3" "+12"))
	 (equalp (split-string "23E67+5.42E9") '("23E67" "+5.42E9"))
	 (equalp (split-string "123'single quoted string'")
		 '("123" "'single quoted string'"))
	 (equalp (split-string "'single quoted'\"double quoted\"")
	         '("'single quoted'" "\"double quoted\""))
	 (equalp (split-string "'test \\' escaped' '\\\\'")
	         '("'test \\' escaped'" "'\\'"))))

(defun test-string-to-token ()
  (load "parser.lisp")
  (check (symbol= (string-to-token "hello")
	 	  (make-instance 'smp-symbol :name "hello"))
	 (equalp (string-to-token "123") 123)
	 (equalp (string-to-token "5.2E6") 5200000)
	 (equalp (string-to-token "-12.8") -12.8)
	 (string= (string-to-token "\"hello\"") "hello")
	 (string= (string-to-token "\"hello\\n\"") (format nil "hello~%"))))


;;; TODO: There's a bug here that has to do with the equality function. 
;;; equalp() doesn't work correctly for smp-symbol, but I can't use symbol= 
;;; because the symbols are inside of a list.
(defun test-parse-string ()
  (load "parser.lisp")
  (check 
    (equalp (parse-string "hello (world () let us) play")
	 `(,(make-symbol) "hello" (,(make-symbol "world") nil
           ,(make-symbol "let") ,(make-symbol "us")) ,(make-symbol "play")))))