;test regex LINE -\(\d{1,3}, \d{1,3}\)\n
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "L") (re.++ (str.to_re "I") (re.++ (str.to_re "N") (re.++ (str.to_re "E") (re.++ (str.to_re " ") (re.++ (str.to_re "-") (re.++ (str.to_re "(") ((_ re.loop 1 3) (re.range "0" "9"))))))))) (re.++ (str.to_re ",") (re.++ (str.to_re " ") (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (re.++ (str.to_re ")") (str.to_re "\u{0a}"))))))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)