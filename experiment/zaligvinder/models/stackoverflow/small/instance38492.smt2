;test regex /(?:(?:0[13578]|1[02])\/(?:0[1-9]|[12]\d|3[01])|(?:0[2469]|11)\/(?:0[1-9]|[12]\d|30))\/\d{4,}/
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "/") (re.++ (re.union (re.++ (re.union (re.++ (str.to_re "0") (str.to_re "13578")) (re.++ (str.to_re "1") (str.to_re "02"))) (re.++ (str.to_re "/") (re.union (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (str.to_re "12") (re.range "0" "9"))) (re.++ (str.to_re "3") (str.to_re "01"))))) (re.++ (re.union (re.++ (str.to_re "0") (str.to_re "2469")) (str.to_re "11")) (re.++ (str.to_re "/") (re.union (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (str.to_re "12") (re.range "0" "9"))) (str.to_re "30"))))) (re.++ (str.to_re "/") (re.++ (re.++ (re.* (re.range "0" "9")) ((_ re.loop 4 4) (re.range "0" "9"))) (str.to_re "/")))))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)