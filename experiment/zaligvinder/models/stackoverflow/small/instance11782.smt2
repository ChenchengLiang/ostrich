;test regex "(?:(?:[a-zA-Z])|(?:[0-9]{2}))\..*"
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "\u{22}") (re.++ (re.union (re.union (re.range "a" "z") (re.range "A" "Z")) ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (str.to_re ".") (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (str.to_re "\u{22}")))))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)