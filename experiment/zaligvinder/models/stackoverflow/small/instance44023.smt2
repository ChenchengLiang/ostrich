;test regex .*(header_\d*_).*(_.*_.{8}).*(\.\w{3,4})?.*
(declare-const X String)
(assert (str.in_re X (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (re.++ (str.to_re "h") (re.++ (str.to_re "e") (re.++ (str.to_re "a") (re.++ (str.to_re "d") (re.++ (str.to_re "e") (re.++ (str.to_re "r") (re.++ (str.to_re "_") (re.++ (re.* (re.range "0" "9")) (str.to_re "_"))))))))) (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (re.++ (str.to_re "_") (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "_") ((_ re.loop 8 8) (re.diff re.allchar (str.to_re "\n")))))) (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (re.opt (re.++ (str.to_re ".") ((_ re.loop 3 4) (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_"))))))) (re.* (re.diff re.allchar (str.to_re "\n")))))))))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)