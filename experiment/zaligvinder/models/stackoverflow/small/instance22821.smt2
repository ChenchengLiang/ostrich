;test regex ^\d{1,4}(?:[a-zA-z]{1,2}\d{0,3})?$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ ((_ re.loop 1 4) (re.range "0" "9")) (re.opt (re.++ ((_ re.loop 1 2) (re.union (re.range "a" "z") (re.range "A" "z"))) ((_ re.loop 0 3) (re.range "0" "9")))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)