;test regex name.matches("^maze[\\d]{0,2}\\.in$");
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "n") (re.++ (str.to_re "a") (re.++ (str.to_re "m") (re.++ (str.to_re "e") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "m") (re.++ (str.to_re "a") (re.++ (str.to_re "t") (re.++ (str.to_re "c") (re.++ (str.to_re "h") (re.++ (str.to_re "e") (re.++ (str.to_re "s") (re.++ (re.++ (re.++ (str.to_re "\u{22}") (re.++ (str.to_re "") (re.++ (str.to_re "m") (re.++ (str.to_re "a") (re.++ (str.to_re "z") (re.++ (str.to_re "e") (re.++ ((_ re.loop 0 2) (re.union (str.to_re "\\") (str.to_re "d"))) (re.++ (str.to_re "\\") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "i") (str.to_re "n"))))))))))) (re.++ (str.to_re "") (str.to_re "\u{22}"))) (str.to_re ";"))))))))))))))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)