;test regex rewrite "^/products/([A-Z0-9]+)\%{0,1}.*$" /products.php?ids=$1 last;
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (re.++ (re.++ (str.to_re "r") (re.++ (str.to_re "e") (re.++ (str.to_re "w") (re.++ (str.to_re "r") (re.++ (str.to_re "i") (re.++ (str.to_re "t") (re.++ (str.to_re "e") (re.++ (str.to_re " ") (str.to_re "\u{22}"))))))))) (re.++ (str.to_re "") (re.++ (str.to_re "/") (re.++ (str.to_re "p") (re.++ (str.to_re "r") (re.++ (str.to_re "o") (re.++ (str.to_re "d") (re.++ (str.to_re "u") (re.++ (str.to_re "c") (re.++ (str.to_re "t") (re.++ (str.to_re "s") (re.++ (str.to_re "/") (re.++ (re.+ (re.union (re.range "A" "Z") (re.range "0" "9"))) (re.++ ((_ re.loop 0 1) (str.to_re "%")) (re.* (re.diff re.allchar (str.to_re "\n"))))))))))))))))) (re.++ (str.to_re "") (re.++ (str.to_re "\u{22}") (re.++ (str.to_re " ") (re.++ (str.to_re "/") (re.++ (str.to_re "p") (re.++ (str.to_re "r") (re.++ (str.to_re "o") (re.++ (str.to_re "d") (re.++ (str.to_re "u") (re.++ (str.to_re "c") (re.++ (str.to_re "t") (re.++ (str.to_re "s") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "p") (re.++ (str.to_re "h") (re.++ (re.opt (str.to_re "p")) (re.++ (str.to_re "i") (re.++ (str.to_re "d") (re.++ (str.to_re "s") (str.to_re "="))))))))))))))))))))) (re.++ (str.to_re "") (re.++ (str.to_re "1") (re.++ (str.to_re " ") (re.++ (str.to_re "l") (re.++ (str.to_re "a") (re.++ (str.to_re "s") (re.++ (str.to_re "t") (str.to_re ";")))))))))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)