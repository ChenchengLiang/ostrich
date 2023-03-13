;test regex var urlregex = /^((https?:\/\/)?((([a-z\d])+(\-)?([a-z\d])+)+)(\.([a-z\d])+(\-)?([az\d])+)?)(\.[a-z]{2,4}?){1,2}$/i;
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (re.++ (str.to_re "v") (re.++ (str.to_re "a") (re.++ (str.to_re "r") (re.++ (str.to_re " ") (re.++ (str.to_re "u") (re.++ (str.to_re "r") (re.++ (str.to_re "l") (re.++ (str.to_re "r") (re.++ (str.to_re "e") (re.++ (str.to_re "g") (re.++ (str.to_re "e") (re.++ (str.to_re "x") (re.++ (str.to_re " ") (re.++ (str.to_re "=") (re.++ (str.to_re " ") (str.to_re "/")))))))))))))))) (re.++ (str.to_re "") (re.++ (re.++ (re.opt (re.++ (str.to_re "h") (re.++ (str.to_re "t") (re.++ (str.to_re "t") (re.++ (str.to_re "p") (re.++ (re.opt (str.to_re "s")) (re.++ (str.to_re ":") (re.++ (str.to_re "/") (str.to_re "/"))))))))) (re.++ (re.+ (re.++ (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (re.++ (re.opt (str.to_re "-")) (re.+ (re.union (re.range "a" "z") (re.range "0" "9")))))) (re.opt (re.++ (str.to_re ".") (re.++ (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (re.++ (re.opt (str.to_re "-")) (re.+ (re.union (str.to_re "a") (re.union (str.to_re "z") (re.range "0" "9")))))))))) ((_ re.loop 1 2) (re.++ (str.to_re ".") ((_ re.loop 2 4) (re.range "a" "z"))))))) (re.++ (str.to_re "") (re.++ (str.to_re "/") (re.++ (str.to_re "i") (str.to_re ";")))))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)