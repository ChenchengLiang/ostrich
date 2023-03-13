;test regex Z[RSTU][0-9][A-Z]{1,3}(?:-[0-9]{1,2})?
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "Z") (re.++ (re.union (str.to_re "R") (re.union (str.to_re "S") (re.union (str.to_re "T") (str.to_re "U")))) (re.++ (re.range "0" "9") (re.++ ((_ re.loop 1 3) (re.range "A" "Z")) (re.opt (re.++ (str.to_re "-") ((_ re.loop 1 2) (re.range "0" "9"))))))))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)