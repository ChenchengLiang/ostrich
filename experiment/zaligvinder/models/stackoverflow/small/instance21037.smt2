;test regex (([a-fA-F]|[0-9]){2}){3}
(declare-const X String)
(assert (str.in_re X ((_ re.loop 3 3) ((_ re.loop 2 2) (re.union (re.union (re.range "a" "f") (re.range "A" "F")) (re.range "0" "9"))))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)