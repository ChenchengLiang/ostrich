;test regex ^((?:01|02|35|27|09|38|12|32|21|28|26|36|08|20|24|04|34|23|31|07|16|11|18|14|03|22|37|25|06|30|13|19|10|05|29|15|17|33)(?:\d{7}))|(\d{12})$
(declare-const X String)
(assert (str.in_re X (re.union (re.++ (str.to_re "") (re.++ (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (str.to_re "01") (str.to_re "02")) (str.to_re "35")) (str.to_re "27")) (str.to_re "09")) (str.to_re "38")) (str.to_re "12")) (str.to_re "32")) (str.to_re "21")) (str.to_re "28")) (str.to_re "26")) (str.to_re "36")) (str.to_re "08")) (str.to_re "20")) (str.to_re "24")) (str.to_re "04")) (str.to_re "34")) (str.to_re "23")) (str.to_re "31")) (str.to_re "07")) (str.to_re "16")) (str.to_re "11")) (str.to_re "18")) (str.to_re "14")) (str.to_re "03")) (str.to_re "22")) (str.to_re "37")) (str.to_re "25")) (str.to_re "06")) (str.to_re "30")) (str.to_re "13")) (str.to_re "19")) (str.to_re "10")) (str.to_re "05")) (str.to_re "29")) (str.to_re "15")) (str.to_re "17")) (str.to_re "33")) ((_ re.loop 7 7) (re.range "0" "9")))) (re.++ ((_ re.loop 12 12) (re.range "0" "9")) (str.to_re "")))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)