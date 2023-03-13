;test regex ^([a-zA-Z0-9]){1}([a-zA-Z0-9\-\._]){0,27}\.([a-zA-Z]){1}([a-zA-Z0-9]){1,3}
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "") (re.++ ((_ re.loop 1 1) (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.range "0" "9")))) (re.++ ((_ re.loop 0 27) (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (re.union (str.to_re "-") (re.union (str.to_re ".") (str.to_re "_"))))))) (re.++ (str.to_re ".") (re.++ ((_ re.loop 1 1) (re.union (re.range "a" "z") (re.range "A" "Z"))) ((_ re.loop 1 3) (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.range "0" "9")))))))))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)