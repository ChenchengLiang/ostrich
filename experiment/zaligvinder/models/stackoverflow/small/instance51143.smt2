;test regex <title>.*?\\(.*?(\\d{4}).*?\\).*?</title>
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "<") (re.++ (str.to_re "t") (re.++ (str.to_re "i") (re.++ (str.to_re "t") (re.++ (str.to_re "l") (re.++ (str.to_re "e") (re.++ (str.to_re ">") (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "\\") (re.++ (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (re.++ (str.to_re "\\") ((_ re.loop 4 4) (str.to_re "d"))) (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (str.to_re "\\")))) (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "<") (re.++ (str.to_re "/") (re.++ (str.to_re "t") (re.++ (str.to_re "i") (re.++ (str.to_re "t") (re.++ (str.to_re "l") (re.++ (str.to_re "e") (str.to_re ">")))))))))))))))))))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)