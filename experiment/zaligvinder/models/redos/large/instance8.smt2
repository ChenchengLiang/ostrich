;test regex ^\n*[mM][aA][iI][lL] [fF][rR][oO][mM]:[\u{20}\u{09}\u{0b}]+[a-zA-Z0-9_\u{20}\u{09}\u{0b}@\.]{0,200}\u{3b}[a-zA-Z0-9_\u{20}\u{09}\u{0b}@\.]{200,}\u{3b}[a-zA-Z0-9_\u{20}\u{09}\u{0b}@\.]{0,200}
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "") (re.++ (re.* (str.to_re "\u{0a}")) (re.++ (re.union (str.to_re "m") (str.to_re "M")) (re.++ (re.union (str.to_re "a") (str.to_re "A")) (re.++ (re.union (str.to_re "i") (str.to_re "I")) (re.++ (re.union (str.to_re "l") (str.to_re "L")) (re.++ (str.to_re " ") (re.++ (re.union (str.to_re "f") (str.to_re "F")) (re.++ (re.union (str.to_re "r") (str.to_re "R")) (re.++ (re.union (str.to_re "o") (str.to_re "O")) (re.++ (re.union (str.to_re "m") (str.to_re "M")) (re.++ (str.to_re ":") (re.++ (re.+ (re.union (str.to_re "\u{20}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0b}")))) (re.++ ((_ re.loop 0 200) (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (re.union (str.to_re "_") (re.union (str.to_re "\u{20}") (re.union (str.to_re "\u{09}") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "@") (str.to_re ".")))))))))) (re.++ (str.to_re "\u{3b}") (re.++ (re.++ (re.* (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (re.union (str.to_re "_") (re.union (str.to_re "\u{20}") (re.union (str.to_re "\u{09}") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "@") (str.to_re ".")))))))))) ((_ re.loop 200 200) (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (re.union (str.to_re "_") (re.union (str.to_re "\u{20}") (re.union (str.to_re "\u{09}") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "@") (str.to_re "."))))))))))) (re.++ (str.to_re "\u{3b}") ((_ re.loop 0 200) (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (re.union (str.to_re "_") (re.union (str.to_re "\u{20}") (re.union (str.to_re "\u{09}") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "@") (str.to_re ".")))))))))))))))))))))))))))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 50 (str.len X)))
(check-sat)
(get-model)