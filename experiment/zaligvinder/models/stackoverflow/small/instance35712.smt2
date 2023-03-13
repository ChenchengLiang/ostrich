;test regex ^100(?:\.00?)?$|^(?:\d{1,2})?(?:\.(?:1|11|10|0\d?))?$
(declare-const X String)
(assert (str.in_re X (re.union (re.++ (re.++ (str.to_re "") (re.++ (str.to_re "100") (re.opt (re.++ (str.to_re ".") (re.opt (str.to_re "00")))))) (str.to_re "")) (re.++ (re.++ (str.to_re "") (re.++ (re.opt ((_ re.loop 1 2) (re.range "0" "9"))) (re.opt (re.++ (str.to_re ".") (re.union (re.union (re.union (str.to_re "1") (str.to_re "11")) (str.to_re "10")) (re.++ (str.to_re "0") (re.opt (re.range "0" "9")))))))) (str.to_re "")))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)