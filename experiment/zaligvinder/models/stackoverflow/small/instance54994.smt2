;test regex ^(sp|fa)[0-9]{2}-?(bse|bcs|btn)-?[0-9]{3}$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (re.union (re.++ (str.to_re "s") (str.to_re "p")) (re.++ (str.to_re "f") (str.to_re "a"))) (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.++ (re.opt (str.to_re "-")) (re.++ (re.union (re.union (re.++ (str.to_re "b") (re.++ (str.to_re "s") (str.to_re "e"))) (re.++ (str.to_re "b") (re.++ (str.to_re "c") (str.to_re "s")))) (re.++ (str.to_re "b") (re.++ (str.to_re "t") (str.to_re "n")))) (re.++ (re.opt (str.to_re "-")) ((_ re.loop 3 3) (re.range "0" "9")))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)