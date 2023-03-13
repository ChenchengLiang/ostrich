;test regex UPDATE tblRequests SET flagIsRefCodeOK=(RefCode REGEX '^[A-Z0-9]{8}-(?:[A-Z0-9]{4}-){3}[A-Z0-9]{12}$') WHERE DataSetID=11
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "U") (re.++ (str.to_re "P") (re.++ (str.to_re "D") (re.++ (str.to_re "A") (re.++ (str.to_re "T") (re.++ (str.to_re "E") (re.++ (str.to_re " ") (re.++ (str.to_re "t") (re.++ (str.to_re "b") (re.++ (str.to_re "l") (re.++ (str.to_re "R") (re.++ (str.to_re "e") (re.++ (str.to_re "q") (re.++ (str.to_re "u") (re.++ (str.to_re "e") (re.++ (str.to_re "s") (re.++ (str.to_re "t") (re.++ (str.to_re "s") (re.++ (str.to_re " ") (re.++ (str.to_re "S") (re.++ (str.to_re "E") (re.++ (str.to_re "T") (re.++ (str.to_re " ") (re.++ (str.to_re "f") (re.++ (str.to_re "l") (re.++ (str.to_re "a") (re.++ (str.to_re "g") (re.++ (str.to_re "I") (re.++ (str.to_re "s") (re.++ (str.to_re "R") (re.++ (str.to_re "e") (re.++ (str.to_re "f") (re.++ (str.to_re "C") (re.++ (str.to_re "o") (re.++ (str.to_re "d") (re.++ (str.to_re "e") (re.++ (str.to_re "O") (re.++ (str.to_re "K") (re.++ (str.to_re "=") (re.++ (re.++ (re.++ (re.++ (str.to_re "R") (re.++ (str.to_re "e") (re.++ (str.to_re "f") (re.++ (str.to_re "C") (re.++ (str.to_re "o") (re.++ (str.to_re "d") (re.++ (str.to_re "e") (re.++ (str.to_re " ") (re.++ (str.to_re "R") (re.++ (str.to_re "E") (re.++ (str.to_re "G") (re.++ (str.to_re "E") (re.++ (str.to_re "X") (re.++ (str.to_re " ") (str.to_re "\u{27}"))))))))))))))) (re.++ (str.to_re "") (re.++ ((_ re.loop 8 8) (re.union (re.range "A" "Z") (re.range "0" "9"))) (re.++ (str.to_re "-") (re.++ ((_ re.loop 3 3) (re.++ ((_ re.loop 4 4) (re.union (re.range "A" "Z") (re.range "0" "9"))) (str.to_re "-"))) ((_ re.loop 12 12) (re.union (re.range "A" "Z") (re.range "0" "9")))))))) (re.++ (str.to_re "") (str.to_re "\u{27}"))) (re.++ (str.to_re " ") (re.++ (str.to_re "W") (re.++ (str.to_re "H") (re.++ (str.to_re "E") (re.++ (str.to_re "R") (re.++ (str.to_re "E") (re.++ (str.to_re " ") (re.++ (str.to_re "D") (re.++ (str.to_re "a") (re.++ (str.to_re "t") (re.++ (str.to_re "a") (re.++ (str.to_re "S") (re.++ (str.to_re "e") (re.++ (str.to_re "t") (re.++ (str.to_re "I") (re.++ (str.to_re "D") (re.++ (str.to_re "=") (str.to_re "11"))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)