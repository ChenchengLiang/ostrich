;test regex SELECT * FROM test WHERE published REGEXP '^([0-9]{4}\-{1}(05|01|03){1}\-{1}[0-9]{2})$'
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (re.++ (str.to_re "S") (re.++ (str.to_re "E") (re.++ (str.to_re "L") (re.++ (str.to_re "E") (re.++ (str.to_re "C") (re.++ (str.to_re "T") (re.++ (re.* (str.to_re " ")) (re.++ (str.to_re " ") (re.++ (str.to_re "F") (re.++ (str.to_re "R") (re.++ (str.to_re "O") (re.++ (str.to_re "M") (re.++ (str.to_re " ") (re.++ (str.to_re "t") (re.++ (str.to_re "e") (re.++ (str.to_re "s") (re.++ (str.to_re "t") (re.++ (str.to_re " ") (re.++ (str.to_re "W") (re.++ (str.to_re "H") (re.++ (str.to_re "E") (re.++ (str.to_re "R") (re.++ (str.to_re "E") (re.++ (str.to_re " ") (re.++ (str.to_re "p") (re.++ (str.to_re "u") (re.++ (str.to_re "b") (re.++ (str.to_re "l") (re.++ (str.to_re "i") (re.++ (str.to_re "s") (re.++ (str.to_re "h") (re.++ (str.to_re "e") (re.++ (str.to_re "d") (re.++ (str.to_re " ") (re.++ (str.to_re "R") (re.++ (str.to_re "E") (re.++ (str.to_re "G") (re.++ (str.to_re "E") (re.++ (str.to_re "X") (re.++ (str.to_re "P") (re.++ (str.to_re " ") (str.to_re "\u{27}")))))))))))))))))))))))))))))))))))))))))) (re.++ (str.to_re "") (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.++ ((_ re.loop 1 1) (str.to_re "-")) (re.++ ((_ re.loop 1 1) (re.union (re.union (str.to_re "05") (str.to_re "01")) (str.to_re "03"))) (re.++ ((_ re.loop 1 1) (str.to_re "-")) ((_ re.loop 2 2) (re.range "0" "9")))))))) (re.++ (str.to_re "") (str.to_re "\u{27}")))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)