;test regex (_ [ 0-9]{10})+(\s{1})+([ 0-9]{10})+(\s{2})+([ 0-9]{6})+\s{2}[ 0-9]{2}
(declare-const X String)
(assert (str.in_re X (re.++ (re.+ (re.++ (str.to_re "_") (re.++ (str.to_re " ") ((_ re.loop 10 10) (re.union (str.to_re " ") (re.range "0" "9")))))) (re.++ (re.+ ((_ re.loop 1 1) (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}")))))))) (re.++ (re.+ ((_ re.loop 10 10) (re.union (str.to_re " ") (re.range "0" "9")))) (re.++ (re.+ ((_ re.loop 2 2) (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}")))))))) (re.++ (re.+ ((_ re.loop 6 6) (re.union (str.to_re " ") (re.range "0" "9")))) (re.++ ((_ re.loop 2 2) (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) ((_ re.loop 2 2) (re.union (str.to_re " ") (re.range "0" "9")))))))))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)