;test regex \[[0-9]{4}\]\s^[A-Z]+[a-zA-Z]*$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (re.++ (str.to_re "[") (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.++ (str.to_re "]") (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))))) (re.++ (str.to_re "") (re.++ (re.+ (re.range "A" "Z")) (re.* (re.union (re.range "a" "z") (re.range "A" "Z")))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)