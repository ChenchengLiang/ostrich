;test regex ((^(10|12|0?[13578])(3[01]|[12][0-9]|0?[1-9])((1[8-9]\d{2})|([2-9]\d{3}))$)|(^(11|0?[469])(30|[12][0-9]|0?[1-9])((1[8-9]\d{2})|([2-9]\d{3}))$)|(^(0?2)(2[0-8]|1[0-9]|0?[1-9])((1[8-9]\d{2})|([2-9]\d{3}))$)|(^(0?2)(29)([2468][048]00)$)|(^(0?2)(29)([3579][26]00)$)|(^(0?2)(29)([1][89][0][48])$)|(^(0?2)(29)([2-9][0-9][0][48])$)|(^(0?2)(29)([1][89][2468][048])$)|(^(0?2)(29)([2-9][0-9][2468][048])$)|(^(0?2)(29)([1][89][13579][26])$)|(^(0?2)(29)([2-9][0-9][13579][26])$))
(declare-const X String)
(assert (str.in_re X (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.++ (re.++ (str.to_re "") (re.++ (re.union (re.union (str.to_re "10") (str.to_re "12")) (re.++ (re.opt (str.to_re "0")) (str.to_re "13578"))) (re.++ (re.union (re.union (re.++ (str.to_re "3") (str.to_re "01")) (re.++ (str.to_re "12") (re.range "0" "9"))) (re.++ (re.opt (str.to_re "0")) (re.range "1" "9"))) (re.union (re.++ (str.to_re "1") (re.++ (re.range "8" "9") ((_ re.loop 2 2) (re.range "0" "9")))) (re.++ (re.range "2" "9") ((_ re.loop 3 3) (re.range "0" "9"))))))) (str.to_re "")) (re.++ (re.++ (str.to_re "") (re.++ (re.union (str.to_re "11") (re.++ (re.opt (str.to_re "0")) (str.to_re "469"))) (re.++ (re.union (re.union (str.to_re "30") (re.++ (str.to_re "12") (re.range "0" "9"))) (re.++ (re.opt (str.to_re "0")) (re.range "1" "9"))) (re.union (re.++ (str.to_re "1") (re.++ (re.range "8" "9") ((_ re.loop 2 2) (re.range "0" "9")))) (re.++ (re.range "2" "9") ((_ re.loop 3 3) (re.range "0" "9"))))))) (str.to_re ""))) (re.++ (re.++ (str.to_re "") (re.++ (re.++ (re.opt (str.to_re "0")) (str.to_re "2")) (re.++ (re.union (re.union (re.++ (str.to_re "2") (re.range "0" "8")) (re.++ (str.to_re "1") (re.range "0" "9"))) (re.++ (re.opt (str.to_re "0")) (re.range "1" "9"))) (re.union (re.++ (str.to_re "1") (re.++ (re.range "8" "9") ((_ re.loop 2 2) (re.range "0" "9")))) (re.++ (re.range "2" "9") ((_ re.loop 3 3) (re.range "0" "9"))))))) (str.to_re ""))) (re.++ (re.++ (str.to_re "") (re.++ (re.++ (re.opt (str.to_re "0")) (str.to_re "2")) (re.++ (str.to_re "29") (re.++ (str.to_re "2468") (re.++ (str.to_re "048") (str.to_re "00")))))) (str.to_re ""))) (re.++ (re.++ (str.to_re "") (re.++ (re.++ (re.opt (str.to_re "0")) (str.to_re "2")) (re.++ (str.to_re "29") (re.++ (str.to_re "3579") (re.++ (str.to_re "26") (str.to_re "00")))))) (str.to_re ""))) (re.++ (re.++ (str.to_re "") (re.++ (re.++ (re.opt (str.to_re "0")) (str.to_re "2")) (re.++ (str.to_re "29") (re.++ (str.to_re "1") (re.++ (str.to_re "89") (re.++ (str.to_re "0") (str.to_re "48"))))))) (str.to_re ""))) (re.++ (re.++ (str.to_re "") (re.++ (re.++ (re.opt (str.to_re "0")) (str.to_re "2")) (re.++ (str.to_re "29") (re.++ (re.range "2" "9") (re.++ (re.range "0" "9") (re.++ (str.to_re "0") (str.to_re "48"))))))) (str.to_re ""))) (re.++ (re.++ (str.to_re "") (re.++ (re.++ (re.opt (str.to_re "0")) (str.to_re "2")) (re.++ (str.to_re "29") (re.++ (str.to_re "1") (re.++ (str.to_re "89") (re.++ (str.to_re "2468") (str.to_re "048"))))))) (str.to_re ""))) (re.++ (re.++ (str.to_re "") (re.++ (re.++ (re.opt (str.to_re "0")) (str.to_re "2")) (re.++ (str.to_re "29") (re.++ (re.range "2" "9") (re.++ (re.range "0" "9") (re.++ (str.to_re "2468") (str.to_re "048"))))))) (str.to_re ""))) (re.++ (re.++ (str.to_re "") (re.++ (re.++ (re.opt (str.to_re "0")) (str.to_re "2")) (re.++ (str.to_re "29") (re.++ (str.to_re "1") (re.++ (str.to_re "89") (re.++ (str.to_re "13579") (str.to_re "26"))))))) (str.to_re ""))) (re.++ (re.++ (str.to_re "") (re.++ (re.++ (re.opt (str.to_re "0")) (str.to_re "2")) (re.++ (str.to_re "29") (re.++ (re.range "2" "9") (re.++ (re.range "0" "9") (re.++ (str.to_re "13579") (str.to_re "26"))))))) (str.to_re "")))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)