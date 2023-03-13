;test regex ^[A-Za-z0-9](\.[\w\-]|[\w\-][\w\-])(\.[\w\-]|[\w\-]?[\w\-]){0,30}[\w\-]?@[A-Za-z0-9\-]{3,63}\.[a-zA-Z]{2,6}$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (re.union (re.range "A" "Z") (re.union (re.range "a" "z") (re.range "0" "9"))) (re.++ (re.union (re.++ (str.to_re ".") (re.union (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_")))) (str.to_re "-"))) (re.++ (re.union (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_")))) (str.to_re "-")) (re.union (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_")))) (str.to_re "-")))) (re.++ ((_ re.loop 0 30) (re.union (re.++ (str.to_re ".") (re.union (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_")))) (str.to_re "-"))) (re.++ (re.opt (re.union (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_")))) (str.to_re "-"))) (re.union (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_")))) (str.to_re "-"))))) (re.++ (re.opt (re.union (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_")))) (str.to_re "-"))) (re.++ (str.to_re "@") (re.++ ((_ re.loop 3 63) (re.union (re.range "A" "Z") (re.union (re.range "a" "z") (re.union (re.range "0" "9") (str.to_re "-"))))) (re.++ (str.to_re ".") ((_ re.loop 2 6) (re.union (re.range "a" "z") (re.range "A" "Z"))))))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 50 (str.len X)))
(check-sat)
(get-model)