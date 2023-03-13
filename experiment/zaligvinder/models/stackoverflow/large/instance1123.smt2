;test regex ([a-zA-Z]\\w{3,19}) (RENT|SALE|PURCHASE|SERVICES|DATING) ((\\w|\\W|\\s){10,30}) ((\\w|\\W|\\s){20,400})
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (re.++ (str.to_re "\\") ((_ re.loop 3 19) (str.to_re "w")))) (re.++ (str.to_re " ") (re.++ (re.union (re.union (re.union (re.union (re.++ (str.to_re "R") (re.++ (str.to_re "E") (re.++ (str.to_re "N") (str.to_re "T")))) (re.++ (str.to_re "S") (re.++ (str.to_re "A") (re.++ (str.to_re "L") (str.to_re "E"))))) (re.++ (str.to_re "P") (re.++ (str.to_re "U") (re.++ (str.to_re "R") (re.++ (str.to_re "C") (re.++ (str.to_re "H") (re.++ (str.to_re "A") (re.++ (str.to_re "S") (str.to_re "E"))))))))) (re.++ (str.to_re "S") (re.++ (str.to_re "E") (re.++ (str.to_re "R") (re.++ (str.to_re "V") (re.++ (str.to_re "I") (re.++ (str.to_re "C") (re.++ (str.to_re "E") (str.to_re "S"))))))))) (re.++ (str.to_re "D") (re.++ (str.to_re "A") (re.++ (str.to_re "T") (re.++ (str.to_re "I") (re.++ (str.to_re "N") (str.to_re "G"))))))) (re.++ (str.to_re " ") (re.++ ((_ re.loop 10 30) (re.union (re.union (re.++ (str.to_re "\\") (str.to_re "w")) (re.++ (str.to_re "\\") (str.to_re "W"))) (re.++ (str.to_re "\\") (str.to_re "s")))) (re.++ (str.to_re " ") ((_ re.loop 20 400) (re.union (re.union (re.++ (str.to_re "\\") (str.to_re "w")) (re.++ (str.to_re "\\") (str.to_re "W"))) (re.++ (str.to_re "\\") (str.to_re "s"))))))))))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 50 (str.len X)))
(check-sat)
(get-model)