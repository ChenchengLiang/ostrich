;test regex (b?c?(abc){1,}a?b?)
(declare-const X String)
(assert (str.in_re X (re.++ (re.opt (str.to_re "b")) (re.++ (re.opt (str.to_re "c")) (re.++ (re.++ (re.* (re.++ (str.to_re "a") (re.++ (str.to_re "b") (str.to_re "c")))) ((_ re.loop 1 1) (re.++ (str.to_re "a") (re.++ (str.to_re "b") (str.to_re "c"))))) (re.++ (re.opt (str.to_re "a")) (re.opt (str.to_re "b"))))))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)