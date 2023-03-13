;test regex ^(?:(?:(?:0?[1-9]|1\d|2[0-8])\/(?:0?[1-9]|1[0-2]))\/(?:(?:1[6-9]|[2-9]\d)\d{2}))$|^(?:(?:(?:31\/0?[13578]|1[02])|(?:(?:29|30)\/(?:0?[1,3-9]|1[0-2])))\/(?:(?:1[6-9]|[2-9]\d)\d{2}))$|^(?:29\/0?2\/(?:(?:(?:1[6-9]|[2-9]\d)(?:0[48]|[2468][048]|[13579][26]))))$
(declare-const X String)
(assert (str.in_re X (re.union (re.union (re.++ (re.++ (str.to_re "") (re.++ (re.++ (re.union (re.union (re.++ (re.opt (str.to_re "0")) (re.range "1" "9")) (re.++ (str.to_re "1") (re.range "0" "9"))) (re.++ (str.to_re "2") (re.range "0" "8"))) (re.++ (str.to_re "/") (re.union (re.++ (re.opt (str.to_re "0")) (re.range "1" "9")) (re.++ (str.to_re "1") (re.range "0" "2"))))) (re.++ (str.to_re "/") (re.++ (re.union (re.++ (str.to_re "1") (re.range "6" "9")) (re.++ (re.range "2" "9") (re.range "0" "9"))) ((_ re.loop 2 2) (re.range "0" "9")))))) (str.to_re "")) (re.++ (re.++ (str.to_re "") (re.++ (re.union (re.union (re.++ (str.to_re "31") (re.++ (str.to_re "/") (re.++ (re.opt (str.to_re "0")) (str.to_re "13578")))) (re.++ (str.to_re "1") (str.to_re "02"))) (re.++ (re.union (str.to_re "29") (str.to_re "30")) (re.++ (str.to_re "/") (re.union (re.++ (re.opt (str.to_re "0")) (re.union (str.to_re "1") (re.union (str.to_re ",") (re.range "3" "9")))) (re.++ (str.to_re "1") (re.range "0" "2")))))) (re.++ (str.to_re "/") (re.++ (re.union (re.++ (str.to_re "1") (re.range "6" "9")) (re.++ (re.range "2" "9") (re.range "0" "9"))) ((_ re.loop 2 2) (re.range "0" "9")))))) (str.to_re ""))) (re.++ (re.++ (str.to_re "") (re.++ (str.to_re "29") (re.++ (str.to_re "/") (re.++ (re.opt (str.to_re "0")) (re.++ (str.to_re "2") (re.++ (str.to_re "/") (re.++ (re.union (re.++ (str.to_re "1") (re.range "6" "9")) (re.++ (re.range "2" "9") (re.range "0" "9"))) (re.union (re.union (re.++ (str.to_re "0") (str.to_re "48")) (re.++ (str.to_re "2468") (str.to_re "048"))) (re.++ (str.to_re "13579") (str.to_re "26")))))))))) (str.to_re "")))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)