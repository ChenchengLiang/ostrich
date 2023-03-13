;test regex "#([SpecialWthrmn ]{25})\s([A-Za-z ]{25,})\s([0-9]{1,2})([0-9]{2}) ([A-Z]{2}) ([A-Z]{3}) ([A-Z]{3}) ([A-Z]{3}) ([0-9]{1,2}) ([0-9]{4})"
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "\u{22}") (re.++ (str.to_re "#") (re.++ ((_ re.loop 25 25) (re.union (str.to_re "S") (re.union (str.to_re "p") (re.union (str.to_re "e") (re.union (str.to_re "c") (re.union (str.to_re "i") (re.union (str.to_re "a") (re.union (str.to_re "l") (re.union (str.to_re "W") (re.union (str.to_re "t") (re.union (str.to_re "h") (re.union (str.to_re "r") (re.union (str.to_re "m") (re.union (str.to_re "n") (str.to_re " "))))))))))))))) (re.++ (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}")))))) (re.++ (re.++ (re.* (re.union (re.range "A" "Z") (re.union (re.range "a" "z") (str.to_re " ")))) ((_ re.loop 25 25) (re.union (re.range "A" "Z") (re.union (re.range "a" "z") (str.to_re " "))))) (re.++ (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}")))))) (re.++ ((_ re.loop 1 2) (re.range "0" "9")) (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.++ (str.to_re " ") (re.++ ((_ re.loop 2 2) (re.range "A" "Z")) (re.++ (str.to_re " ") (re.++ ((_ re.loop 3 3) (re.range "A" "Z")) (re.++ (str.to_re " ") (re.++ ((_ re.loop 3 3) (re.range "A" "Z")) (re.++ (str.to_re " ") (re.++ ((_ re.loop 3 3) (re.range "A" "Z")) (re.++ (str.to_re " ") (re.++ ((_ re.loop 1 2) (re.range "0" "9")) (re.++ (str.to_re " ") (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (str.to_re "\u{22}")))))))))))))))))))))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)