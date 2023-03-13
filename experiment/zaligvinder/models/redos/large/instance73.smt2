;test regex ^\n*[aA][uU][tT][hH][iI][nN][fF][oO][\u{20}\u{09}\u{0b}]+[uU][sS][eE][rR][\u{20}\u{09}\u{0b}][^\n]{200}
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "") (re.++ (re.* (str.to_re "\u{0a}")) (re.++ (re.union (str.to_re "a") (str.to_re "A")) (re.++ (re.union (str.to_re "u") (str.to_re "U")) (re.++ (re.union (str.to_re "t") (str.to_re "T")) (re.++ (re.union (str.to_re "h") (str.to_re "H")) (re.++ (re.union (str.to_re "i") (str.to_re "I")) (re.++ (re.union (str.to_re "n") (str.to_re "N")) (re.++ (re.union (str.to_re "f") (str.to_re "F")) (re.++ (re.union (str.to_re "o") (str.to_re "O")) (re.++ (re.+ (re.union (str.to_re "\u{20}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0b}")))) (re.++ (re.union (str.to_re "u") (str.to_re "U")) (re.++ (re.union (str.to_re "s") (str.to_re "S")) (re.++ (re.union (str.to_re "e") (str.to_re "E")) (re.++ (re.union (str.to_re "r") (str.to_re "R")) (re.++ (re.union (str.to_re "\u{20}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0b}"))) ((_ re.loop 200 200) (re.diff re.allchar (str.to_re "\u{0a}")))))))))))))))))))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 50 (str.len X)))
(check-sat)
(get-model)