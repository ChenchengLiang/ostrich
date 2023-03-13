;test regex \[(\d{11}|\w{10})(?:\s*"([^"]+)")?\]\
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "[") (re.++ (re.union ((_ re.loop 11 11) (re.range "0" "9")) ((_ re.loop 10 10) (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_")))))) (re.++ (re.opt (re.++ (re.* (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) (re.++ (str.to_re "\u{22}") (re.++ (re.+ (re.diff re.allchar (str.to_re "\u{22}"))) (str.to_re "\u{22}"))))) (re.++ (str.to_re "]") (str.to_re "\")))))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)