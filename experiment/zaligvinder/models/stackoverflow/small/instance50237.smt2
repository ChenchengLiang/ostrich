;test regex \\s{19}USER NUMBER
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "\\") (re.++ ((_ re.loop 19 19) (str.to_re "s")) (re.++ (str.to_re "U") (re.++ (str.to_re "S") (re.++ (str.to_re "E") (re.++ (str.to_re "R") (re.++ (str.to_re " ") (re.++ (str.to_re "N") (re.++ (str.to_re "U") (re.++ (str.to_re "M") (re.++ (str.to_re "B") (re.++ (str.to_re "E") (str.to_re "R")))))))))))))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)