;test regex ^([0-9A-Fa-f]{0,4}:){2,7}([0-9A-Fa-f]{1,4}$|((25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)(\.|$)){4})$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ ((_ re.loop 2 7) (re.++ ((_ re.loop 0 4) (re.union (re.range "0" "9") (re.union (re.range "A" "F") (re.range "a" "f")))) (str.to_re ":"))) (re.union (re.++ ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.union (re.range "A" "F") (re.range "a" "f")))) (str.to_re "")) ((_ re.loop 4 4) (re.++ (re.union (re.union (re.++ (str.to_re "25") (re.range "0" "5")) (re.++ (str.to_re "2") (re.++ (re.range "0" "4") (re.range "0" "9")))) (re.++ (re.opt (str.to_re "01")) (re.++ (re.range "0" "9") (re.opt (re.range "0" "9"))))) (re.union (str.to_re ".") (str.to_re ""))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)