;test regex Power_On_Hours.+Always\s.+([0-9]{1,5})
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "P") (re.++ (str.to_re "o") (re.++ (str.to_re "w") (re.++ (str.to_re "e") (re.++ (str.to_re "r") (re.++ (str.to_re "_") (re.++ (str.to_re "O") (re.++ (str.to_re "n") (re.++ (str.to_re "_") (re.++ (str.to_re "H") (re.++ (str.to_re "o") (re.++ (str.to_re "u") (re.++ (str.to_re "r") (re.++ (str.to_re "s") (re.++ (re.+ (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "A") (re.++ (str.to_re "l") (re.++ (str.to_re "w") (re.++ (str.to_re "a") (re.++ (str.to_re "y") (re.++ (str.to_re "s") (re.++ (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}")))))) (re.++ (re.+ (re.diff re.allchar (str.to_re "\n"))) ((_ re.loop 1 5) (re.range "0" "9")))))))))))))))))))))))))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)