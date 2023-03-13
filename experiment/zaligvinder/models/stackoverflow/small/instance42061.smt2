;test regex MT{4}[0-9]001
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "M") (re.++ ((_ re.loop 4 4) (str.to_re "T")) (re.++ (re.range "0" "9") (str.to_re "001"))))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)