;test regex ^[_a-z0-9-]+(.[_a-z0-9-\+]+)@[a-z0-9-]+(.[a-z0-9-]+)(.[a-z]{2,3})$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (re.+ (re.union (str.to_re "_") (re.union (re.range "a" "z") (re.union (re.range "0" "9") (str.to_re "-"))))) (re.++ (re.++ (re.diff re.allchar (str.to_re "\n")) (re.+ (re.union (str.to_re "_") (re.union (re.range "a" "z") (re.union (re.range "0" "9") (re.union (str.to_re "-") (str.to_re "+"))))))) (re.++ (str.to_re "@") (re.++ (re.+ (re.union (re.range "a" "z") (re.union (re.range "0" "9") (str.to_re "-")))) (re.++ (re.++ (re.diff re.allchar (str.to_re "\n")) (re.+ (re.union (re.range "a" "z") (re.union (re.range "0" "9") (str.to_re "-"))))) (re.++ (re.diff re.allchar (str.to_re "\n")) ((_ re.loop 2 3) (re.range "a" "z"))))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)