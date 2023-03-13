;test regex @"(value\"":\[\[\""([A-Za-z0-9]+(?:-{0,1})[A-Za-z0-9]+)\""\]\])"
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "@") (re.++ (str.to_re "\u{22}") (re.++ (re.++ (str.to_re "v") (re.++ (str.to_re "a") (re.++ (str.to_re "l") (re.++ (str.to_re "u") (re.++ (str.to_re "e") (re.++ (str.to_re "\u{22}") (re.++ (str.to_re "\u{22}") (re.++ (str.to_re ":") (re.++ (str.to_re "[") (re.++ (str.to_re "[") (re.++ (str.to_re "\u{22}") (re.++ (str.to_re "\u{22}") (re.++ (re.++ (re.+ (re.union (re.range "A" "Z") (re.union (re.range "a" "z") (re.range "0" "9")))) (re.++ ((_ re.loop 0 1) (str.to_re "-")) (re.+ (re.union (re.range "A" "Z") (re.union (re.range "a" "z") (re.range "0" "9")))))) (re.++ (str.to_re "\u{22}") (re.++ (str.to_re "\u{22}") (re.++ (str.to_re "]") (str.to_re "]"))))))))))))))))) (str.to_re "\u{22}"))))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)