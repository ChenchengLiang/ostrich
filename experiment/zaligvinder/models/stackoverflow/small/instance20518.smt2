;test regex \(0[0-9]{4}\)[0-9]{6}$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "(") (re.++ (str.to_re "0") (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.++ (str.to_re ")") ((_ re.loop 6 6) (re.range "0" "9")))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)