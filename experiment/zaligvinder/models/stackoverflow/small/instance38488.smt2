;test regex var stringVal = [4|4.6]^Size{1}~[6];
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "v") (re.++ (str.to_re "a") (re.++ (str.to_re "r") (re.++ (str.to_re " ") (re.++ (str.to_re "s") (re.++ (str.to_re "t") (re.++ (str.to_re "r") (re.++ (str.to_re "i") (re.++ (str.to_re "n") (re.++ (str.to_re "g") (re.++ (str.to_re "V") (re.++ (str.to_re "a") (re.++ (str.to_re "l") (re.++ (str.to_re " ") (re.++ (str.to_re "=") (re.++ (str.to_re " ") (re.union (str.to_re "4") (re.union (str.to_re "|") (re.union (str.to_re "4") (re.union (str.to_re ".") (str.to_re "6"))))))))))))))))))))) (re.++ (str.to_re "") (re.++ (str.to_re "S") (re.++ (str.to_re "i") (re.++ (str.to_re "z") (re.++ ((_ re.loop 1 1) (str.to_re "e")) (re.++ (str.to_re "~") (re.++ (str.to_re "6") (str.to_re ";")))))))))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)