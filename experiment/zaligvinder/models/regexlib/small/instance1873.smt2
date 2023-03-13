;test regex ^([0-9]{8})|(R[0-9]{7})|((AC|FC|GE|GN|GS|IC|IP|LP|NA|NF|NI|NL|NO|NP|NR|NZ|OC|RC|SA|SC|SF|SI|SL|SO|SP|SR)[0-9]{6})$
(declare-const X String)
(assert (str.in_re X (re.union (re.union (re.++ (str.to_re "") ((_ re.loop 8 8) (re.range "0" "9"))) (re.++ (str.to_re "R") ((_ re.loop 7 7) (re.range "0" "9")))) (re.++ (re.++ (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.++ (str.to_re "A") (str.to_re "C")) (re.++ (str.to_re "F") (str.to_re "C"))) (re.++ (str.to_re "G") (str.to_re "E"))) (re.++ (str.to_re "G") (str.to_re "N"))) (re.++ (str.to_re "G") (str.to_re "S"))) (re.++ (str.to_re "I") (str.to_re "C"))) (re.++ (str.to_re "I") (str.to_re "P"))) (re.++ (str.to_re "L") (str.to_re "P"))) (re.++ (str.to_re "N") (str.to_re "A"))) (re.++ (str.to_re "N") (str.to_re "F"))) (re.++ (str.to_re "N") (str.to_re "I"))) (re.++ (str.to_re "N") (str.to_re "L"))) (re.++ (str.to_re "N") (str.to_re "O"))) (re.++ (str.to_re "N") (str.to_re "P"))) (re.++ (str.to_re "N") (str.to_re "R"))) (re.++ (str.to_re "N") (str.to_re "Z"))) (re.++ (str.to_re "O") (str.to_re "C"))) (re.++ (str.to_re "R") (str.to_re "C"))) (re.++ (str.to_re "S") (str.to_re "A"))) (re.++ (str.to_re "S") (str.to_re "C"))) (re.++ (str.to_re "S") (str.to_re "F"))) (re.++ (str.to_re "S") (str.to_re "I"))) (re.++ (str.to_re "S") (str.to_re "L"))) (re.++ (str.to_re "S") (str.to_re "O"))) (re.++ (str.to_re "S") (str.to_re "P"))) (re.++ (str.to_re "S") (str.to_re "R"))) ((_ re.loop 6 6) (re.range "0" "9"))) (str.to_re "")))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)