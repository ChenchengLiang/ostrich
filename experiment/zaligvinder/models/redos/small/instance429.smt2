;test regex ^Apache-Session-([a-z0-9]{32})\.lock$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (str.to_re "A") (re.++ (str.to_re "p") (re.++ (str.to_re "a") (re.++ (str.to_re "c") (re.++ (str.to_re "h") (re.++ (str.to_re "e") (re.++ (str.to_re "-") (re.++ (str.to_re "S") (re.++ (str.to_re "e") (re.++ (str.to_re "s") (re.++ (str.to_re "s") (re.++ (str.to_re "i") (re.++ (str.to_re "o") (re.++ (str.to_re "n") (re.++ (str.to_re "-") (re.++ ((_ re.loop 32 32) (re.union (re.range "a" "z") (re.range "0" "9"))) (re.++ (str.to_re ".") (re.++ (str.to_re "l") (re.++ (str.to_re "o") (re.++ (str.to_re "c") (str.to_re "k")))))))))))))))))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)