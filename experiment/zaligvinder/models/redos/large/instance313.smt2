;test regex discord(?:app\.com\/invite|\.gg(?:\/invite)?)\/([\w-]{2,255})
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "d") (re.++ (str.to_re "i") (re.++ (str.to_re "s") (re.++ (str.to_re "c") (re.++ (str.to_re "o") (re.++ (str.to_re "r") (re.++ (str.to_re "d") (re.++ (re.union (re.++ (str.to_re "a") (re.++ (str.to_re "p") (re.++ (str.to_re "p") (re.++ (str.to_re ".") (re.++ (str.to_re "c") (re.++ (str.to_re "o") (re.++ (str.to_re "m") (re.++ (str.to_re "/") (re.++ (str.to_re "i") (re.++ (str.to_re "n") (re.++ (str.to_re "v") (re.++ (str.to_re "i") (re.++ (str.to_re "t") (str.to_re "e")))))))))))))) (re.++ (str.to_re ".") (re.++ (str.to_re "g") (re.++ (str.to_re "g") (re.opt (re.++ (str.to_re "/") (re.++ (str.to_re "i") (re.++ (str.to_re "n") (re.++ (str.to_re "v") (re.++ (str.to_re "i") (re.++ (str.to_re "t") (str.to_re "e")))))))))))) (re.++ (str.to_re "/") ((_ re.loop 2 255) (re.union (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_")))) (str.to_re "-"))))))))))))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 50 (str.len X)))
(check-sat)
(get-model)