;test regex s/(<value>[^<]{1,6})[^<]*/$1/
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "s") (re.++ (str.to_re "/") (re.++ (re.++ (str.to_re "<") (re.++ (str.to_re "v") (re.++ (str.to_re "a") (re.++ (str.to_re "l") (re.++ (str.to_re "u") (re.++ (str.to_re "e") (re.++ (str.to_re ">") ((_ re.loop 1 6) (re.diff re.allchar (str.to_re "<")))))))))) (re.++ (re.* (re.diff re.allchar (str.to_re "<"))) (str.to_re "/"))))) (re.++ (str.to_re "") (re.++ (str.to_re "1") (str.to_re "/"))))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)