;test regex /^(<LastName><\/LastName>)|(<LastName>.*[^a-zA-Z'\s]+.*<\/LastName>)|(<LastName>(.{41,})<\/LastName>)$/
(declare-const X String)
(assert (str.in_re X (re.union (re.union (re.++ (str.to_re "/") (re.++ (str.to_re "") (re.++ (str.to_re "<") (re.++ (str.to_re "L") (re.++ (str.to_re "a") (re.++ (str.to_re "s") (re.++ (str.to_re "t") (re.++ (str.to_re "N") (re.++ (str.to_re "a") (re.++ (str.to_re "m") (re.++ (str.to_re "e") (re.++ (str.to_re ">") (re.++ (str.to_re "<") (re.++ (str.to_re "/") (re.++ (str.to_re "L") (re.++ (str.to_re "a") (re.++ (str.to_re "s") (re.++ (str.to_re "t") (re.++ (str.to_re "N") (re.++ (str.to_re "a") (re.++ (str.to_re "m") (re.++ (str.to_re "e") (str.to_re ">"))))))))))))))))))))))) (re.++ (str.to_re "<") (re.++ (str.to_re "L") (re.++ (str.to_re "a") (re.++ (str.to_re "s") (re.++ (str.to_re "t") (re.++ (str.to_re "N") (re.++ (str.to_re "a") (re.++ (str.to_re "m") (re.++ (str.to_re "e") (re.++ (str.to_re ">") (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (re.+ (re.inter (re.diff re.allchar (re.range "a" "z")) (re.inter (re.diff re.allchar (re.range "A" "Z")) (re.inter (re.diff re.allchar (str.to_re "\u{27}")) (re.inter (re.diff re.allchar (str.to_re "\u{20}")) (re.inter (re.diff re.allchar (str.to_re "\u{0b}")) (re.inter (re.diff re.allchar (str.to_re "\u{0a}")) (re.inter (re.diff re.allchar (str.to_re "\u{0d}")) (re.inter (re.diff re.allchar (str.to_re "\u{09}")) (re.diff re.allchar (str.to_re "\u{0c}"))))))))))) (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "<") (re.++ (str.to_re "/") (re.++ (str.to_re "L") (re.++ (str.to_re "a") (re.++ (str.to_re "s") (re.++ (str.to_re "t") (re.++ (str.to_re "N") (re.++ (str.to_re "a") (re.++ (str.to_re "m") (re.++ (str.to_re "e") (str.to_re ">"))))))))))))))))))))))))) (re.++ (re.++ (str.to_re "<") (re.++ (str.to_re "L") (re.++ (str.to_re "a") (re.++ (str.to_re "s") (re.++ (str.to_re "t") (re.++ (str.to_re "N") (re.++ (str.to_re "a") (re.++ (str.to_re "m") (re.++ (str.to_re "e") (re.++ (str.to_re ">") (re.++ (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) ((_ re.loop 41 41) (re.diff re.allchar (str.to_re "\n")))) (re.++ (str.to_re "<") (re.++ (str.to_re "/") (re.++ (str.to_re "L") (re.++ (str.to_re "a") (re.++ (str.to_re "s") (re.++ (str.to_re "t") (re.++ (str.to_re "N") (re.++ (str.to_re "a") (re.++ (str.to_re "m") (re.++ (str.to_re "e") (str.to_re ">")))))))))))))))))))))) (re.++ (str.to_re "") (str.to_re "/"))))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)