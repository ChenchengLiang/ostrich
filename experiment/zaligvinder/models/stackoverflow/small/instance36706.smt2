;test regex ([A-Z]{3})\ won\ (Neu|Off|Def)\.\ Zone\ -\ ([A-Z]{3})\ (\#[0-9]{1,2}\ \w+)\ vs\ ([A-Z]{3})\ (\#[0-9]{1,2}\ \w+)
(declare-const X String)
(assert (str.in_re X (re.++ ((_ re.loop 3 3) (re.range "A" "Z")) (re.++ (str.to_re " ") (re.++ (str.to_re "w") (re.++ (str.to_re "o") (re.++ (str.to_re "n") (re.++ (str.to_re " ") (re.++ (re.union (re.union (re.++ (str.to_re "N") (re.++ (str.to_re "e") (str.to_re "u"))) (re.++ (str.to_re "O") (re.++ (str.to_re "f") (str.to_re "f")))) (re.++ (str.to_re "D") (re.++ (str.to_re "e") (str.to_re "f")))) (re.++ (str.to_re ".") (re.++ (str.to_re " ") (re.++ (str.to_re "Z") (re.++ (str.to_re "o") (re.++ (str.to_re "n") (re.++ (str.to_re "e") (re.++ (str.to_re " ") (re.++ (str.to_re "-") (re.++ (str.to_re " ") (re.++ ((_ re.loop 3 3) (re.range "A" "Z")) (re.++ (str.to_re " ") (re.++ (re.++ (str.to_re "#") (re.++ ((_ re.loop 1 2) (re.range "0" "9")) (re.++ (str.to_re " ") (re.+ (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_")))))))) (re.++ (str.to_re " ") (re.++ (str.to_re "v") (re.++ (str.to_re "s") (re.++ (str.to_re " ") (re.++ ((_ re.loop 3 3) (re.range "A" "Z")) (re.++ (str.to_re " ") (re.++ (str.to_re "#") (re.++ ((_ re.loop 1 2) (re.range "0" "9")) (re.++ (str.to_re " ") (re.+ (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_")))))))))))))))))))))))))))))))))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)