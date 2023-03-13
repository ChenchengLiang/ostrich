;test regex s/((0|\w)+?[xy]*[^xy]){2,7}/u/g
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "s") (re.++ (str.to_re "/") (re.++ ((_ re.loop 2 7) (re.++ (re.+ (re.union (str.to_re "0") (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_")))))) (re.++ (re.* (re.union (str.to_re "x") (str.to_re "y"))) (re.inter (re.diff re.allchar (str.to_re "x")) (re.diff re.allchar (str.to_re "y")))))) (re.++ (str.to_re "/") (re.++ (str.to_re "u") (re.++ (str.to_re "/") (str.to_re "g")))))))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)