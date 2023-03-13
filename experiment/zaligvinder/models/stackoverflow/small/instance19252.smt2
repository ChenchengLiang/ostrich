;test regex \\s*[Cc]:(?:(?:\\/|\\\\{1,2})\\w+)+\\.\\w+
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "\\") (re.++ (re.* (str.to_re "s")) (re.++ (re.union (str.to_re "C") (str.to_re "c")) (re.++ (str.to_re ":") (re.++ (re.+ (re.++ (re.union (re.++ (str.to_re "\\") (str.to_re "/")) (re.++ (str.to_re "\\") ((_ re.loop 1 2) (str.to_re "\\")))) (re.++ (str.to_re "\\") (re.+ (str.to_re "w"))))) (re.++ (str.to_re "\\") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "\\") (re.+ (str.to_re "w"))))))))))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)