;test regex ^[a-zA-Z]{1,2}(\r\n?|\n)
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "") (re.++ ((_ re.loop 1 2) (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.union (re.++ (str.to_re "\u{0d}") (re.opt (str.to_re "\u{0a}"))) (str.to_re "\u{0a}"))))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)