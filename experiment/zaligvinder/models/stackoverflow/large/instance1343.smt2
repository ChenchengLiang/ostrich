;test regex ^[\u{20}-\u{5b}\u{5d}-\u{7e}]{8,127}$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") ((_ re.loop 8 127) (re.union (re.range "\u{20}" "\u{5b}") (re.range "\u{5d}" "\u{7e}")))) (str.to_re ""))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 50 (str.len X)))
(check-sat)
(get-model)