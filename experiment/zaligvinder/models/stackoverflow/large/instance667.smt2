;test regex label\W+(?:(?:\w+\W+){1,60}?.*(\<TAG1\>|\<TAG2\>).*){2}
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "l") (re.++ (str.to_re "a") (re.++ (str.to_re "b") (re.++ (str.to_re "e") (re.++ (str.to_re "l") (re.++ (re.+ (re.inter (re.diff re.allchar (re.range "a" "z")) (re.inter (re.diff re.allchar (re.range "A" "Z")) (re.inter (re.diff re.allchar (re.range "0" "9")) (re.diff re.allchar (str.to_re "_")))))) ((_ re.loop 2 2) (re.++ ((_ re.loop 1 60) (re.++ (re.+ (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_"))))) (re.+ (re.inter (re.diff re.allchar (re.range "a" "z")) (re.inter (re.diff re.allchar (re.range "A" "Z")) (re.inter (re.diff re.allchar (re.range "0" "9")) (re.diff re.allchar (str.to_re "_")))))))) (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (re.union (re.++ (str.to_re "<") (re.++ (str.to_re "T") (re.++ (str.to_re "A") (re.++ (str.to_re "G") (re.++ (str.to_re "1") (str.to_re ">")))))) (re.++ (str.to_re "<") (re.++ (str.to_re "T") (re.++ (str.to_re "A") (re.++ (str.to_re "G") (re.++ (str.to_re "2") (str.to_re ">"))))))) (re.* (re.diff re.allchar (str.to_re "\n")))))))))))))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 50 (str.len X)))
(check-sat)
(get-model)