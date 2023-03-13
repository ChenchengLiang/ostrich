;test regex ^\\d{1,2}D\\d{1,2}H\\d{1,2}M$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (str.to_re "\\") (re.++ ((_ re.loop 1 2) (str.to_re "d")) (re.++ (str.to_re "D") (re.++ (str.to_re "\\") (re.++ ((_ re.loop 1 2) (str.to_re "d")) (re.++ (str.to_re "H") (re.++ (str.to_re "\\") (re.++ ((_ re.loop 1 2) (str.to_re "d")) (str.to_re "M")))))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)