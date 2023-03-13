;test regex ^(1{2,4}|(11[01]*0[01]*11))$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.union ((_ re.loop 2 4) (str.to_re "1")) (re.++ (str.to_re "11") (re.++ (re.* (str.to_re "01")) (re.++ (str.to_re "0") (re.++ (re.* (str.to_re "01")) (str.to_re "11"))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)