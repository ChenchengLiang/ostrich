;test regex RewriteRule ^/?product/([0-9]{2})([0-9]{4})([0-9]{2})/? /product.php?id=$1-$2.$3 [L]
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (re.++ (re.++ (re.++ (str.to_re "R") (re.++ (str.to_re "e") (re.++ (str.to_re "w") (re.++ (str.to_re "r") (re.++ (str.to_re "i") (re.++ (str.to_re "t") (re.++ (str.to_re "e") (re.++ (str.to_re "R") (re.++ (str.to_re "u") (re.++ (str.to_re "l") (re.++ (str.to_re "e") (str.to_re " ")))))))))))) (re.++ (str.to_re "") (re.++ (re.opt (str.to_re "/")) (re.++ (str.to_re "p") (re.++ (str.to_re "r") (re.++ (str.to_re "o") (re.++ (str.to_re "d") (re.++ (str.to_re "u") (re.++ (str.to_re "c") (re.++ (str.to_re "t") (re.++ (str.to_re "/") (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.++ (re.opt (str.to_re "/")) (re.++ (str.to_re " ") (re.++ (str.to_re "/") (re.++ (str.to_re "p") (re.++ (str.to_re "r") (re.++ (str.to_re "o") (re.++ (str.to_re "d") (re.++ (str.to_re "u") (re.++ (str.to_re "c") (re.++ (str.to_re "t") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "p") (re.++ (str.to_re "h") (re.++ (re.opt (str.to_re "p")) (re.++ (str.to_re "i") (re.++ (str.to_re "d") (str.to_re "="))))))))))))))))))))))))))))))) (re.++ (str.to_re "") (re.++ (str.to_re "1") (str.to_re "-")))) (re.++ (str.to_re "") (re.++ (str.to_re "2") (re.diff re.allchar (str.to_re "\n"))))) (re.++ (str.to_re "") (re.++ (str.to_re "3") (re.++ (str.to_re " ") (str.to_re "L")))))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)