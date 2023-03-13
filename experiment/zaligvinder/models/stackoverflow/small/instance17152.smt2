;test regex \\b(id|tag)\\.?\\s*(\\d{1,4})\\b
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "\\") (re.++ (str.to_re "b") (re.++ (re.union (re.++ (str.to_re "i") (str.to_re "d")) (re.++ (str.to_re "t") (re.++ (str.to_re "a") (str.to_re "g")))) (re.++ (str.to_re "\\") (re.++ (re.opt (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "\\") (re.++ (re.* (str.to_re "s")) (re.++ (re.++ (str.to_re "\\") ((_ re.loop 1 4) (str.to_re "d"))) (re.++ (str.to_re "\\") (str.to_re "b"))))))))))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)