;test regex ^UPDATEarm:0\d{13}10\nUPDATEarm:1\d{13}20\nUPDATEarm:2\d{13}30\nUPDATEarm:3\d{13}40\n$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (str.to_re "U") (re.++ (str.to_re "P") (re.++ (str.to_re "D") (re.++ (str.to_re "A") (re.++ (str.to_re "T") (re.++ (str.to_re "E") (re.++ (str.to_re "a") (re.++ (str.to_re "r") (re.++ (str.to_re "m") (re.++ (str.to_re ":") (re.++ (str.to_re "0") (re.++ ((_ re.loop 13 13) (re.range "0" "9")) (re.++ (str.to_re "10") (re.++ (str.to_re "\u{0a}") (re.++ (str.to_re "U") (re.++ (str.to_re "P") (re.++ (str.to_re "D") (re.++ (str.to_re "A") (re.++ (str.to_re "T") (re.++ (str.to_re "E") (re.++ (str.to_re "a") (re.++ (str.to_re "r") (re.++ (str.to_re "m") (re.++ (str.to_re ":") (re.++ (str.to_re "1") (re.++ ((_ re.loop 13 13) (re.range "0" "9")) (re.++ (str.to_re "20") (re.++ (str.to_re "\u{0a}") (re.++ (str.to_re "U") (re.++ (str.to_re "P") (re.++ (str.to_re "D") (re.++ (str.to_re "A") (re.++ (str.to_re "T") (re.++ (str.to_re "E") (re.++ (str.to_re "a") (re.++ (str.to_re "r") (re.++ (str.to_re "m") (re.++ (str.to_re ":") (re.++ (str.to_re "2") (re.++ ((_ re.loop 13 13) (re.range "0" "9")) (re.++ (str.to_re "30") (re.++ (str.to_re "\u{0a}") (re.++ (str.to_re "U") (re.++ (str.to_re "P") (re.++ (str.to_re "D") (re.++ (str.to_re "A") (re.++ (str.to_re "T") (re.++ (str.to_re "E") (re.++ (str.to_re "a") (re.++ (str.to_re "r") (re.++ (str.to_re "m") (re.++ (str.to_re ":") (re.++ (str.to_re "3") (re.++ ((_ re.loop 13 13) (re.range "0" "9")) (re.++ (str.to_re "40") (str.to_re "\u{0a}"))))))))))))))))))))))))))))))))))))))))))))))))))))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)