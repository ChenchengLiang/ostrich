;test regex ^[abceghjklmnprstvxyABCEGHJKLMNPRSTVXY][0-9][abceghjklmnprstvwxyzABCEGHJKLMNPRSTVWXYZ] {0,1}[0-9][abceghjklmnprstvwxyzABCEGHJKLMNPRSTVWXYZ][0-9]$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (re.union (str.to_re "a") (re.union (str.to_re "b") (re.union (str.to_re "c") (re.union (str.to_re "e") (re.union (str.to_re "g") (re.union (str.to_re "h") (re.union (str.to_re "j") (re.union (str.to_re "k") (re.union (str.to_re "l") (re.union (str.to_re "m") (re.union (str.to_re "n") (re.union (str.to_re "p") (re.union (str.to_re "r") (re.union (str.to_re "s") (re.union (str.to_re "t") (re.union (str.to_re "v") (re.union (str.to_re "x") (re.union (str.to_re "y") (re.union (str.to_re "A") (re.union (str.to_re "B") (re.union (str.to_re "C") (re.union (str.to_re "E") (re.union (str.to_re "G") (re.union (str.to_re "H") (re.union (str.to_re "J") (re.union (str.to_re "K") (re.union (str.to_re "L") (re.union (str.to_re "M") (re.union (str.to_re "N") (re.union (str.to_re "P") (re.union (str.to_re "R") (re.union (str.to_re "S") (re.union (str.to_re "T") (re.union (str.to_re "V") (re.union (str.to_re "X") (str.to_re "Y")))))))))))))))))))))))))))))))))))) (re.++ (re.range "0" "9") (re.++ (re.union (str.to_re "a") (re.union (str.to_re "b") (re.union (str.to_re "c") (re.union (str.to_re "e") (re.union (str.to_re "g") (re.union (str.to_re "h") (re.union (str.to_re "j") (re.union (str.to_re "k") (re.union (str.to_re "l") (re.union (str.to_re "m") (re.union (str.to_re "n") (re.union (str.to_re "p") (re.union (str.to_re "r") (re.union (str.to_re "s") (re.union (str.to_re "t") (re.union (str.to_re "v") (re.union (str.to_re "w") (re.union (str.to_re "x") (re.union (str.to_re "y") (re.union (str.to_re "z") (re.union (str.to_re "A") (re.union (str.to_re "B") (re.union (str.to_re "C") (re.union (str.to_re "E") (re.union (str.to_re "G") (re.union (str.to_re "H") (re.union (str.to_re "J") (re.union (str.to_re "K") (re.union (str.to_re "L") (re.union (str.to_re "M") (re.union (str.to_re "N") (re.union (str.to_re "P") (re.union (str.to_re "R") (re.union (str.to_re "S") (re.union (str.to_re "T") (re.union (str.to_re "V") (re.union (str.to_re "W") (re.union (str.to_re "X") (re.union (str.to_re "Y") (str.to_re "Z")))))))))))))))))))))))))))))))))))))))) (re.++ ((_ re.loop 0 1) (str.to_re " ")) (re.++ (re.range "0" "9") (re.++ (re.union (str.to_re "a") (re.union (str.to_re "b") (re.union (str.to_re "c") (re.union (str.to_re "e") (re.union (str.to_re "g") (re.union (str.to_re "h") (re.union (str.to_re "j") (re.union (str.to_re "k") (re.union (str.to_re "l") (re.union (str.to_re "m") (re.union (str.to_re "n") (re.union (str.to_re "p") (re.union (str.to_re "r") (re.union (str.to_re "s") (re.union (str.to_re "t") (re.union (str.to_re "v") (re.union (str.to_re "w") (re.union (str.to_re "x") (re.union (str.to_re "y") (re.union (str.to_re "z") (re.union (str.to_re "A") (re.union (str.to_re "B") (re.union (str.to_re "C") (re.union (str.to_re "E") (re.union (str.to_re "G") (re.union (str.to_re "H") (re.union (str.to_re "J") (re.union (str.to_re "K") (re.union (str.to_re "L") (re.union (str.to_re "M") (re.union (str.to_re "N") (re.union (str.to_re "P") (re.union (str.to_re "R") (re.union (str.to_re "S") (re.union (str.to_re "T") (re.union (str.to_re "V") (re.union (str.to_re "W") (re.union (str.to_re "X") (re.union (str.to_re "Y") (str.to_re "Z")))))))))))))))))))))))))))))))))))))))) (re.range "0" "9")))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)