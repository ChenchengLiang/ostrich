;test regex i2c[A-Fa-f0-9]{2}\[w[A-Fa-f0-9]{2,}\](?:(\[r[0-9]+\])?)
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "i") (re.++ (str.to_re "2") (re.++ (str.to_re "c") (re.++ ((_ re.loop 2 2) (re.union (re.range "A" "F") (re.union (re.range "a" "f") (re.range "0" "9")))) (re.++ (str.to_re "[") (re.++ (str.to_re "w") (re.++ (re.++ (re.* (re.union (re.range "A" "F") (re.union (re.range "a" "f") (re.range "0" "9")))) ((_ re.loop 2 2) (re.union (re.range "A" "F") (re.union (re.range "a" "f") (re.range "0" "9"))))) (re.++ (str.to_re "]") (re.opt (re.++ (str.to_re "[") (re.++ (str.to_re "r") (re.++ (re.+ (re.range "0" "9")) (str.to_re "]")))))))))))))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)