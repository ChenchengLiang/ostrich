;test regex select SQLEXT.regexp_like('2014-01-21 04:43:00','\d{4}-\d{2}-\d{2} \d{2}:\d{2}:\d{2}$')
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "s") (re.++ (str.to_re "e") (re.++ (str.to_re "l") (re.++ (str.to_re "e") (re.++ (str.to_re "c") (re.++ (str.to_re "t") (re.++ (str.to_re " ") (re.++ (str.to_re "S") (re.++ (str.to_re "Q") (re.++ (str.to_re "L") (re.++ (str.to_re "E") (re.++ (str.to_re "X") (re.++ (str.to_re "T") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "r") (re.++ (str.to_re "e") (re.++ (str.to_re "g") (re.++ (str.to_re "e") (re.++ (str.to_re "x") (re.++ (str.to_re "p") (re.++ (str.to_re "_") (re.++ (str.to_re "l") (re.++ (str.to_re "i") (re.++ (str.to_re "k") (re.++ (str.to_re "e") (re.++ (re.++ (re.++ (str.to_re "\u{27}") (re.++ (str.to_re "2014") (re.++ (str.to_re "-") (re.++ (str.to_re "01") (re.++ (str.to_re "-") (re.++ (str.to_re "21") (re.++ (str.to_re " ") (re.++ (str.to_re "04") (re.++ (str.to_re ":") (re.++ (str.to_re "43") (re.++ (str.to_re ":") (re.++ (str.to_re "00") (str.to_re "\u{27}"))))))))))))) (re.++ (str.to_re ",") (re.++ (str.to_re "\u{27}") (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.++ (str.to_re "-") (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.++ (str.to_re "-") (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.++ (str.to_re " ") (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.++ (str.to_re ":") (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.++ (str.to_re ":") ((_ re.loop 2 2) (re.range "0" "9"))))))))))))))) (re.++ (str.to_re "") (str.to_re "\u{27}"))))))))))))))))))))))))))))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)