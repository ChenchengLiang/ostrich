;test regex gsub("(BB{1}.*%{1}), ","BB: no data, ",string)
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "g") (re.++ (str.to_re "s") (re.++ (str.to_re "u") (re.++ (str.to_re "b") (re.++ (re.++ (re.++ (re.++ (re.++ (str.to_re "\u{22}") (re.++ (str.to_re "B") (re.++ ((_ re.loop 1 1) (str.to_re "B")) (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) ((_ re.loop 1 1) (str.to_re "%")))))) (re.++ (str.to_re ",") (re.++ (str.to_re " ") (str.to_re "\u{22}")))) (re.++ (str.to_re ",") (re.++ (str.to_re "\u{22}") (re.++ (str.to_re "B") (re.++ (str.to_re "B") (re.++ (str.to_re ":") (re.++ (str.to_re " ") (re.++ (str.to_re "n") (re.++ (str.to_re "o") (re.++ (str.to_re " ") (re.++ (str.to_re "d") (re.++ (str.to_re "a") (re.++ (str.to_re "t") (str.to_re "a")))))))))))))) (re.++ (str.to_re ",") (re.++ (str.to_re " ") (str.to_re "\u{22}")))) (re.++ (str.to_re ",") (re.++ (str.to_re "s") (re.++ (str.to_re "t") (re.++ (str.to_re "r") (re.++ (str.to_re "i") (re.++ (str.to_re "n") (str.to_re "g"))))))))))))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)