(load "unit-test.lisp")

(defun test-split-string ()
  (load "parser.lisp")
  (check-equality 
    (equalp (split-string "hello world") '("hello" "world"))
    (equalp (split-string "123letters") '("123" "letters"))
    (equalp (split-string "\"quote\"") '("\"quote\""))
    (equalp (split-string "\"quote\"123") '("\"quote\"" "123"))
    (equalp (split-string "symbol\"quote\"") '("symbol" "\"quote\""))
    (equalp (split-string "\"hello\" \"world\"") '("\"hello\"" "\"world\""))
    (equalp (split-string "123.87-54") '("123.87" "-54"))
    (equalp (split-string "99.8e3+12") '("99.8e3" "+" "12"))
    (equalp (split-string "23E67+5.42E9") '("23E67" "+" "5.42E9"))
    (equalp (split-string "123'single quoted string'")
   	    '("123" "'single quoted string'"))
    (equalp (split-string "'hello' 'world'") '("'hello'" "'world'"))
    (equalp (split-string "'midd\\' le'") '("'midd\\' le'"))
    (equalp (split-string "'single quoted'\"double quoted\"")
        '("'single quoted'" "\"double quoted\""))
    (equalp (split-string "'test \\' escaped' '\\\\'")
	    '("'test \\' escaped'" "'\\\\'"))))

(defun test-remove-comments ()
  (load "parser.lisp")
  (check-equality 
    (equalp (remove-comments '("hello" "# comment" "world"))
        '("hello" "world"))
    (equalp (remove-comments '("hello" "## comment ##" "world"))
        '("hello" "world"))))


(defun test-string-to-token ()
  (load "parser.lisp")
  (check-equality
    (symbol= (string-to-token "hello")
      (make-smp-symbol "hello"))
    (equalp (string-to-token "123") 123)
    (equalp (string-to-token "5.2E6") 5200000)
    (equalp (string-to-token "-12.8") -12.8)
    (string= (string-to-token "'hello'") "hello")
    (string= (string-to-token "'hello\\n'") ("hello\\n"))
    (string= (string-to-token "\"hello\"") "hello")
    (string= (string-to-token "\"hello\\n\"") (format nil "hello~%"))))


(defun test-parse-string ()
  (load "parser.lisp")
  (check-equality
    (gen-equalp (parse-string "hello (world () ## hidden ## let us) play")
      (mapcar #'make-smp-symbol (list "hello" (list "world" nil "let" "us")
          "play")))
    (gen-equalp (parse-string "(inner (test (of (depth))))")
      (mapcar #'make-smp-symbol `(("inner" ("test" ("of" ("depth")))))))
    (string=
      (handler-case
        (parse-string "(dems (mismatched)"))
      "Condition MISMATCHED-PARENTHESES-ERROR was signalled.: unmatched open parenthesis")
    (string=
      (handler-case
        (parse-string "dems (mismatched))"))
      "Condition MISMATCHED-PARENTHESES-ERROR was signalled.: unmatched close parenthesis")))


(defun test-add-depth ()
  (load "sexpgen.lisp")
  (check-equality
    (gen-equalp (add-depth-by-prec (parse-string "1 ** 2 ** 3"))
      (mapcar #'make-smp-symbol `(1 "**" (2 "**" 3))))
    (gen-equalp (add-depth-by-prec (parse-string "1 + 2 + 3"))
      (mapcar #'make-smp-symbol `((1 "+" 2) "+" 3)))
    (gen-equalp (add-depth-by-prec (parse-string "1 + 2 ; 3 + 4"))
      (mapcar #'make-smp-symbol `((1 "+" 2) ";" (3 "+" 4))))
    (gen-equalp (add-depth-by-prec (parse-string "1 + 2 = 3 ** 4 ; 5 * 6"))
      (mapcar #'make-smp-symbol `(((1 "+" 2) "=" (3 "**" 4)) ";" (5 "*" 6))))
    (gen-equalp (add-depth-by-prec (parse-string 
				     "3 * 7 + 5 | 6 ** 3 + 8 * 2 ** 4"))
      (mapcar #'make-smp-symbol `(((3 "*" 7) "+" 5) "|" 
				  (6 "+" (8 "*" (2 "**" 4))))))))
