(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; ^[abceghjklmnprstvxyABCEGHJKLMNPRSTVXY][0-9][abceghjklmnprstvwxyzABCEGHJKLMNPRSTVWXYZ] {0,1}[0-9][abceghjklmnprstvwxyzABCEGHJKLMNPRSTVWXYZ][0-9]$
(assert (str.in_re X (re.++ (re.union (str.to_re "a") (str.to_re "b") (str.to_re "c") (str.to_re "e") (str.to_re "g") (str.to_re "h") (str.to_re "j") (str.to_re "k") (str.to_re "l") (str.to_re "m") (str.to_re "n") (str.to_re "p") (str.to_re "r") (str.to_re "s") (str.to_re "t") (str.to_re "v") (str.to_re "x") (str.to_re "y") (str.to_re "A") (str.to_re "B") (str.to_re "C") (str.to_re "E") (str.to_re "G") (str.to_re "H") (str.to_re "J") (str.to_re "K") (str.to_re "L") (str.to_re "M") (str.to_re "N") (str.to_re "P") (str.to_re "R") (str.to_re "S") (str.to_re "T") (str.to_re "V") (str.to_re "X") (str.to_re "Y")) (re.range "0" "9") (re.union (str.to_re "a") (str.to_re "b") (str.to_re "c") (str.to_re "e") (str.to_re "g") (str.to_re "h") (str.to_re "j") (str.to_re "k") (str.to_re "l") (str.to_re "m") (str.to_re "n") (str.to_re "p") (str.to_re "r") (str.to_re "s") (str.to_re "t") (str.to_re "v") (str.to_re "w") (str.to_re "x") (str.to_re "y") (str.to_re "z") (str.to_re "A") (str.to_re "B") (str.to_re "C") (str.to_re "E") (str.to_re "G") (str.to_re "H") (str.to_re "J") (str.to_re "K") (str.to_re "L") (str.to_re "M") (str.to_re "N") (str.to_re "P") (str.to_re "R") (str.to_re "S") (str.to_re "T") (str.to_re "V") (str.to_re "W") (str.to_re "X") (str.to_re "Y") (str.to_re "Z")) (re.opt (str.to_re " ")) (re.range "0" "9") (re.union (str.to_re "a") (str.to_re "b") (str.to_re "c") (str.to_re "e") (str.to_re "g") (str.to_re "h") (str.to_re "j") (str.to_re "k") (str.to_re "l") (str.to_re "m") (str.to_re "n") (str.to_re "p") (str.to_re "r") (str.to_re "s") (str.to_re "t") (str.to_re "v") (str.to_re "w") (str.to_re "x") (str.to_re "y") (str.to_re "z") (str.to_re "A") (str.to_re "B") (str.to_re "C") (str.to_re "E") (str.to_re "G") (str.to_re "H") (str.to_re "J") (str.to_re "K") (str.to_re "L") (str.to_re "M") (str.to_re "N") (str.to_re "P") (str.to_re "R") (str.to_re "S") (str.to_re "T") (str.to_re "V") (str.to_re "W") (str.to_re "X") (str.to_re "Y") (str.to_re "Z")) (re.range "0" "9") (str.to_re "\u{0a}"))))
; ^([A-HK-PRSVWY][A-HJ-PR-Y])\s?([0][2-9]|[1-9][0-9])\s?[A-HJ-PR-Z]{3}$
(assert (not (str.in_re X (re.++ (re.opt (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (re.union (re.++ (str.to_re "0") (re.range "2" "9")) (re.++ (re.range "1" "9") (re.range "0" "9"))) (re.opt (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) ((_ re.loop 3 3) (re.union (re.range "A" "H") (re.range "J" "P") (re.range "R" "Z"))) (str.to_re "\u{0a}") (re.union (re.range "A" "H") (re.range "K" "P") (str.to_re "R") (str.to_re "S") (str.to_re "V") (str.to_re "W") (str.to_re "Y")) (re.union (re.range "A" "H") (re.range "J" "P") (re.range "R" "Y"))))))
; ^(^N[BLSTU]$)|(^[AMN]B$)|(^[BQ]C$)|(^ON$)|(^PE$)|(^SK$)$
(assert (str.in_re X (re.union (re.++ (str.to_re "N") (re.union (str.to_re "B") (str.to_re "L") (str.to_re "S") (str.to_re "T") (str.to_re "U"))) (re.++ (re.union (str.to_re "A") (str.to_re "M") (str.to_re "N")) (str.to_re "B")) (re.++ (re.union (str.to_re "B") (str.to_re "Q")) (str.to_re "C")) (str.to_re "ON") (str.to_re "PE") (str.to_re "SK\u{0a}"))))
; Host\x3A\s+\.ico\s+Host\x3Aorigin\x3Dsidefind
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re ".ico") (re.+ (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re "Host:origin=sidefind\u{0a}"))))
; ^ *(([\.\-\+\w]{2,}[a-z0-9])@([\.\-\w]+[a-z0-9])\.([a-z]{2,3})) *(; *(([\.\-\+\w]{2,}[a-z0-9])@([\.\-\w]+[a-z0-9])\.([a-z]{2,3})) *)* *$
(assert (not (str.in_re X (re.++ (re.* (str.to_re " ")) (re.* (str.to_re " ")) (re.* (re.++ (str.to_re ";") (re.* (str.to_re " ")) (re.* (str.to_re " ")) (str.to_re "@.") ((_ re.loop 2 3) (re.range "a" "z")) (re.union (re.range "a" "z") (re.range "0" "9")) ((_ re.loop 2 2) (re.union (str.to_re ".") (str.to_re "-") (str.to_re "+") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.* (re.union (str.to_re ".") (str.to_re "-") (str.to_re "+") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.+ (re.union (str.to_re ".") (str.to_re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.union (re.range "a" "z") (re.range "0" "9")))) (re.* (str.to_re " ")) (str.to_re "\u{0a}@.") ((_ re.loop 2 3) (re.range "a" "z")) (re.union (re.range "a" "z") (re.range "0" "9")) ((_ re.loop 2 2) (re.union (str.to_re ".") (str.to_re "-") (str.to_re "+") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.* (re.union (str.to_re ".") (str.to_re "-") (str.to_re "+") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.+ (re.union (str.to_re ".") (str.to_re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.union (re.range "a" "z") (re.range "0" "9"))))))
(check-sat)
