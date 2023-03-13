;test regex (6553[0-5]|655[0-2]\d|65[0-4]\d\d|6[0-4]\d\d\d|[1-5]\d\d\d\d|[1-9]\d{0,3})
(declare-const X String)
(assert (str.in_re X (re.union (re.union (re.union (re.union (re.union (re.++ (str.to_re "6553") (re.range "0" "5")) (re.++ (str.to_re "655") (re.++ (re.range "0" "2") (re.range "0" "9")))) (re.++ (str.to_re "65") (re.++ (re.range "0" "4") (re.++ (re.range "0" "9") (re.range "0" "9"))))) (re.++ (str.to_re "6") (re.++ (re.range "0" "4") (re.++ (re.range "0" "9") (re.++ (re.range "0" "9") (re.range "0" "9")))))) (re.++ (re.range "1" "5") (re.++ (re.range "0" "9") (re.++ (re.range "0" "9") (re.++ (re.range "0" "9") (re.range "0" "9")))))) (re.++ (re.range "1" "9") ((_ re.loop 0 3) (re.range "0" "9"))))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)