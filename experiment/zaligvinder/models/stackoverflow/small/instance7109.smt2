;test regex [a-zA-Z]{3}[0-9]{5}[a-zA-Z0-9]
(declare-const X String)
(assert (str.in_re X (re.++ ((_ re.loop 3 3) (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.range "0" "9")))))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)