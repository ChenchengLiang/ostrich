;test regex ((<iframe){1}(.+[^script]+[^onload]){1}(><\/iframe>){1}){1}
(declare-const X String)
(assert (str.in_re X ((_ re.loop 1 1) (re.++ ((_ re.loop 1 1) (re.++ (str.to_re "<") (re.++ (str.to_re "i") (re.++ (str.to_re "f") (re.++ (str.to_re "r") (re.++ (str.to_re "a") (re.++ (str.to_re "m") (str.to_re "e")))))))) (re.++ ((_ re.loop 1 1) (re.++ (re.+ (re.diff re.allchar (str.to_re "\n"))) (re.++ (re.+ (re.inter (re.diff re.allchar (str.to_re "s")) (re.inter (re.diff re.allchar (str.to_re "c")) (re.inter (re.diff re.allchar (str.to_re "r")) (re.inter (re.diff re.allchar (str.to_re "i")) (re.inter (re.diff re.allchar (str.to_re "p")) (re.diff re.allchar (str.to_re "t")))))))) (re.inter (re.diff re.allchar (str.to_re "o")) (re.inter (re.diff re.allchar (str.to_re "n")) (re.inter (re.diff re.allchar (str.to_re "l")) (re.inter (re.diff re.allchar (str.to_re "o")) (re.inter (re.diff re.allchar (str.to_re "a")) (re.diff re.allchar (str.to_re "d")))))))))) ((_ re.loop 1 1) (re.++ (str.to_re ">") (re.++ (str.to_re "<") (re.++ (str.to_re "/") (re.++ (str.to_re "i") (re.++ (str.to_re "f") (re.++ (str.to_re "r") (re.++ (str.to_re "a") (re.++ (str.to_re "m") (re.++ (str.to_re "e") (str.to_re ">"))))))))))))))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)