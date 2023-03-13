;test regex [0-9]{0,2}([Jj]anuary | [Ff]ebruary | [Mm]arch | [Aa]pril | [Mm]ay | [Jj]une | [Jj]uly | [Aa]ugust | [Ss]eptember | [Oo]ctober | [Nn]ovember | [Dd]ecember ){0,1}[0-9]{4}
(declare-const X String)
(assert (str.in_re X (re.++ ((_ re.loop 0 2) (re.range "0" "9")) (re.++ ((_ re.loop 0 1) (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.++ (re.union (str.to_re "J") (str.to_re "j")) (re.++ (str.to_re "a") (re.++ (str.to_re "n") (re.++ (str.to_re "u") (re.++ (str.to_re "a") (re.++ (str.to_re "r") (re.++ (str.to_re "y") (str.to_re " ")))))))) (re.++ (str.to_re " ") (re.++ (re.union (str.to_re "F") (str.to_re "f")) (re.++ (str.to_re "e") (re.++ (str.to_re "b") (re.++ (str.to_re "r") (re.++ (str.to_re "u") (re.++ (str.to_re "a") (re.++ (str.to_re "r") (re.++ (str.to_re "y") (str.to_re " "))))))))))) (re.++ (str.to_re " ") (re.++ (re.union (str.to_re "M") (str.to_re "m")) (re.++ (str.to_re "a") (re.++ (str.to_re "r") (re.++ (str.to_re "c") (re.++ (str.to_re "h") (str.to_re " ")))))))) (re.++ (str.to_re " ") (re.++ (re.union (str.to_re "A") (str.to_re "a")) (re.++ (str.to_re "p") (re.++ (str.to_re "r") (re.++ (str.to_re "i") (re.++ (str.to_re "l") (str.to_re " ")))))))) (re.++ (str.to_re " ") (re.++ (re.union (str.to_re "M") (str.to_re "m")) (re.++ (str.to_re "a") (re.++ (str.to_re "y") (str.to_re " ")))))) (re.++ (str.to_re " ") (re.++ (re.union (str.to_re "J") (str.to_re "j")) (re.++ (str.to_re "u") (re.++ (str.to_re "n") (re.++ (str.to_re "e") (str.to_re " "))))))) (re.++ (str.to_re " ") (re.++ (re.union (str.to_re "J") (str.to_re "j")) (re.++ (str.to_re "u") (re.++ (str.to_re "l") (re.++ (str.to_re "y") (str.to_re " "))))))) (re.++ (str.to_re " ") (re.++ (re.union (str.to_re "A") (str.to_re "a")) (re.++ (str.to_re "u") (re.++ (str.to_re "g") (re.++ (str.to_re "u") (re.++ (str.to_re "s") (re.++ (str.to_re "t") (str.to_re " "))))))))) (re.++ (str.to_re " ") (re.++ (re.union (str.to_re "S") (str.to_re "s")) (re.++ (str.to_re "e") (re.++ (str.to_re "p") (re.++ (str.to_re "t") (re.++ (str.to_re "e") (re.++ (str.to_re "m") (re.++ (str.to_re "b") (re.++ (str.to_re "e") (re.++ (str.to_re "r") (str.to_re " ")))))))))))) (re.++ (str.to_re " ") (re.++ (re.union (str.to_re "O") (str.to_re "o")) (re.++ (str.to_re "c") (re.++ (str.to_re "t") (re.++ (str.to_re "o") (re.++ (str.to_re "b") (re.++ (str.to_re "e") (re.++ (str.to_re "r") (str.to_re " ")))))))))) (re.++ (str.to_re " ") (re.++ (re.union (str.to_re "N") (str.to_re "n")) (re.++ (str.to_re "o") (re.++ (str.to_re "v") (re.++ (str.to_re "e") (re.++ (str.to_re "m") (re.++ (str.to_re "b") (re.++ (str.to_re "e") (re.++ (str.to_re "r") (str.to_re " "))))))))))) (re.++ (str.to_re " ") (re.++ (re.union (str.to_re "D") (str.to_re "d")) (re.++ (str.to_re "e") (re.++ (str.to_re "c") (re.++ (str.to_re "e") (re.++ (str.to_re "m") (re.++ (str.to_re "b") (re.++ (str.to_re "e") (re.++ (str.to_re "r") (str.to_re " ")))))))))))) ((_ re.loop 4 4) (re.range "0" "9"))))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)