;test regex REGEX(BillingStreet, '.{42,}')
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "R") (re.++ (str.to_re "E") (re.++ (str.to_re "G") (re.++ (str.to_re "E") (re.++ (str.to_re "X") (re.++ (re.++ (str.to_re "B") (re.++ (str.to_re "i") (re.++ (str.to_re "l") (re.++ (str.to_re "l") (re.++ (str.to_re "i") (re.++ (str.to_re "n") (re.++ (str.to_re "g") (re.++ (str.to_re "S") (re.++ (str.to_re "t") (re.++ (str.to_re "r") (re.++ (str.to_re "e") (re.++ (str.to_re "e") (str.to_re "t"))))))))))))) (re.++ (str.to_re ",") (re.++ (str.to_re " ") (re.++ (str.to_re "\u{27}") (re.++ (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) ((_ re.loop 42 42) (re.diff re.allchar (str.to_re "\n")))) (str.to_re "\u{27}")))))))))))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)