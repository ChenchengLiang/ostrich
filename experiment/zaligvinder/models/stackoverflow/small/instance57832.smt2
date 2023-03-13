;test regex (?:\d{1,2}|1\d{2}|2(?:[0-4]\d|5[0-5]))
(declare-const X String)
(assert (str.in_re X (re.union (re.union ((_ re.loop 1 2) (re.range "0" "9")) (re.++ (str.to_re "1") ((_ re.loop 2 2) (re.range "0" "9")))) (re.++ (str.to_re "2") (re.union (re.++ (re.range "0" "4") (re.range "0" "9")) (re.++ (str.to_re "5") (re.range "0" "5")))))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)