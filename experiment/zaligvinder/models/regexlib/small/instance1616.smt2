;test regex ^([0-9]?[0-9]?[0-9]?\\.)?(\\d{3})$*(,\\d{2})
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (re.opt (re.++ (re.opt (re.range "0" "9")) (re.++ (re.opt (re.range "0" "9")) (re.++ (re.opt (re.range "0" "9")) (re.++ (str.to_re "\\") (re.diff re.allchar (str.to_re "\n"))))))) (re.++ (str.to_re "\\") ((_ re.loop 3 3) (str.to_re "d"))))) (re.++ (re.* (str.to_re "")) (re.++ (str.to_re ",") (re.++ (str.to_re "\\") ((_ re.loop 2 2) (str.to_re "d"))))))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)