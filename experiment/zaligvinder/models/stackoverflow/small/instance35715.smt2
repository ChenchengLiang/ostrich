;test regex head -n1 * | grep -EB1 '^.{6}OB'
(declare-const X String)
(assert (str.in_re X (re.union (re.++ (str.to_re "h") (re.++ (str.to_re "e") (re.++ (str.to_re "a") (re.++ (str.to_re "d") (re.++ (str.to_re " ") (re.++ (str.to_re "-") (re.++ (str.to_re "n") (re.++ (str.to_re "1") (re.++ (re.* (str.to_re " ")) (str.to_re " ")))))))))) (re.++ (re.++ (str.to_re " ") (re.++ (str.to_re "g") (re.++ (str.to_re "r") (re.++ (str.to_re "e") (re.++ (str.to_re "p") (re.++ (str.to_re " ") (re.++ (str.to_re "-") (re.++ (str.to_re "E") (re.++ (str.to_re "B") (re.++ (str.to_re "1") (re.++ (str.to_re " ") (str.to_re "\u{27}")))))))))))) (re.++ (str.to_re "") (re.++ ((_ re.loop 6 6) (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "O") (re.++ (str.to_re "B") (str.to_re "\u{27}")))))))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)