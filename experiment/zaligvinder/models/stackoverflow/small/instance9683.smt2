;test regex ^*E[0-9]{4}49*$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (re.* (str.to_re "")) (re.++ (str.to_re "E") (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.* (str.to_re "49"))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)