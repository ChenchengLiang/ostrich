;test regex SELECT REGEXP_SUBSTR('AB3530A/AB476-1','\\b[A-Z]{2}\\d{3}\\b');
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "S") (re.++ (str.to_re "E") (re.++ (str.to_re "L") (re.++ (str.to_re "E") (re.++ (str.to_re "C") (re.++ (str.to_re "T") (re.++ (str.to_re " ") (re.++ (str.to_re "R") (re.++ (str.to_re "E") (re.++ (str.to_re "G") (re.++ (str.to_re "E") (re.++ (str.to_re "X") (re.++ (str.to_re "P") (re.++ (str.to_re "_") (re.++ (str.to_re "S") (re.++ (str.to_re "U") (re.++ (str.to_re "B") (re.++ (str.to_re "S") (re.++ (str.to_re "T") (re.++ (str.to_re "R") (re.++ (re.++ (re.++ (str.to_re "\u{27}") (re.++ (str.to_re "A") (re.++ (str.to_re "B") (re.++ (str.to_re "3530") (re.++ (str.to_re "A") (re.++ (str.to_re "/") (re.++ (str.to_re "A") (re.++ (str.to_re "B") (re.++ (str.to_re "476") (re.++ (str.to_re "-") (re.++ (str.to_re "1") (str.to_re "\u{27}")))))))))))) (re.++ (str.to_re ",") (re.++ (str.to_re "\u{27}") (re.++ (str.to_re "\\") (re.++ (str.to_re "b") (re.++ ((_ re.loop 2 2) (re.range "A" "Z")) (re.++ (str.to_re "\\") (re.++ ((_ re.loop 3 3) (str.to_re "d")) (re.++ (str.to_re "\\") (re.++ (str.to_re "b") (str.to_re "\u{27}"))))))))))) (str.to_re ";"))))))))))))))))))))))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)