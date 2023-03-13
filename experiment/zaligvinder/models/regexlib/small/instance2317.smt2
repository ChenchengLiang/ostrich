;test regex (([1-9])|(0[1-9])|(1[0-2]))\/(([0-9])|([0-2][0-9])|(3[0-1]))\/(([0-9][0-9])|([1-2][0,9][0-9][0-9]))\s+(20|21|22|23|[01]\d|\d)(([:.][0-5]\d){1,2})$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (re.union (re.union (re.range "1" "9") (re.++ (str.to_re "0") (re.range "1" "9"))) (re.++ (str.to_re "1") (re.range "0" "2"))) (re.++ (str.to_re "/") (re.++ (re.union (re.union (re.range "0" "9") (re.++ (re.range "0" "2") (re.range "0" "9"))) (re.++ (str.to_re "3") (re.range "0" "1"))) (re.++ (str.to_re "/") (re.++ (re.union (re.++ (re.range "0" "9") (re.range "0" "9")) (re.++ (re.range "1" "2") (re.++ (re.union (str.to_re "0") (re.union (str.to_re ",") (str.to_re "9"))) (re.++ (re.range "0" "9") (re.range "0" "9"))))) (re.++ (re.+ (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) (re.++ (re.union (re.union (re.union (re.union (re.union (str.to_re "20") (str.to_re "21")) (str.to_re "22")) (str.to_re "23")) (re.++ (str.to_re "01") (re.range "0" "9"))) (re.range "0" "9")) ((_ re.loop 1 2) (re.++ (re.union (str.to_re ":") (str.to_re ".")) (re.++ (re.range "0" "5") (re.range "0" "9"))))))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)