;test regex ((?:p|n|m){0,1}(?:m|g|l|L|s|A))((?:p|n|m){0,1}(?:m|g|l|L|s|A))
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ ((_ re.loop 0 1) (re.union (re.union (str.to_re "p") (str.to_re "n")) (str.to_re "m"))) (re.union (re.union (re.union (re.union (re.union (str.to_re "m") (str.to_re "g")) (str.to_re "l")) (str.to_re "L")) (str.to_re "s")) (str.to_re "A"))) (re.++ ((_ re.loop 0 1) (re.union (re.union (str.to_re "p") (str.to_re "n")) (str.to_re "m"))) (re.union (re.union (re.union (re.union (re.union (str.to_re "m") (str.to_re "g")) (str.to_re "l")) (str.to_re "L")) (str.to_re "s")) (str.to_re "A"))))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)