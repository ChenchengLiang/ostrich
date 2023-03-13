;test regex (^47\d{3})|(^5\d{4})
(declare-const X String)
(assert (str.in_re X (re.union (re.++ (str.to_re "") (re.++ (str.to_re "47") ((_ re.loop 3 3) (re.range "0" "9")))) (re.++ (str.to_re "") (re.++ (str.to_re "5") ((_ re.loop 4 4) (re.range "0" "9")))))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)