;test regex ([a-zA-Z][0-9]{4,})|([0-9][a-zA-Z][0-9]{3,})|([0-9]{2,}[a-zA-Z][0-9]{2,})|([0-9]{3,}[a-zA-Z][0-9])|([0-9]{4,}[a-zA-Z])
(declare-const X String)
(assert (str.in_re X (re.union (re.union (re.union (re.union (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (re.++ (re.* (re.range "0" "9")) ((_ re.loop 4 4) (re.range "0" "9")))) (re.++ (re.range "0" "9") (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (re.++ (re.* (re.range "0" "9")) ((_ re.loop 3 3) (re.range "0" "9")))))) (re.++ (re.++ (re.* (re.range "0" "9")) ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (re.++ (re.* (re.range "0" "9")) ((_ re.loop 2 2) (re.range "0" "9")))))) (re.++ (re.++ (re.* (re.range "0" "9")) ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (re.range "0" "9")))) (re.++ (re.++ (re.* (re.range "0" "9")) ((_ re.loop 4 4) (re.range "0" "9"))) (re.union (re.range "a" "z") (re.range "A" "Z"))))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)