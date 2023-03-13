;test regex ifconfig -a | sed -r '/(eth[0-9]{1,2}:|eth100:|lo)/,/^$/d'
(declare-const X String)
(assert (str.in_re X (re.union (re.++ (str.to_re "i") (re.++ (str.to_re "f") (re.++ (str.to_re "c") (re.++ (str.to_re "o") (re.++ (str.to_re "n") (re.++ (str.to_re "f") (re.++ (str.to_re "i") (re.++ (str.to_re "g") (re.++ (str.to_re " ") (re.++ (str.to_re "-") (re.++ (str.to_re "a") (str.to_re " ")))))))))))) (re.++ (re.++ (re.++ (re.++ (str.to_re " ") (re.++ (str.to_re "s") (re.++ (str.to_re "e") (re.++ (str.to_re "d") (re.++ (str.to_re " ") (re.++ (str.to_re "-") (re.++ (str.to_re "r") (re.++ (str.to_re " ") (re.++ (str.to_re "\u{27}") (re.++ (str.to_re "/") (re.++ (re.union (re.union (re.++ (str.to_re "e") (re.++ (str.to_re "t") (re.++ (str.to_re "h") (re.++ ((_ re.loop 1 2) (re.range "0" "9")) (str.to_re ":"))))) (re.++ (str.to_re "e") (re.++ (str.to_re "t") (re.++ (str.to_re "h") (re.++ (str.to_re "100") (str.to_re ":")))))) (re.++ (str.to_re "l") (str.to_re "o"))) (str.to_re "/")))))))))))) (re.++ (str.to_re ",") (str.to_re "/"))) (str.to_re "")) (re.++ (str.to_re "") (re.++ (str.to_re "/") (re.++ (str.to_re "d") (str.to_re "\u{27}"))))))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)