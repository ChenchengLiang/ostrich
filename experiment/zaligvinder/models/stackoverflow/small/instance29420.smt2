;test regex ^(89410[12]000[0-9]{10}|893207000(?:500[0-9]{7}|[0-9]{10}))$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.union (re.++ (str.to_re "89410") (re.++ (str.to_re "12") (re.++ (str.to_re "000") ((_ re.loop 10 10) (re.range "0" "9"))))) (re.++ (str.to_re "893207000") (re.union (re.++ (str.to_re "500") ((_ re.loop 7 7) (re.range "0" "9"))) ((_ re.loop 10 10) (re.range "0" "9")))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)