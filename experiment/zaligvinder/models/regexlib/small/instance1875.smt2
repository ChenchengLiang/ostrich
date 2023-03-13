;test regex ((\d{1,6}\-\d{1,6})|(\d{1,6}\\\d{1,6})|(\d{1,6})(\/)(\d{1,6})|(\w{1}\-?\d{1,6})|(\w{1}\s\d{1,6})|((P\.?O\.?\s)((BOX)|(Box))(\s\d{1,6}))|((([R]{2})|([H][C]))(\s\d{1,6}\s)((BOX)|(Box))(\s\d{1,6}))?)$
(declare-const X String)
(assert (str.in_re X (re.++ (re.union (re.union (re.union (re.union (re.union (re.union (re.++ ((_ re.loop 1 6) (re.range "0" "9")) (re.++ (str.to_re "-") ((_ re.loop 1 6) (re.range "0" "9")))) (re.++ ((_ re.loop 1 6) (re.range "0" "9")) (re.++ (str.to_re "\\") ((_ re.loop 1 6) (re.range "0" "9"))))) (re.++ ((_ re.loop 1 6) (re.range "0" "9")) (re.++ (str.to_re "/") ((_ re.loop 1 6) (re.range "0" "9"))))) (re.++ ((_ re.loop 1 1) (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_"))))) (re.++ (re.opt (str.to_re "-")) ((_ re.loop 1 6) (re.range "0" "9"))))) (re.++ ((_ re.loop 1 1) (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_"))))) (re.++ (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}")))))) ((_ re.loop 1 6) (re.range "0" "9"))))) (re.++ (re.++ (str.to_re "P") (re.++ (re.opt (str.to_re ".")) (re.++ (str.to_re "O") (re.++ (re.opt (str.to_re ".")) (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}")))))))))) (re.++ (re.union (re.++ (str.to_re "B") (re.++ (str.to_re "O") (str.to_re "X"))) (re.++ (str.to_re "B") (re.++ (str.to_re "o") (str.to_re "x")))) (re.++ (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}")))))) ((_ re.loop 1 6) (re.range "0" "9")))))) (re.opt (re.++ (re.union ((_ re.loop 2 2) (str.to_re "R")) (re.++ (str.to_re "H") (str.to_re "C"))) (re.++ (re.++ (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}")))))) (re.++ ((_ re.loop 1 6) (re.range "0" "9")) (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}")))))))) (re.++ (re.union (re.++ (str.to_re "B") (re.++ (str.to_re "O") (str.to_re "X"))) (re.++ (str.to_re "B") (re.++ (str.to_re "o") (str.to_re "x")))) (re.++ (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}")))))) ((_ re.loop 1 6) (re.range "0" "9")))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)