;test regex "\\w{3,}@\\w{2,}\.\\ w{2,}
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "\u{22}") (re.++ (str.to_re "\\") (re.++ (re.++ (re.* (str.to_re "w")) ((_ re.loop 3 3) (str.to_re "w"))) (re.++ (str.to_re "@") (re.++ (str.to_re "\\") (re.++ (re.++ (re.* (str.to_re "w")) ((_ re.loop 2 2) (str.to_re "w"))) (re.++ (str.to_re ".") (re.++ (str.to_re "\\") (re.++ (str.to_re " ") (re.++ (re.* (str.to_re "w")) ((_ re.loop 2 2) (str.to_re "w"))))))))))))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)