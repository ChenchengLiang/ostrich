;test regex ^#[\dA-Fa-f]{3}(?:[\dA-Fa-f]{3}[\dA-Fa-f]{0,2})?$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (str.to_re "#") (re.++ ((_ re.loop 3 3) (re.union (re.range "0" "9") (re.union (re.range "A" "F") (re.range "a" "f")))) (re.opt (re.++ ((_ re.loop 3 3) (re.union (re.range "0" "9") (re.union (re.range "A" "F") (re.range "a" "f")))) ((_ re.loop 0 2) (re.union (re.range "0" "9") (re.union (re.range "A" "F") (re.range "a" "f"))))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)