;test regex \r[A-Z].*\r(\t {3})?([-+][0-9]+.[0-9]{2})( {3}\t)?$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "\u{0d}") (re.++ (re.range "A" "Z") (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "\u{0d}") (re.++ (re.opt (re.++ (str.to_re "\u{09}") ((_ re.loop 3 3) (str.to_re " ")))) (re.++ (re.++ (re.union (str.to_re "-") (str.to_re "+")) (re.++ (re.+ (re.range "0" "9")) (re.++ (re.diff re.allchar (str.to_re "\n")) ((_ re.loop 2 2) (re.range "0" "9"))))) (re.opt (re.++ ((_ re.loop 3 3) (str.to_re " ")) (str.to_re "\u{09}"))))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)