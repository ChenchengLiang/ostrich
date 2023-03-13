;test regex ^(((1[6-9]|[2-9]\d)\d{2}([-|\/])(((0?[13578]|1[02])([-|\/])31)|((0?[1,3-9]|1[0-2])([-|\/])(29|30))))|((((1[6-9]|[2-9]\d)(0[48]|[2468][048]|[13579][26])|((16|[2468][048]|[3579][26])00)))([-|\/])0?2([-|\/])29)|((1[6-9]|[2-9]\d)\d{2})([-|\/])((0?[1-9])|(1[0-2]))([-|\/])(0?[1-9]|1\d|2[0-8]))$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.union (re.union (re.++ (re.union (re.++ (str.to_re "1") (re.range "6" "9")) (re.++ (re.range "2" "9") (re.range "0" "9"))) (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.++ (re.union (str.to_re "-") (re.union (str.to_re "|") (str.to_re "/"))) (re.union (re.++ (re.union (re.++ (re.opt (str.to_re "0")) (str.to_re "13578")) (re.++ (str.to_re "1") (str.to_re "02"))) (re.++ (re.union (str.to_re "-") (re.union (str.to_re "|") (str.to_re "/"))) (str.to_re "31"))) (re.++ (re.union (re.++ (re.opt (str.to_re "0")) (re.union (str.to_re "1") (re.union (str.to_re ",") (re.range "3" "9")))) (re.++ (str.to_re "1") (re.range "0" "2"))) (re.++ (re.union (str.to_re "-") (re.union (str.to_re "|") (str.to_re "/"))) (re.union (str.to_re "29") (str.to_re "30")))))))) (re.++ (re.union (re.++ (re.union (re.++ (str.to_re "1") (re.range "6" "9")) (re.++ (re.range "2" "9") (re.range "0" "9"))) (re.union (re.union (re.++ (str.to_re "0") (str.to_re "48")) (re.++ (str.to_re "2468") (str.to_re "048"))) (re.++ (str.to_re "13579") (str.to_re "26")))) (re.++ (re.union (re.union (str.to_re "16") (re.++ (str.to_re "2468") (str.to_re "048"))) (re.++ (str.to_re "3579") (str.to_re "26"))) (str.to_re "00"))) (re.++ (re.union (str.to_re "-") (re.union (str.to_re "|") (str.to_re "/"))) (re.++ (re.opt (str.to_re "0")) (re.++ (str.to_re "2") (re.++ (re.union (str.to_re "-") (re.union (str.to_re "|") (str.to_re "/"))) (str.to_re "29"))))))) (re.++ (re.++ (re.union (re.++ (str.to_re "1") (re.range "6" "9")) (re.++ (re.range "2" "9") (re.range "0" "9"))) ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (re.union (str.to_re "-") (re.union (str.to_re "|") (str.to_re "/"))) (re.++ (re.union (re.++ (re.opt (str.to_re "0")) (re.range "1" "9")) (re.++ (str.to_re "1") (re.range "0" "2"))) (re.++ (re.union (str.to_re "-") (re.union (str.to_re "|") (str.to_re "/"))) (re.union (re.union (re.++ (re.opt (str.to_re "0")) (re.range "1" "9")) (re.++ (str.to_re "1") (re.range "0" "9"))) (re.++ (str.to_re "2") (re.range "0" "8"))))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)