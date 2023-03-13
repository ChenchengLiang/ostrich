;test regex /0[1-9]|1[0-2]|^[1-9]{1}$\/^[1-9]{1}$|0[1-9]|[1-2]\d|3[0-1]\/19\d{2}|20\d{2}/
(declare-const X String)
(assert (str.in_re X (re.union (re.union (re.union (re.union (re.union (re.union (re.++ (str.to_re "/") (re.++ (str.to_re "0") (re.range "1" "9"))) (re.++ (str.to_re "1") (re.range "0" "2"))) (re.++ (re.++ (re.++ (re.++ (str.to_re "") ((_ re.loop 1 1) (re.range "1" "9"))) (re.++ (str.to_re "") (str.to_re "/"))) (re.++ (str.to_re "") ((_ re.loop 1 1) (re.range "1" "9")))) (str.to_re ""))) (re.++ (str.to_re "0") (re.range "1" "9"))) (re.++ (re.range "1" "2") (re.range "0" "9"))) (re.++ (str.to_re "3") (re.++ (re.range "0" "1") (re.++ (str.to_re "/") (re.++ (str.to_re "19") ((_ re.loop 2 2) (re.range "0" "9"))))))) (re.++ (str.to_re "20") (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (str.to_re "/"))))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)