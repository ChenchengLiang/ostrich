;test regex (site1.com)\/blog\/\d{4}\/\d{2}\/\d{2}
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "s") (re.++ (str.to_re "i") (re.++ (str.to_re "t") (re.++ (str.to_re "e") (re.++ (str.to_re "1") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "c") (re.++ (str.to_re "o") (str.to_re "m"))))))))) (re.++ (str.to_re "/") (re.++ (str.to_re "b") (re.++ (str.to_re "l") (re.++ (str.to_re "o") (re.++ (str.to_re "g") (re.++ (str.to_re "/") (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.++ (str.to_re "/") (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.++ (str.to_re "/") ((_ re.loop 2 2) (re.range "0" "9")))))))))))))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)