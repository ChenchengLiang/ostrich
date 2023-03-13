;test regex \A\d+(?:(?:\.\d{3})*|k|rb)\z
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "A") (re.++ (re.+ (re.range "0" "9")) (re.++ (re.union (re.union (re.* (re.++ (str.to_re ".") ((_ re.loop 3 3) (re.range "0" "9")))) (str.to_re "k")) (re.++ (str.to_re "r") (str.to_re "b"))) (str.to_re "z"))))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)