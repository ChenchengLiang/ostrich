;test regex ^(0+)?(24(\.00?)?|(\.00?)?|\.[0-9]+|0?[0-9](\.[0-9]{0,2})?|(0+)?[0-2][0-3](\.[0-9][0-9]?)?)$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (re.opt (re.+ (str.to_re "0"))) (re.union (re.union (re.union (re.union (re.++ (str.to_re "24") (re.opt (re.++ (str.to_re ".") (re.opt (str.to_re "00"))))) (re.opt (re.++ (str.to_re ".") (re.opt (str.to_re "00"))))) (re.++ (str.to_re ".") (re.+ (re.range "0" "9")))) (re.++ (re.opt (str.to_re "0")) (re.++ (re.range "0" "9") (re.opt (re.++ (str.to_re ".") ((_ re.loop 0 2) (re.range "0" "9"))))))) (re.++ (re.opt (re.+ (str.to_re "0"))) (re.++ (re.range "0" "2") (re.++ (re.range "0" "3") (re.opt (re.++ (str.to_re ".") (re.++ (re.range "0" "9") (re.opt (re.range "0" "9"))))))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)