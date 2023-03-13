;test regex b{3,}|c{3,}|d{3,}...
(declare-const X String)
(assert (str.in_re X (re.union (re.union (re.++ (re.* (str.to_re "b")) ((_ re.loop 3 3) (str.to_re "b"))) (re.++ (re.* (str.to_re "c")) ((_ re.loop 3 3) (str.to_re "c")))) (re.++ (re.++ (re.* (str.to_re "d")) ((_ re.loop 3 3) (str.to_re "d"))) (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (re.diff re.allchar (str.to_re "\n")) (re.diff re.allchar (str.to_re "\n"))))))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)