;test regex myVar=$(sed -r 's/^.{5}//' <<<"$myString")
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "m") (re.++ (str.to_re "y") (re.++ (str.to_re "V") (re.++ (str.to_re "a") (re.++ (str.to_re "r") (str.to_re "=")))))) (re.++ (str.to_re "") (re.++ (re.++ (re.++ (str.to_re "s") (re.++ (str.to_re "e") (re.++ (str.to_re "d") (re.++ (str.to_re " ") (re.++ (str.to_re "-") (re.++ (str.to_re "r") (re.++ (str.to_re " ") (re.++ (str.to_re "\u{27}") (re.++ (str.to_re "s") (str.to_re "/")))))))))) (re.++ (str.to_re "") (re.++ ((_ re.loop 5 5) (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "/") (re.++ (str.to_re "/") (re.++ (str.to_re "\u{27}") (re.++ (str.to_re " ") (re.++ (str.to_re "<") (re.++ (str.to_re "<") (re.++ (str.to_re "<") (str.to_re "\u{22}"))))))))))) (re.++ (str.to_re "") (re.++ (str.to_re "m") (re.++ (str.to_re "y") (re.++ (str.to_re "S") (re.++ (str.to_re "t") (re.++ (str.to_re "r") (re.++ (str.to_re "i") (re.++ (str.to_re "n") (re.++ (str.to_re "g") (str.to_re "\u{22}")))))))))))))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)