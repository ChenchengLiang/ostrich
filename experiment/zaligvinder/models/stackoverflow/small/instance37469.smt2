;test regex ^[1-9]|[1-9][0-9]|[1-2][0-9]{2}|3[0-5][0-9]|36[0-5]$
(declare-const X String)
(assert (str.in_re X (re.union (re.union (re.union (re.union (re.++ (str.to_re "") (re.range "1" "9")) (re.++ (re.range "1" "9") (re.range "0" "9"))) (re.++ (re.range "1" "2") ((_ re.loop 2 2) (re.range "0" "9")))) (re.++ (str.to_re "3") (re.++ (re.range "0" "5") (re.range "0" "9")))) (re.++ (re.++ (str.to_re "36") (re.range "0" "5")) (str.to_re "")))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)