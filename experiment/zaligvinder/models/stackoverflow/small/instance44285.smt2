;test regex (On\s+(?:Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec)\s+\d{1,2},\s+[12]\d{3},\s+at\s+\d{1,2}:\d{1,2}\s+(?:AM|PM)*,.*wrote:)
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (re.++ (re.++ (str.to_re "O") (re.++ (str.to_re "n") (re.++ (re.+ (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) (re.++ (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.++ (str.to_re "J") (re.++ (str.to_re "a") (str.to_re "n"))) (re.++ (str.to_re "F") (re.++ (str.to_re "e") (str.to_re "b")))) (re.++ (str.to_re "M") (re.++ (str.to_re "a") (str.to_re "r")))) (re.++ (str.to_re "A") (re.++ (str.to_re "p") (str.to_re "r")))) (re.++ (str.to_re "M") (re.++ (str.to_re "a") (str.to_re "y")))) (re.++ (str.to_re "J") (re.++ (str.to_re "u") (str.to_re "n")))) (re.++ (str.to_re "J") (re.++ (str.to_re "u") (str.to_re "l")))) (re.++ (str.to_re "A") (re.++ (str.to_re "u") (str.to_re "g")))) (re.++ (str.to_re "S") (re.++ (str.to_re "e") (str.to_re "p")))) (re.++ (str.to_re "O") (re.++ (str.to_re "c") (str.to_re "t")))) (re.++ (str.to_re "N") (re.++ (str.to_re "o") (str.to_re "v")))) (re.++ (str.to_re "D") (re.++ (str.to_re "e") (str.to_re "c")))) (re.++ (re.+ (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) ((_ re.loop 1 2) (re.range "0" "9"))))))) (re.++ (str.to_re ",") (re.++ (re.+ (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) (re.++ (str.to_re "12") ((_ re.loop 3 3) (re.range "0" "9")))))) (re.++ (str.to_re ",") (re.++ (re.+ (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) (re.++ (str.to_re "a") (re.++ (str.to_re "t") (re.++ (re.+ (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) (re.++ ((_ re.loop 1 2) (re.range "0" "9")) (re.++ (str.to_re ":") (re.++ ((_ re.loop 1 2) (re.range "0" "9")) (re.++ (re.+ (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) (re.* (re.union (re.++ (str.to_re "A") (str.to_re "M")) (re.++ (str.to_re "P") (str.to_re "M")))))))))))))) (re.++ (str.to_re ",") (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "w") (re.++ (str.to_re "r") (re.++ (str.to_re "o") (re.++ (str.to_re "t") (re.++ (str.to_re "e") (str.to_re ":")))))))))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)