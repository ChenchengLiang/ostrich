;test regex AND|OR|and|or|XOR|&&|<=|<|>|>=|!=|==|&|OR*|!|[||]{2}|\|
(declare-const X String)
(assert (str.in_re X (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.++ (str.to_re "A") (re.++ (str.to_re "N") (str.to_re "D"))) (re.++ (str.to_re "O") (str.to_re "R"))) (re.++ (str.to_re "a") (re.++ (str.to_re "n") (str.to_re "d")))) (re.++ (str.to_re "o") (str.to_re "r"))) (re.++ (str.to_re "X") (re.++ (str.to_re "O") (str.to_re "R")))) (re.++ (str.to_re "&") (str.to_re "&"))) (re.++ (str.to_re "<") (str.to_re "="))) (str.to_re "<")) (str.to_re ">")) (re.++ (str.to_re ">") (str.to_re "="))) (re.++ (str.to_re "!") (str.to_re "="))) (re.++ (str.to_re "=") (str.to_re "="))) (str.to_re "&")) (re.++ (str.to_re "O") (re.* (str.to_re "R")))) (str.to_re "!")) ((_ re.loop 2 2) (re.union (str.to_re "|") (str.to_re "|")))) (str.to_re "|"))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)