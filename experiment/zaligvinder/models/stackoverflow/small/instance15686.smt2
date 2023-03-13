;test regex SC_S\d{3}_M\d\.CONTROLDAY\d{1,2}\.EPI\d?(?:\.P\d_|_)
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "S") (re.++ (str.to_re "C") (re.++ (str.to_re "_") (re.++ (str.to_re "S") (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.++ (str.to_re "_") (re.++ (str.to_re "M") (re.++ (re.range "0" "9") (re.++ (str.to_re ".") (re.++ (str.to_re "C") (re.++ (str.to_re "O") (re.++ (str.to_re "N") (re.++ (str.to_re "T") (re.++ (str.to_re "R") (re.++ (str.to_re "O") (re.++ (str.to_re "L") (re.++ (str.to_re "D") (re.++ (str.to_re "A") (re.++ (str.to_re "Y") (re.++ ((_ re.loop 1 2) (re.range "0" "9")) (re.++ (str.to_re ".") (re.++ (str.to_re "E") (re.++ (str.to_re "P") (re.++ (str.to_re "I") (re.++ (re.opt (re.range "0" "9")) (re.union (re.++ (str.to_re ".") (re.++ (str.to_re "P") (re.++ (re.range "0" "9") (str.to_re "_")))) (str.to_re "_")))))))))))))))))))))))))))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)