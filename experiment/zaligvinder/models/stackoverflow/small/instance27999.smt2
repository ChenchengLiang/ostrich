;test regex ^([\d-]*[\d/]*[A-z]?|[A-z]?[\d-]*[\d/]*|[\d-]*[\d/]*[A-z]?[\d-]*[\d/]*){3}$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") ((_ re.loop 3 3) (re.union (re.union (re.++ (re.* (re.union (re.range "0" "9") (str.to_re "-"))) (re.++ (re.* (re.union (re.range "0" "9") (str.to_re "/"))) (re.opt (re.range "A" "z")))) (re.++ (re.opt (re.range "A" "z")) (re.++ (re.* (re.union (re.range "0" "9") (str.to_re "-"))) (re.* (re.union (re.range "0" "9") (str.to_re "/")))))) (re.++ (re.* (re.union (re.range "0" "9") (str.to_re "-"))) (re.++ (re.* (re.union (re.range "0" "9") (str.to_re "/"))) (re.++ (re.opt (re.range "A" "z")) (re.++ (re.* (re.union (re.range "0" "9") (str.to_re "-"))) (re.* (re.union (re.range "0" "9") (str.to_re "/")))))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)