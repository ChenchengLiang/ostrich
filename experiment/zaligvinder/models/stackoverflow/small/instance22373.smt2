;test regex ^(?:January|February|March|April|May|June|July|August|September|October|Novermber|December)\s+([0-2][1-9]|3[0-1]|[1-9]|),\s*[1-2]\d{3}\s+[0-1][0-2]:[0-5][0-9]\s*[ap]m\s*$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (re.++ (str.to_re "") (re.++ (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.++ (str.to_re "J") (re.++ (str.to_re "a") (re.++ (str.to_re "n") (re.++ (str.to_re "u") (re.++ (str.to_re "a") (re.++ (str.to_re "r") (str.to_re "y"))))))) (re.++ (str.to_re "F") (re.++ (str.to_re "e") (re.++ (str.to_re "b") (re.++ (str.to_re "r") (re.++ (str.to_re "u") (re.++ (str.to_re "a") (re.++ (str.to_re "r") (str.to_re "y"))))))))) (re.++ (str.to_re "M") (re.++ (str.to_re "a") (re.++ (str.to_re "r") (re.++ (str.to_re "c") (str.to_re "h")))))) (re.++ (str.to_re "A") (re.++ (str.to_re "p") (re.++ (str.to_re "r") (re.++ (str.to_re "i") (str.to_re "l")))))) (re.++ (str.to_re "M") (re.++ (str.to_re "a") (str.to_re "y")))) (re.++ (str.to_re "J") (re.++ (str.to_re "u") (re.++ (str.to_re "n") (str.to_re "e"))))) (re.++ (str.to_re "J") (re.++ (str.to_re "u") (re.++ (str.to_re "l") (str.to_re "y"))))) (re.++ (str.to_re "A") (re.++ (str.to_re "u") (re.++ (str.to_re "g") (re.++ (str.to_re "u") (re.++ (str.to_re "s") (str.to_re "t"))))))) (re.++ (str.to_re "S") (re.++ (str.to_re "e") (re.++ (str.to_re "p") (re.++ (str.to_re "t") (re.++ (str.to_re "e") (re.++ (str.to_re "m") (re.++ (str.to_re "b") (re.++ (str.to_re "e") (str.to_re "r")))))))))) (re.++ (str.to_re "O") (re.++ (str.to_re "c") (re.++ (str.to_re "t") (re.++ (str.to_re "o") (re.++ (str.to_re "b") (re.++ (str.to_re "e") (str.to_re "r")))))))) (re.++ (str.to_re "N") (re.++ (str.to_re "o") (re.++ (str.to_re "v") (re.++ (str.to_re "e") (re.++ (str.to_re "r") (re.++ (str.to_re "m") (re.++ (str.to_re "b") (re.++ (str.to_re "e") (str.to_re "r")))))))))) (re.++ (str.to_re "D") (re.++ (str.to_re "e") (re.++ (str.to_re "c") (re.++ (str.to_re "e") (re.++ (str.to_re "m") (re.++ (str.to_re "b") (re.++ (str.to_re "e") (str.to_re "r"))))))))) (re.++ (re.+ (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) (re.union (re.++ (str.to_re "") (re.union (re.union (re.++ (re.range "0" "2") (re.range "1" "9")) (re.++ (str.to_re "3") (re.range "0" "1"))) (re.range "1" "9"))) (str.to_re ""))))) (re.++ (str.to_re ",") (re.++ (re.* (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) (re.++ (re.range "1" "2") (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.++ (re.+ (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) (re.++ (re.range "0" "1") (re.++ (re.range "0" "2") (re.++ (str.to_re ":") (re.++ (re.range "0" "5") (re.++ (re.range "0" "9") (re.++ (re.* (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) (re.++ (re.union (str.to_re "a") (str.to_re "p")) (re.++ (str.to_re "m") (re.* (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))))))))))))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)