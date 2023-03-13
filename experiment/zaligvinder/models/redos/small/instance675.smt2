;test regex ^(.*)/(\d+|%[^%]+%|env_\w+_[a-f0-9A-F]{32,})$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "/") (re.union (re.union (re.+ (re.range "0" "9")) (re.++ (str.to_re "%") (re.++ (re.+ (re.diff re.allchar (str.to_re "%"))) (str.to_re "%")))) (re.++ (str.to_re "e") (re.++ (str.to_re "n") (re.++ (str.to_re "v") (re.++ (str.to_re "_") (re.++ (re.+ (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_"))))) (re.++ (str.to_re "_") (re.++ (re.* (re.union (re.range "a" "f") (re.union (re.range "0" "9") (re.range "A" "F")))) ((_ re.loop 32 32) (re.union (re.range "a" "f") (re.union (re.range "0" "9") (re.range "A" "F"))))))))))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)