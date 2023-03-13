;test regex $ grep -E "(^|[^\d])\d{3,5}([^\d]|$)"<<<"12345aaa6789aaa01234"
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "") (re.++ (str.to_re " ") (re.++ (str.to_re "g") (re.++ (str.to_re "r") (re.++ (str.to_re "e") (re.++ (str.to_re "p") (re.++ (str.to_re " ") (re.++ (str.to_re "-") (re.++ (str.to_re "E") (re.++ (str.to_re " ") (re.++ (str.to_re "\u{22}") (re.++ (re.union (str.to_re "") (re.diff re.allchar (re.range "0" "9"))) (re.++ ((_ re.loop 3 5) (re.range "0" "9")) (re.++ (re.union (re.diff re.allchar (re.range "0" "9")) (str.to_re "")) (re.++ (str.to_re "\u{22}") (re.++ (str.to_re "<") (re.++ (str.to_re "<") (re.++ (str.to_re "<") (re.++ (str.to_re "\u{22}") (re.++ (str.to_re "12345") (re.++ (str.to_re "a") (re.++ (str.to_re "a") (re.++ (str.to_re "a") (re.++ (str.to_re "6789") (re.++ (str.to_re "a") (re.++ (str.to_re "a") (re.++ (str.to_re "a") (re.++ (str.to_re "01234") (str.to_re "\u{22}")))))))))))))))))))))))))))))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)