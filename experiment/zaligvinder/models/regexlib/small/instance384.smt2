;test regex ^(?:(?:http|https|ftp|telnet|gopher|ms\-help|file|notes)://)?(?:(?:[a-z][\w~%!&amp;&#39;,;=\-\.$\(\)\*\+]*):.*@)?(?:(?:[a-z0-9][\w\-]*[a-z0-9]*\.)*(?:(?:(?:(?:[a-z0-9][\w\-]*[a-z0-9]*)(?:\.[a-z0-9]+)?)|(?:(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)))(?::[0-9]+)?))?(?:(?:(?:/(?:[\w`~!$=;\-\+\.\^\(\)\|\{\}\[\]]|(?:%\d\d))+)*/(?:[\w`~!$=;\-\+\.\^\(\)\|\{\}\[\]]|(?:%\d\d))*)(?:\?[^#]+)?(?:#[a-z0-9]\w*)?)?$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (re.opt (re.++ (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.++ (str.to_re "h") (re.++ (str.to_re "t") (re.++ (str.to_re "t") (str.to_re "p")))) (re.++ (str.to_re "h") (re.++ (str.to_re "t") (re.++ (str.to_re "t") (re.++ (str.to_re "p") (str.to_re "s")))))) (re.++ (str.to_re "f") (re.++ (str.to_re "t") (str.to_re "p")))) (re.++ (str.to_re "t") (re.++ (str.to_re "e") (re.++ (str.to_re "l") (re.++ (str.to_re "n") (re.++ (str.to_re "e") (str.to_re "t"))))))) (re.++ (str.to_re "g") (re.++ (str.to_re "o") (re.++ (str.to_re "p") (re.++ (str.to_re "h") (re.++ (str.to_re "e") (str.to_re "r"))))))) (re.++ (str.to_re "m") (re.++ (str.to_re "s") (re.++ (str.to_re "-") (re.++ (str.to_re "h") (re.++ (str.to_re "e") (re.++ (str.to_re "l") (str.to_re "p")))))))) (re.++ (str.to_re "f") (re.++ (str.to_re "i") (re.++ (str.to_re "l") (str.to_re "e"))))) (re.++ (str.to_re "n") (re.++ (str.to_re "o") (re.++ (str.to_re "t") (re.++ (str.to_re "e") (str.to_re "s")))))) (re.++ (str.to_re ":") (re.++ (str.to_re "/") (str.to_re "/"))))) (re.++ (re.opt (re.++ (re.++ (re.range "a" "z") (re.* (re.union (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_")))) (re.union (str.to_re "~") (re.union (str.to_re "%") (re.union (str.to_re "!") (re.union (str.to_re "&") (re.union (str.to_re "a") (re.union (str.to_re "m") (re.union (str.to_re "p") (re.union (str.to_re ";") (re.union (str.to_re "&") (re.union (str.to_re "#") (re.union (str.to_re "39") (re.union (str.to_re ";") (re.union (str.to_re ",") (re.union (str.to_re ";") (re.union (str.to_re "=") (re.union (str.to_re "-") (re.union (str.to_re ".") (re.union (str.to_re "$") (re.union (str.to_re "(") (re.union (str.to_re ")") (re.union (str.to_re "*") (str.to_re "+"))))))))))))))))))))))))) (re.++ (str.to_re ":") (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (str.to_re "@"))))) (re.++ (re.opt (re.++ (re.* (re.++ (re.union (re.range "a" "z") (re.range "0" "9")) (re.++ (re.* (re.union (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_")))) (str.to_re "-"))) (re.++ (re.* (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to_re "."))))) (re.++ (re.union (re.++ (re.++ (re.union (re.range "a" "z") (re.range "0" "9")) (re.++ (re.* (re.union (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_")))) (str.to_re "-"))) (re.* (re.union (re.range "a" "z") (re.range "0" "9"))))) (re.opt (re.++ (str.to_re ".") (re.+ (re.union (re.range "a" "z") (re.range "0" "9")))))) (re.++ ((_ re.loop 3 3) (re.++ (re.union (re.union (re.++ (str.to_re "25") (re.range "0" "5")) (re.++ (str.to_re "2") (re.++ (re.range "0" "4") (re.range "0" "9")))) (re.++ (re.opt (str.to_re "01")) (re.++ (re.range "0" "9") (re.opt (re.range "0" "9"))))) (str.to_re "."))) (re.union (re.union (re.++ (str.to_re "25") (re.range "0" "5")) (re.++ (str.to_re "2") (re.++ (re.range "0" "4") (re.range "0" "9")))) (re.++ (re.opt (str.to_re "01")) (re.++ (re.range "0" "9") (re.opt (re.range "0" "9"))))))) (re.opt (re.++ (str.to_re ":") (re.+ (re.range "0" "9"))))))) (re.opt (re.++ (re.++ (re.* (re.++ (str.to_re "/") (re.+ (re.union (re.union (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_")))) (re.union (str.to_re "`") (re.union (str.to_re "~") (re.union (str.to_re "!") (re.union (str.to_re "$") (re.union (str.to_re "=") (re.union (str.to_re ";") (re.union (str.to_re "-") (re.union (str.to_re "+") (re.union (str.to_re ".") (re.union (str.to_re "^") (re.union (str.to_re "(") (re.union (str.to_re ")") (re.union (str.to_re "|") (re.union (str.to_re "{") (re.union (str.to_re "}") (re.union (str.to_re "[") (str.to_re "]")))))))))))))))))) (re.++ (str.to_re "%") (re.++ (re.range "0" "9") (re.range "0" "9"))))))) (re.++ (str.to_re "/") (re.* (re.union (re.union (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_")))) (re.union (str.to_re "`") (re.union (str.to_re "~") (re.union (str.to_re "!") (re.union (str.to_re "$") (re.union (str.to_re "=") (re.union (str.to_re ";") (re.union (str.to_re "-") (re.union (str.to_re "+") (re.union (str.to_re ".") (re.union (str.to_re "^") (re.union (str.to_re "(") (re.union (str.to_re ")") (re.union (str.to_re "|") (re.union (str.to_re "{") (re.union (str.to_re "}") (re.union (str.to_re "[") (str.to_re "]")))))))))))))))))) (re.++ (str.to_re "%") (re.++ (re.range "0" "9") (re.range "0" "9"))))))) (re.++ (re.opt (re.++ (str.to_re "?") (re.+ (re.diff re.allchar (str.to_re "#"))))) (re.opt (re.++ (str.to_re "#") (re.++ (re.union (re.range "a" "z") (re.range "0" "9")) (re.* (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_"))))))))))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)