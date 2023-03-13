;test regex www\.([a-z]{2})\.abc\.(com|edu)/(.+)
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "w") (re.++ (str.to_re "w") (re.++ (str.to_re "w") (re.++ (str.to_re ".") (re.++ ((_ re.loop 2 2) (re.range "a" "z")) (re.++ (str.to_re ".") (re.++ (str.to_re "a") (re.++ (str.to_re "b") (re.++ (str.to_re "c") (re.++ (str.to_re ".") (re.++ (re.union (re.++ (str.to_re "c") (re.++ (str.to_re "o") (str.to_re "m"))) (re.++ (str.to_re "e") (re.++ (str.to_re "d") (str.to_re "u")))) (re.++ (str.to_re "/") (re.+ (re.diff re.allchar (str.to_re "\n")))))))))))))))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)