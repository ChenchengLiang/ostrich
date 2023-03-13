;test regex ^(((\d{4})(-)(0[13578]|10|12)(-)(0[1-9]|[12][0-9]|3[01]))|((\d{4})(-)(0[469]|11)(-)([0][1-9]|[12][0-9]|30))|((\d{4})(-)(02)(-)(0[1-9]|1[0-9]|2[0-8]))|(([02468][048]00)(-)(02)(-)(29))|(([13579][26]00)(-)(02)(-)(29))|(([0-9][0-9][0][48])(-)(02)(-)(29))|(([0-9][0-9][2468][048])(-)(02)(-)(29))|(([0-9][0-9][13579][26])(-)(02)(-)(29)))$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.++ (str.to_re "-") (re.++ (re.union (re.union (re.++ (str.to_re "0") (str.to_re "13578")) (str.to_re "10")) (str.to_re "12")) (re.++ (str.to_re "-") (re.union (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (str.to_re "12") (re.range "0" "9"))) (re.++ (str.to_re "3") (str.to_re "01"))))))) (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.++ (str.to_re "-") (re.++ (re.union (re.++ (str.to_re "0") (str.to_re "469")) (str.to_re "11")) (re.++ (str.to_re "-") (re.union (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (str.to_re "12") (re.range "0" "9"))) (str.to_re "30"))))))) (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.++ (str.to_re "-") (re.++ (str.to_re "02") (re.++ (str.to_re "-") (re.union (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (str.to_re "1") (re.range "0" "9"))) (re.++ (str.to_re "2") (re.range "0" "8")))))))) (re.++ (re.++ (str.to_re "02468") (re.++ (str.to_re "048") (str.to_re "00"))) (re.++ (str.to_re "-") (re.++ (str.to_re "02") (re.++ (str.to_re "-") (str.to_re "29")))))) (re.++ (re.++ (str.to_re "13579") (re.++ (str.to_re "26") (str.to_re "00"))) (re.++ (str.to_re "-") (re.++ (str.to_re "02") (re.++ (str.to_re "-") (str.to_re "29")))))) (re.++ (re.++ (re.range "0" "9") (re.++ (re.range "0" "9") (re.++ (str.to_re "0") (str.to_re "48")))) (re.++ (str.to_re "-") (re.++ (str.to_re "02") (re.++ (str.to_re "-") (str.to_re "29")))))) (re.++ (re.++ (re.range "0" "9") (re.++ (re.range "0" "9") (re.++ (str.to_re "2468") (str.to_re "048")))) (re.++ (str.to_re "-") (re.++ (str.to_re "02") (re.++ (str.to_re "-") (str.to_re "29")))))) (re.++ (re.++ (re.range "0" "9") (re.++ (re.range "0" "9") (re.++ (str.to_re "13579") (str.to_re "26")))) (re.++ (str.to_re "-") (re.++ (str.to_re "02") (re.++ (str.to_re "-") (str.to_re "29"))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)