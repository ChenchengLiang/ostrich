;test regex .*\.{1}(tgz|tar\.gz)
(declare-const X String)
(assert (str.in_re X (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ ((_ re.loop 1 1) (str.to_re ".")) (re.union (re.++ (str.to_re "t") (re.++ (str.to_re "g") (str.to_re "z"))) (re.++ (str.to_re "t") (re.++ (str.to_re "a") (re.++ (str.to_re "r") (re.++ (str.to_re ".") (re.++ (str.to_re "g") (str.to_re "z")))))))))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)