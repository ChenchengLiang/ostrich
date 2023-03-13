;test regex [a-zA-z]{1}[a-zA-z\-]{0,48}[a-zA-z]{1}
(declare-const X String)
(assert (str.in_re X (re.++ ((_ re.loop 1 1) (re.union (re.range "a" "z") (re.range "A" "z"))) (re.++ ((_ re.loop 0 48) (re.union (re.range "a" "z") (re.union (re.range "A" "z") (str.to_re "-")))) ((_ re.loop 1 1) (re.union (re.range "a" "z") (re.range "A" "z")))))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)