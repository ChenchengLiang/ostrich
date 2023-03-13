;test regex ^((1000,00)|(0?\d{1,3},\d{2}))$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.union (re.++ (str.to_re "1000") (re.++ (str.to_re ",") (str.to_re "00"))) (re.++ (re.++ (re.opt (str.to_re "0")) ((_ re.loop 1 3) (re.range "0" "9"))) (re.++ (str.to_re ",") ((_ re.loop 2 2) (re.range "0" "9")))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)