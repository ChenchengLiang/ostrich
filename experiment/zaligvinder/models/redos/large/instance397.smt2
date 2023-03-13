;test regex \A[^:]+:\$2[aby]\$\d{2}\$.{53}\z
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "A") (re.++ (re.+ (re.diff re.allchar (str.to_re ":"))) (re.++ (str.to_re ":") (re.++ (str.to_re "$") (re.++ (str.to_re "2") (re.++ (re.union (str.to_re "a") (re.union (str.to_re "b") (str.to_re "y"))) (re.++ (str.to_re "$") (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.++ (str.to_re "$") (re.++ ((_ re.loop 53 53) (re.diff re.allchar (str.to_re "\n"))) (str.to_re "z")))))))))))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 50 (str.len X)))
(check-sat)
(get-model)