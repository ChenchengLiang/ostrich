;test regex ^(((\+44)? ?(\(0\))? ?)|(0))( ?[0-9]{3,4}){3}$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (re.union (re.++ (re.opt (re.++ (str.to_re "+") (str.to_re "44"))) (re.++ (re.opt (str.to_re " ")) (re.++ (re.opt (re.++ (str.to_re "(") (re.++ (str.to_re "0") (str.to_re ")")))) (re.opt (str.to_re " "))))) (str.to_re "0")) ((_ re.loop 3 3) (re.++ (re.opt (str.to_re " ")) ((_ re.loop 3 4) (re.range "0" "9")))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)