;test regex [A-Za-z]{0,3}
(declare-const X String)
(assert (str.in_re X ((_ re.loop 0 3) (re.union (re.range "A" "Z") (re.range "a" "z")))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)