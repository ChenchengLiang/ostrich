;test regex [0-9]{2}-?[DF][A-Z]{2}-?[0-9]{1}|[DF][A-Z]{1}-?[0-9]{3}-?[A-Z]{1}|[DF]-?[0-9]{3}-?[A-Z]{2}|[DF][A-Z]{2}-?[0-9]{2}-?[A-Z]{1}$
(declare-const X String)
(assert (str.in_re X (re.union (re.union (re.union (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.++ (re.opt (str.to_re "-")) (re.++ (re.union (str.to_re "D") (str.to_re "F")) (re.++ ((_ re.loop 2 2) (re.range "A" "Z")) (re.++ (re.opt (str.to_re "-")) ((_ re.loop 1 1) (re.range "0" "9"))))))) (re.++ (re.union (str.to_re "D") (str.to_re "F")) (re.++ ((_ re.loop 1 1) (re.range "A" "Z")) (re.++ (re.opt (str.to_re "-")) (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.++ (re.opt (str.to_re "-")) ((_ re.loop 1 1) (re.range "A" "Z")))))))) (re.++ (re.union (str.to_re "D") (str.to_re "F")) (re.++ (re.opt (str.to_re "-")) (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.++ (re.opt (str.to_re "-")) ((_ re.loop 2 2) (re.range "A" "Z"))))))) (re.++ (re.++ (re.union (str.to_re "D") (str.to_re "F")) (re.++ ((_ re.loop 2 2) (re.range "A" "Z")) (re.++ (re.opt (str.to_re "-")) (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.++ (re.opt (str.to_re "-")) ((_ re.loop 1 1) (re.range "A" "Z"))))))) (str.to_re "")))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)