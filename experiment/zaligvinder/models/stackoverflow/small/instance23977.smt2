;test regex (Wibble(?:\s[A-Z0-9]{1,2},)+)
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "W") (re.++ (str.to_re "i") (re.++ (str.to_re "b") (re.++ (str.to_re "b") (re.++ (str.to_re "l") (re.++ (str.to_re "e") (re.+ (re.++ (re.++ (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}")))))) ((_ re.loop 1 2) (re.union (re.range "A" "Z") (re.range "0" "9")))) (str.to_re ",")))))))))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)