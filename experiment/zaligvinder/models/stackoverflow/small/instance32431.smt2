;test regex (?:jan|feb|mar|apr|may|jun|jul|aug|sep|oct|nov|dec)[A-Z]*\s[0-9]{1,2}
(declare-const X String)
(assert (str.in_re X (re.++ (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.++ (str.to_re "j") (re.++ (str.to_re "a") (str.to_re "n"))) (re.++ (str.to_re "f") (re.++ (str.to_re "e") (str.to_re "b")))) (re.++ (str.to_re "m") (re.++ (str.to_re "a") (str.to_re "r")))) (re.++ (str.to_re "a") (re.++ (str.to_re "p") (str.to_re "r")))) (re.++ (str.to_re "m") (re.++ (str.to_re "a") (str.to_re "y")))) (re.++ (str.to_re "j") (re.++ (str.to_re "u") (str.to_re "n")))) (re.++ (str.to_re "j") (re.++ (str.to_re "u") (str.to_re "l")))) (re.++ (str.to_re "a") (re.++ (str.to_re "u") (str.to_re "g")))) (re.++ (str.to_re "s") (re.++ (str.to_re "e") (str.to_re "p")))) (re.++ (str.to_re "o") (re.++ (str.to_re "c") (str.to_re "t")))) (re.++ (str.to_re "n") (re.++ (str.to_re "o") (str.to_re "v")))) (re.++ (str.to_re "d") (re.++ (str.to_re "e") (str.to_re "c")))) (re.++ (re.* (re.range "A" "Z")) (re.++ (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}")))))) ((_ re.loop 1 2) (re.range "0" "9")))))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)