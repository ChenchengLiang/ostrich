;test regex /[a-z]{3}\/[a-z]{3}/gi
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "/") (re.++ ((_ re.loop 3 3) (re.range "a" "z")) (re.++ (str.to_re "/") (re.++ ((_ re.loop 3 3) (re.range "a" "z")) (re.++ (str.to_re "/") (re.++ (str.to_re "g") (str.to_re "i")))))))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)