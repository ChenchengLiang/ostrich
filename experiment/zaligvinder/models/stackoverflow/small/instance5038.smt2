;test regex ^www\.[a-zA-z0-9][a-zA-z0-9-]+\.mywebsite(.[a-zA-Z]{2,})+
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "") (re.++ (str.to_re "w") (re.++ (str.to_re "w") (re.++ (str.to_re "w") (re.++ (str.to_re ".") (re.++ (re.union (re.range "a" "z") (re.union (re.range "A" "z") (re.range "0" "9"))) (re.++ (re.+ (re.union (re.range "a" "z") (re.union (re.range "A" "z") (re.union (re.range "0" "9") (str.to_re "-"))))) (re.++ (str.to_re ".") (re.++ (str.to_re "m") (re.++ (str.to_re "y") (re.++ (str.to_re "w") (re.++ (str.to_re "e") (re.++ (str.to_re "b") (re.++ (str.to_re "s") (re.++ (str.to_re "i") (re.++ (str.to_re "t") (re.++ (str.to_re "e") (re.+ (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (re.* (re.union (re.range "a" "z") (re.range "A" "Z"))) ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "A" "Z")))))))))))))))))))))))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)