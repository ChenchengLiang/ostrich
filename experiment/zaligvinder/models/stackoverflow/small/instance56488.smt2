;test regex (?:Mo|Tu|We|Th|Fr|Sa|Su)+\s*[\d]{2}:[\d]{2}A?P?M\s*-\s*[\d]{2}:[\d]{2}A?P?M
(declare-const X String)
(assert (str.in_re X (re.++ (re.+ (re.union (re.union (re.union (re.union (re.union (re.union (re.++ (str.to_re "M") (str.to_re "o")) (re.++ (str.to_re "T") (str.to_re "u"))) (re.++ (str.to_re "W") (str.to_re "e"))) (re.++ (str.to_re "T") (str.to_re "h"))) (re.++ (str.to_re "F") (str.to_re "r"))) (re.++ (str.to_re "S") (str.to_re "a"))) (re.++ (str.to_re "S") (str.to_re "u")))) (re.++ (re.* (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.++ (str.to_re ":") (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.++ (re.opt (str.to_re "A")) (re.++ (re.opt (str.to_re "P")) (re.++ (str.to_re "M") (re.++ (re.* (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) (re.++ (str.to_re "-") (re.++ (re.* (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.++ (str.to_re ":") (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.++ (re.opt (str.to_re "A")) (re.++ (re.opt (str.to_re "P")) (str.to_re "M")))))))))))))))))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)