;test regex call['phone_number'] = call['activity'].str.extract('.*?(\(?\d{3}\D{0,3}\d{3}\D{0,3}\d{4}).*?')
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "c") (re.++ (str.to_re "a") (re.++ (str.to_re "l") (re.++ (str.to_re "l") (re.++ (re.union (str.to_re "\u{27}") (re.union (str.to_re "p") (re.union (str.to_re "h") (re.union (str.to_re "o") (re.union (str.to_re "n") (re.union (str.to_re "e") (re.union (str.to_re "_") (re.union (str.to_re "n") (re.union (str.to_re "u") (re.union (str.to_re "m") (re.union (str.to_re "b") (re.union (str.to_re "e") (re.union (str.to_re "r") (str.to_re "\u{27}")))))))))))))) (re.++ (str.to_re " ") (re.++ (str.to_re "=") (re.++ (str.to_re " ") (re.++ (str.to_re "c") (re.++ (str.to_re "a") (re.++ (str.to_re "l") (re.++ (str.to_re "l") (re.++ (re.union (str.to_re "\u{27}") (re.union (str.to_re "a") (re.union (str.to_re "c") (re.union (str.to_re "t") (re.union (str.to_re "i") (re.union (str.to_re "v") (re.union (str.to_re "i") (re.union (str.to_re "t") (re.union (str.to_re "y") (str.to_re "\u{27}")))))))))) (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "s") (re.++ (str.to_re "t") (re.++ (str.to_re "r") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "e") (re.++ (str.to_re "x") (re.++ (str.to_re "t") (re.++ (str.to_re "r") (re.++ (str.to_re "a") (re.++ (str.to_re "c") (re.++ (str.to_re "t") (re.++ (str.to_re "\u{27}") (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (re.++ (re.opt (str.to_re "(")) (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.++ ((_ re.loop 0 3) (re.diff re.allchar (re.range "0" "9"))) (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.++ ((_ re.loop 0 3) (re.diff re.allchar (re.range "0" "9"))) ((_ re.loop 4 4) (re.range "0" "9"))))))) (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (str.to_re "\u{27}"))))))))))))))))))))))))))))))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)