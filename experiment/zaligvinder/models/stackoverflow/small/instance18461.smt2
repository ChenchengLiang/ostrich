;test regex (http(s)?:\/\/|(w){3}).*\.((?:mp4)|).*(youtu(be|.be))?(\.com)?\/.+
(declare-const X String)
(assert (str.in_re X (re.++ (re.union (re.++ (str.to_re "h") (re.++ (str.to_re "t") (re.++ (str.to_re "t") (re.++ (str.to_re "p") (re.++ (re.opt (str.to_re "s")) (re.++ (str.to_re ":") (re.++ (str.to_re "/") (str.to_re "/")))))))) ((_ re.loop 3 3) (str.to_re "w"))) (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re ".") (re.++ (re.union (re.++ (str.to_re "") (re.++ (str.to_re "m") (re.++ (str.to_re "p") (str.to_re "4")))) (str.to_re "")) (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (re.opt (re.++ (str.to_re "y") (re.++ (str.to_re "o") (re.++ (str.to_re "u") (re.++ (str.to_re "t") (re.++ (str.to_re "u") (re.union (re.++ (str.to_re "b") (str.to_re "e")) (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "b") (str.to_re "e")))))))))) (re.++ (re.opt (re.++ (str.to_re ".") (re.++ (str.to_re "c") (re.++ (str.to_re "o") (str.to_re "m"))))) (re.++ (str.to_re "/") (re.+ (re.diff re.allchar (str.to_re "\n")))))))))))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)