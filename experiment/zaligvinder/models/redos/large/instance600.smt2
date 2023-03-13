;test regex ([a-z\d\-]{1,100}~)?([a-z\d][a-z\d\-\.]{0,99}:)?([a-z\d][a-z\d\-]{0,99})
(declare-const X String)
(assert (str.in_re X (re.++ (re.opt (re.++ ((_ re.loop 1 100) (re.union (re.range "a" "z") (re.union (re.range "0" "9") (str.to_re "-")))) (str.to_re "~"))) (re.++ (re.opt (re.++ (re.union (re.range "a" "z") (re.range "0" "9")) (re.++ ((_ re.loop 0 99) (re.union (re.range "a" "z") (re.union (re.range "0" "9") (re.union (str.to_re "-") (str.to_re "."))))) (str.to_re ":")))) (re.++ (re.union (re.range "a" "z") (re.range "0" "9")) ((_ re.loop 0 99) (re.union (re.range "a" "z") (re.union (re.range "0" "9") (str.to_re "-")))))))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 50 (str.len X)))
(check-sat)
(get-model)