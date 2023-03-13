;test regex Reg = /^https?\:\/\/(www\.|maps\.)?google(\.[a-z]+){1,2}\/maps\/?\?([^&]+&)*(ll=-?[0-9]{1,2}\.[0-9]+,-?[0-9]{1,2}\.[0-9]+|q=[^&]+)+($|&)/;
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "R") (re.++ (str.to_re "e") (re.++ (str.to_re "g") (re.++ (str.to_re " ") (re.++ (str.to_re "=") (re.++ (str.to_re " ") (str.to_re "/"))))))) (re.++ (str.to_re "") (re.++ (str.to_re "h") (re.++ (str.to_re "t") (re.++ (str.to_re "t") (re.++ (str.to_re "p") (re.++ (re.opt (str.to_re "s")) (re.++ (str.to_re ":") (re.++ (str.to_re "/") (re.++ (str.to_re "/") (re.++ (re.opt (re.union (re.++ (str.to_re "w") (re.++ (str.to_re "w") (re.++ (str.to_re "w") (str.to_re ".")))) (re.++ (str.to_re "m") (re.++ (str.to_re "a") (re.++ (str.to_re "p") (re.++ (str.to_re "s") (str.to_re "."))))))) (re.++ (str.to_re "g") (re.++ (str.to_re "o") (re.++ (str.to_re "o") (re.++ (str.to_re "g") (re.++ (str.to_re "l") (re.++ (str.to_re "e") (re.++ ((_ re.loop 1 2) (re.++ (str.to_re ".") (re.+ (re.range "a" "z")))) (re.++ (str.to_re "/") (re.++ (str.to_re "m") (re.++ (str.to_re "a") (re.++ (str.to_re "p") (re.++ (str.to_re "s") (re.++ (re.opt (str.to_re "/")) (re.++ (str.to_re "?") (re.++ (re.* (re.++ (re.+ (re.diff re.allchar (str.to_re "&"))) (str.to_re "&"))) (re.++ (re.+ (re.union (re.++ (re.++ (str.to_re "l") (re.++ (str.to_re "l") (re.++ (str.to_re "=") (re.++ (re.opt (str.to_re "-")) (re.++ ((_ re.loop 1 2) (re.range "0" "9")) (re.++ (str.to_re ".") (re.+ (re.range "0" "9")))))))) (re.++ (str.to_re ",") (re.++ (re.opt (str.to_re "-")) (re.++ ((_ re.loop 1 2) (re.range "0" "9")) (re.++ (str.to_re ".") (re.+ (re.range "0" "9"))))))) (re.++ (str.to_re "q") (re.++ (str.to_re "=") (re.+ (re.diff re.allchar (str.to_re "&"))))))) (re.++ (re.union (str.to_re "") (str.to_re "&")) (re.++ (str.to_re "/") (str.to_re ";"))))))))))))))))))))))))))))))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)