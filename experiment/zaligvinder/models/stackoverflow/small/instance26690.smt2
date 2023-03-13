;test regex jewelclub_[a-z0-9]{1,}_(small|medium|large|zoom)\.jpg
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "j") (re.++ (str.to_re "e") (re.++ (str.to_re "w") (re.++ (str.to_re "e") (re.++ (str.to_re "l") (re.++ (str.to_re "c") (re.++ (str.to_re "l") (re.++ (str.to_re "u") (re.++ (str.to_re "b") (re.++ (str.to_re "_") (re.++ (re.++ (re.* (re.union (re.range "a" "z") (re.range "0" "9"))) ((_ re.loop 1 1) (re.union (re.range "a" "z") (re.range "0" "9")))) (re.++ (str.to_re "_") (re.++ (re.union (re.union (re.union (re.++ (str.to_re "s") (re.++ (str.to_re "m") (re.++ (str.to_re "a") (re.++ (str.to_re "l") (str.to_re "l"))))) (re.++ (str.to_re "m") (re.++ (str.to_re "e") (re.++ (str.to_re "d") (re.++ (str.to_re "i") (re.++ (str.to_re "u") (str.to_re "m"))))))) (re.++ (str.to_re "l") (re.++ (str.to_re "a") (re.++ (str.to_re "r") (re.++ (str.to_re "g") (str.to_re "e")))))) (re.++ (str.to_re "z") (re.++ (str.to_re "o") (re.++ (str.to_re "o") (str.to_re "m"))))) (re.++ (str.to_re ".") (re.++ (str.to_re "j") (re.++ (str.to_re "p") (str.to_re "g")))))))))))))))))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)