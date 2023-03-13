;test regex (^|\s|\$)([1-9](?:\d*|(?:\d{0,2})(?:,\d{3})*)(?:\.\d*[1-9])?|0?\.\d*[1-9]|0)(|m|k)(?:|\s)(?:|to|and|-|,)(?:|\s)(|\$)([1-9](?:\d*|(?:\d{0,2})(?:,\d{3})*)(?:\.\d*[1-9])?|0?\.\d*[1-9]|0)(\s|m|k)
(declare-const X String)
(assert (str.in_re X (re.++ (re.union (re.union (str.to_re "") (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) (str.to_re "$")) (re.++ (re.union (re.union (re.++ (re.range "1" "9") (re.++ (re.union (re.* (re.range "0" "9")) (re.++ ((_ re.loop 0 2) (re.range "0" "9")) (re.* (re.++ (str.to_re ",") ((_ re.loop 3 3) (re.range "0" "9")))))) (re.opt (re.++ (str.to_re ".") (re.++ (re.* (re.range "0" "9")) (re.range "1" "9")))))) (re.++ (re.opt (str.to_re "0")) (re.++ (str.to_re ".") (re.++ (re.* (re.range "0" "9")) (re.range "1" "9"))))) (str.to_re "0")) (re.++ (re.union (str.to_re "") (re.++ (str.to_re "") (re.union (str.to_re "m") (str.to_re "k")))) (re.++ (re.union (re.++ (str.to_re "") (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) (str.to_re "")) (re.++ (re.union (re.++ (str.to_re "") (re.union (re.union (re.union (re.++ (str.to_re "t") (str.to_re "o")) (re.++ (str.to_re "a") (re.++ (str.to_re "n") (str.to_re "d")))) (str.to_re "-")) (str.to_re ","))) (str.to_re "")) (re.++ (re.union (re.++ (str.to_re "") (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) (str.to_re "")) (re.++ (re.union (str.to_re "") (re.++ (str.to_re "") (str.to_re "$"))) (re.++ (re.union (re.union (re.++ (re.range "1" "9") (re.++ (re.union (re.* (re.range "0" "9")) (re.++ ((_ re.loop 0 2) (re.range "0" "9")) (re.* (re.++ (str.to_re ",") ((_ re.loop 3 3) (re.range "0" "9")))))) (re.opt (re.++ (str.to_re ".") (re.++ (re.* (re.range "0" "9")) (re.range "1" "9")))))) (re.++ (re.opt (str.to_re "0")) (re.++ (str.to_re ".") (re.++ (re.* (re.range "0" "9")) (re.range "1" "9"))))) (str.to_re "0")) (re.union (re.union (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}")))))) (str.to_re "m")) (str.to_re "k"))))))))))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)