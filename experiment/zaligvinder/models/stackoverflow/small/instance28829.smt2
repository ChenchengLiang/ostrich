;test regex ^([A-Z]{2,4}|[A-Z]\s)([FGHJKMNQUVXZ]\d{1,2}) (Curncy|Equity|Index|Comdty)$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (re.union ((_ re.loop 2 4) (re.range "A" "Z")) (re.++ (re.range "A" "Z") (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}")))))))) (re.++ (re.++ (re.union (str.to_re "F") (re.union (str.to_re "G") (re.union (str.to_re "H") (re.union (str.to_re "J") (re.union (str.to_re "K") (re.union (str.to_re "M") (re.union (str.to_re "N") (re.union (str.to_re "Q") (re.union (str.to_re "U") (re.union (str.to_re "V") (re.union (str.to_re "X") (str.to_re "Z")))))))))))) ((_ re.loop 1 2) (re.range "0" "9"))) (re.++ (str.to_re " ") (re.union (re.union (re.union (re.++ (str.to_re "C") (re.++ (str.to_re "u") (re.++ (str.to_re "r") (re.++ (str.to_re "n") (re.++ (str.to_re "c") (str.to_re "y")))))) (re.++ (str.to_re "E") (re.++ (str.to_re "q") (re.++ (str.to_re "u") (re.++ (str.to_re "i") (re.++ (str.to_re "t") (str.to_re "y"))))))) (re.++ (str.to_re "I") (re.++ (str.to_re "n") (re.++ (str.to_re "d") (re.++ (str.to_re "e") (str.to_re "x")))))) (re.++ (str.to_re "C") (re.++ (str.to_re "o") (re.++ (str.to_re "m") (re.++ (str.to_re "d") (re.++ (str.to_re "t") (str.to_re "y"))))))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)