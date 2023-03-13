;test regex server_name ~^(my[.]domain[.]com)\/(unsafe)\/([0-9]{0,4})x([0-9]{0,4})\/((ch)|[a-z0-9]{0,32})\/(([3_]+[a-z0-9]{0,32}\.jpg)|([c_1_]+[a-z0-9]{0,32}\.jpg)|([a-z0-9]{0,32}\.jpg)|(fb\/[0-9]{0,6}.jpg)|([a-z0-9]{0,6}\/[0-9]{0,6}.jpg));
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "s") (re.++ (str.to_re "e") (re.++ (str.to_re "r") (re.++ (str.to_re "v") (re.++ (str.to_re "e") (re.++ (str.to_re "r") (re.++ (str.to_re "_") (re.++ (str.to_re "n") (re.++ (str.to_re "a") (re.++ (str.to_re "m") (re.++ (str.to_re "e") (re.++ (str.to_re " ") (str.to_re "~"))))))))))))) (re.++ (str.to_re "") (re.++ (re.++ (str.to_re "m") (re.++ (str.to_re "y") (re.++ (str.to_re ".") (re.++ (str.to_re "d") (re.++ (str.to_re "o") (re.++ (str.to_re "m") (re.++ (str.to_re "a") (re.++ (str.to_re "i") (re.++ (str.to_re "n") (re.++ (str.to_re ".") (re.++ (str.to_re "c") (re.++ (str.to_re "o") (str.to_re "m"))))))))))))) (re.++ (str.to_re "/") (re.++ (re.++ (str.to_re "u") (re.++ (str.to_re "n") (re.++ (str.to_re "s") (re.++ (str.to_re "a") (re.++ (str.to_re "f") (str.to_re "e")))))) (re.++ (str.to_re "/") (re.++ ((_ re.loop 0 4) (re.range "0" "9")) (re.++ (str.to_re "x") (re.++ ((_ re.loop 0 4) (re.range "0" "9")) (re.++ (str.to_re "/") (re.++ (re.union (re.++ (str.to_re "c") (str.to_re "h")) ((_ re.loop 0 32) (re.union (re.range "a" "z") (re.range "0" "9")))) (re.++ (str.to_re "/") (re.++ (re.union (re.union (re.union (re.union (re.++ (re.+ (re.union (str.to_re "3") (str.to_re "_"))) (re.++ ((_ re.loop 0 32) (re.union (re.range "a" "z") (re.range "0" "9"))) (re.++ (str.to_re ".") (re.++ (str.to_re "j") (re.++ (str.to_re "p") (str.to_re "g")))))) (re.++ (re.+ (re.union (str.to_re "c") (re.union (str.to_re "_") (re.union (str.to_re "1") (str.to_re "_"))))) (re.++ ((_ re.loop 0 32) (re.union (re.range "a" "z") (re.range "0" "9"))) (re.++ (str.to_re ".") (re.++ (str.to_re "j") (re.++ (str.to_re "p") (str.to_re "g"))))))) (re.++ ((_ re.loop 0 32) (re.union (re.range "a" "z") (re.range "0" "9"))) (re.++ (str.to_re ".") (re.++ (str.to_re "j") (re.++ (str.to_re "p") (str.to_re "g")))))) (re.++ (str.to_re "f") (re.++ (str.to_re "b") (re.++ (str.to_re "/") (re.++ ((_ re.loop 0 6) (re.range "0" "9")) (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "j") (re.++ (str.to_re "p") (str.to_re "g"))))))))) (re.++ ((_ re.loop 0 6) (re.union (re.range "a" "z") (re.range "0" "9"))) (re.++ (str.to_re "/") (re.++ ((_ re.loop 0 6) (re.range "0" "9")) (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "j") (re.++ (str.to_re "p") (str.to_re "g")))))))) (str.to_re ";"))))))))))))))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)