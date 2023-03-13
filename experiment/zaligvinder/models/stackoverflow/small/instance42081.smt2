;test regex RewriteRule ^([a-z]{2}/)(?:[a-z]{2}/)+(.*)$ /$1$2 [R=302,L]
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (re.++ (re.++ (re.++ (str.to_re "R") (re.++ (str.to_re "e") (re.++ (str.to_re "w") (re.++ (str.to_re "r") (re.++ (str.to_re "i") (re.++ (str.to_re "t") (re.++ (str.to_re "e") (re.++ (str.to_re "R") (re.++ (str.to_re "u") (re.++ (str.to_re "l") (re.++ (str.to_re "e") (str.to_re " ")))))))))))) (re.++ (str.to_re "") (re.++ (re.++ ((_ re.loop 2 2) (re.range "a" "z")) (str.to_re "/")) (re.++ (re.+ (re.++ ((_ re.loop 2 2) (re.range "a" "z")) (str.to_re "/"))) (re.* (re.diff re.allchar (str.to_re "\n"))))))) (re.++ (str.to_re "") (re.++ (str.to_re " ") (str.to_re "/")))) (re.++ (str.to_re "") (str.to_re "1"))) (re.++ (str.to_re "") (re.++ (str.to_re "2") (re.++ (str.to_re " ") (re.union (str.to_re "R") (re.union (str.to_re "=") (re.union (str.to_re "302") (re.union (str.to_re ",") (str.to_re "L")))))))))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)