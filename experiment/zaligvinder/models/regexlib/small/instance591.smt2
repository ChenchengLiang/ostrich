;test regex (?:2131|1800|35\d{3})\d{11}
(declare-const X String)
(assert (str.in_re X (re.++ (re.union (re.union (str.to_re "2131") (str.to_re "1800")) (re.++ (str.to_re "35") ((_ re.loop 3 3) (re.range "0" "9")))) ((_ re.loop 11 11) (re.range "0" "9")))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)