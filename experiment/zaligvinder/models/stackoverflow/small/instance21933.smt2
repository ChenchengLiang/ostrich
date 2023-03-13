;test regex (([2-9]{1})|([1-9]{1}[0-9]{1,}))
(declare-const X String)
(assert (str.in_re X (re.union ((_ re.loop 1 1) (re.range "2" "9")) (re.++ ((_ re.loop 1 1) (re.range "1" "9")) (re.++ (re.* (re.range "0" "9")) ((_ re.loop 1 1) (re.range "0" "9")))))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)