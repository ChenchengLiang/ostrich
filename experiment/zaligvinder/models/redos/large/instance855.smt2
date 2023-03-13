;test regex ^[0-9a-f]{32}$|^[a-zA-Z0-9]{40,64}$
(declare-const X String)
(assert (str.in_re X (re.union (re.++ (re.++ (str.to_re "") ((_ re.loop 32 32) (re.union (re.range "0" "9") (re.range "a" "f")))) (str.to_re "")) (re.++ (re.++ (str.to_re "") ((_ re.loop 40 64) (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.range "0" "9"))))) (str.to_re "")))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 50 (str.len X)))
(check-sat)
(get-model)