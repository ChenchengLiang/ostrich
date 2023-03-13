;test regex parsley-regexp="^\$?[0-9][0-9\,]*(\.\d{1,2})?$|^\$?[\.]([\d][\d]?)$"
(declare-const X String)
(assert (str.in_re X (re.union (re.++ (re.++ (re.++ (str.to_re "p") (re.++ (str.to_re "a") (re.++ (str.to_re "r") (re.++ (str.to_re "s") (re.++ (str.to_re "l") (re.++ (str.to_re "e") (re.++ (str.to_re "y") (re.++ (str.to_re "-") (re.++ (str.to_re "r") (re.++ (str.to_re "e") (re.++ (str.to_re "g") (re.++ (str.to_re "e") (re.++ (str.to_re "x") (re.++ (str.to_re "p") (re.++ (str.to_re "=") (str.to_re "\u{22}")))))))))))))))) (re.++ (str.to_re "") (re.++ (re.opt (str.to_re "$")) (re.++ (re.range "0" "9") (re.++ (re.* (re.union (re.range "0" "9") (str.to_re ","))) (re.opt (re.++ (str.to_re ".") ((_ re.loop 1 2) (re.range "0" "9"))))))))) (str.to_re "")) (re.++ (re.++ (str.to_re "") (re.++ (re.opt (str.to_re "$")) (re.++ (str.to_re ".") (re.++ (re.range "0" "9") (re.opt (re.range "0" "9")))))) (re.++ (str.to_re "") (str.to_re "\u{22}"))))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)