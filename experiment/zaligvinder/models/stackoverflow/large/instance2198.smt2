;test regex code_name:00:12 29.05.2018 {1705}
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "c") (re.++ (str.to_re "o") (re.++ (str.to_re "d") (re.++ (str.to_re "e") (re.++ (str.to_re "_") (re.++ (str.to_re "n") (re.++ (str.to_re "a") (re.++ (str.to_re "m") (re.++ (str.to_re "e") (re.++ (str.to_re ":") (re.++ (str.to_re "00") (re.++ (str.to_re ":") (re.++ (str.to_re "12") (re.++ (str.to_re " ") (re.++ (str.to_re "29") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "05") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "2018") ((_ re.loop 1705 1705) (str.to_re " ")))))))))))))))))))))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 50 (str.len X)))
(check-sat)
(get-model)