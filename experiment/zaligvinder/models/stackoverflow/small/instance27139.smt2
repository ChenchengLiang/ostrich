;test regex regexp_like(col, '^\D*(\d\D*){10}$') and length(col) > 10
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "r") (re.++ (str.to_re "e") (re.++ (str.to_re "g") (re.++ (str.to_re "e") (re.++ (str.to_re "x") (re.++ (str.to_re "p") (re.++ (str.to_re "_") (re.++ (str.to_re "l") (re.++ (str.to_re "i") (re.++ (str.to_re "k") (re.++ (str.to_re "e") (re.++ (re.++ (re.++ (re.++ (re.++ (str.to_re "c") (re.++ (str.to_re "o") (str.to_re "l"))) (re.++ (str.to_re ",") (re.++ (str.to_re " ") (str.to_re "\u{27}")))) (re.++ (str.to_re "") (re.++ (re.* (re.diff re.allchar (re.range "0" "9"))) ((_ re.loop 10 10) (re.++ (re.range "0" "9") (re.* (re.diff re.allchar (re.range "0" "9")))))))) (re.++ (str.to_re "") (str.to_re "\u{27}"))) (re.++ (str.to_re " ") (re.++ (str.to_re "a") (re.++ (str.to_re "n") (re.++ (str.to_re "d") (re.++ (str.to_re " ") (re.++ (str.to_re "l") (re.++ (str.to_re "e") (re.++ (str.to_re "n") (re.++ (str.to_re "g") (re.++ (str.to_re "t") (re.++ (str.to_re "h") (re.++ (re.++ (str.to_re "c") (re.++ (str.to_re "o") (str.to_re "l"))) (re.++ (str.to_re " ") (re.++ (str.to_re ">") (re.++ (str.to_re " ") (str.to_re "10"))))))))))))))))))))))))))))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)