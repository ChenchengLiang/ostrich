;test regex (Password@(\d{2,6}))|(Pa\$\$w0rd@(\d{2,6}))|(Password#(\d{2,6}))|(Pa\$\$w0rd#(\d{2,6}))|(Password_(\d{2,6}))|(Pa\$\$w0rd_(\d{2,6})).$
(declare-const X String)
(assert (str.in_re X (re.union (re.union (re.union (re.union (re.union (re.++ (str.to_re "P") (re.++ (str.to_re "a") (re.++ (str.to_re "s") (re.++ (str.to_re "s") (re.++ (str.to_re "w") (re.++ (str.to_re "o") (re.++ (str.to_re "r") (re.++ (str.to_re "d") (re.++ (str.to_re "@") ((_ re.loop 2 6) (re.range "0" "9"))))))))))) (re.++ (str.to_re "P") (re.++ (str.to_re "a") (re.++ (str.to_re "$") (re.++ (str.to_re "$") (re.++ (str.to_re "w") (re.++ (str.to_re "0") (re.++ (str.to_re "r") (re.++ (str.to_re "d") (re.++ (str.to_re "@") ((_ re.loop 2 6) (re.range "0" "9")))))))))))) (re.++ (str.to_re "P") (re.++ (str.to_re "a") (re.++ (str.to_re "s") (re.++ (str.to_re "s") (re.++ (str.to_re "w") (re.++ (str.to_re "o") (re.++ (str.to_re "r") (re.++ (str.to_re "d") (re.++ (str.to_re "#") ((_ re.loop 2 6) (re.range "0" "9")))))))))))) (re.++ (str.to_re "P") (re.++ (str.to_re "a") (re.++ (str.to_re "$") (re.++ (str.to_re "$") (re.++ (str.to_re "w") (re.++ (str.to_re "0") (re.++ (str.to_re "r") (re.++ (str.to_re "d") (re.++ (str.to_re "#") ((_ re.loop 2 6) (re.range "0" "9")))))))))))) (re.++ (str.to_re "P") (re.++ (str.to_re "a") (re.++ (str.to_re "s") (re.++ (str.to_re "s") (re.++ (str.to_re "w") (re.++ (str.to_re "o") (re.++ (str.to_re "r") (re.++ (str.to_re "d") (re.++ (str.to_re "_") ((_ re.loop 2 6) (re.range "0" "9")))))))))))) (re.++ (re.++ (re.++ (str.to_re "P") (re.++ (str.to_re "a") (re.++ (str.to_re "$") (re.++ (str.to_re "$") (re.++ (str.to_re "w") (re.++ (str.to_re "0") (re.++ (str.to_re "r") (re.++ (str.to_re "d") (re.++ (str.to_re "_") ((_ re.loop 2 6) (re.range "0" "9"))))))))))) (re.diff re.allchar (str.to_re "\n"))) (str.to_re "")))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)