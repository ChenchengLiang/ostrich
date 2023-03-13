;test regex grep -r -E -o '"[A-Za-z0-9]{7}"' . | less
(declare-const X String)
(assert (str.in_re X (re.union (re.++ (str.to_re "g") (re.++ (str.to_re "r") (re.++ (str.to_re "e") (re.++ (str.to_re "p") (re.++ (str.to_re " ") (re.++ (str.to_re "-") (re.++ (str.to_re "r") (re.++ (str.to_re " ") (re.++ (str.to_re "-") (re.++ (str.to_re "E") (re.++ (str.to_re " ") (re.++ (str.to_re "-") (re.++ (str.to_re "o") (re.++ (str.to_re " ") (re.++ (str.to_re "\u{27}") (re.++ (str.to_re "\u{22}") (re.++ ((_ re.loop 7 7) (re.union (re.range "A" "Z") (re.union (re.range "a" "z") (re.range "0" "9")))) (re.++ (str.to_re "\u{22}") (re.++ (str.to_re "\u{27}") (re.++ (str.to_re " ") (re.++ (re.diff re.allchar (str.to_re "\n")) (str.to_re " ")))))))))))))))))))))) (re.++ (str.to_re " ") (re.++ (str.to_re "l") (re.++ (str.to_re "e") (re.++ (str.to_re "s") (str.to_re "s"))))))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)