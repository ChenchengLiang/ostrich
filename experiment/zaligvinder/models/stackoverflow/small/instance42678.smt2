;test regex ^[\u0400-\u04FF](-?[\u0400-\u04FF]+)*(\s+[\u0400-\u04FF](-?[\u0400-\u04FF]+)*){2}$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (re.range "\u{0400}" "\u{04ff}") (re.++ (re.* (re.++ (re.opt (str.to_re "-")) (re.+ (re.range "\u{0400}" "\u{04ff}")))) ((_ re.loop 2 2) (re.++ (re.+ (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) (re.++ (re.range "\u{0400}" "\u{04ff}") (re.* (re.++ (re.opt (str.to_re "-")) (re.+ (re.range "\u{0400}" "\u{04ff}")))))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)