;test regex define('PHONE','#([a-zA-Z0-9][\s\(\)\-])*{0,45}#i');
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "d") (re.++ (str.to_re "e") (re.++ (str.to_re "f") (re.++ (str.to_re "i") (re.++ (str.to_re "n") (re.++ (str.to_re "e") (re.++ (re.++ (re.++ (str.to_re "\u{27}") (re.++ (str.to_re "P") (re.++ (str.to_re "H") (re.++ (str.to_re "O") (re.++ (str.to_re "N") (re.++ (str.to_re "E") (str.to_re "\u{27}"))))))) (re.++ (str.to_re ",") (re.++ (str.to_re "\u{27}") (re.++ (str.to_re "#") (re.++ ((_ re.loop 0 45) (re.* (re.++ (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.range "0" "9"))) (re.union (re.union (str.to_re "\u{20}") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}")))))) (re.union (str.to_re "(") (re.union (str.to_re ")") (str.to_re "-"))))))) (re.++ (str.to_re "#") (re.++ (str.to_re "i") (str.to_re "\u{27}")))))))) (str.to_re ";"))))))))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)