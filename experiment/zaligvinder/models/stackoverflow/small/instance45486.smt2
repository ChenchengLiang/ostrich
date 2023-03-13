;test regex /bb|[^b]{2}/ => /bb|[^b][^b]/
(declare-const X String)
(assert (str.in_re X (re.union (re.union (re.++ (str.to_re "/") (re.++ (str.to_re "b") (str.to_re "b"))) (re.++ ((_ re.loop 2 2) (re.diff re.allchar (str.to_re "b"))) (re.++ (str.to_re "/") (re.++ (str.to_re " ") (re.++ (str.to_re "=") (re.++ (str.to_re ">") (re.++ (str.to_re " ") (re.++ (str.to_re "/") (re.++ (str.to_re "b") (str.to_re "b")))))))))) (re.++ (re.diff re.allchar (str.to_re "b")) (re.++ (re.diff re.allchar (str.to_re "b")) (str.to_re "/"))))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)