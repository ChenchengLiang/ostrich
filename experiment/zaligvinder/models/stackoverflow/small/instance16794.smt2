;test regex (Y{4}(([LCDH]Y)|Y))|(T{4}(([DM]T)|T))
(declare-const X String)
(assert (str.in_re X (re.union (re.++ ((_ re.loop 4 4) (str.to_re "Y")) (re.union (re.++ (re.union (str.to_re "L") (re.union (str.to_re "C") (re.union (str.to_re "D") (str.to_re "H")))) (str.to_re "Y")) (str.to_re "Y"))) (re.++ ((_ re.loop 4 4) (str.to_re "T")) (re.union (re.++ (re.union (str.to_re "D") (str.to_re "M")) (str.to_re "T")) (str.to_re "T"))))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)