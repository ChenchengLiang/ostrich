;test regex (\({0,1}\d+ (OR|AND) \d+\){0,1})
(declare-const X String)
(assert (str.in_re X (re.++ ((_ re.loop 0 1) (str.to_re "(")) (re.++ (re.+ (re.range "0" "9")) (re.++ (str.to_re " ") (re.++ (re.union (re.++ (str.to_re "O") (str.to_re "R")) (re.++ (str.to_re "A") (re.++ (str.to_re "N") (str.to_re "D")))) (re.++ (str.to_re " ") (re.++ (re.+ (re.range "0" "9")) ((_ re.loop 0 1) (str.to_re ")"))))))))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)