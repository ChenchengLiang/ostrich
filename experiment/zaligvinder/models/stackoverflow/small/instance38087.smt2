;test regex string masterCourseRegex = @"(.{4}-.{4}-.{5}-.{6})|XL-(.{4}-.{4}-.{5}-.{6})";
(declare-const X String)
(assert (str.in_re X (re.union (re.++ (str.to_re "s") (re.++ (str.to_re "t") (re.++ (str.to_re "r") (re.++ (str.to_re "i") (re.++ (str.to_re "n") (re.++ (str.to_re "g") (re.++ (str.to_re " ") (re.++ (str.to_re "m") (re.++ (str.to_re "a") (re.++ (str.to_re "s") (re.++ (str.to_re "t") (re.++ (str.to_re "e") (re.++ (str.to_re "r") (re.++ (str.to_re "C") (re.++ (str.to_re "o") (re.++ (str.to_re "u") (re.++ (str.to_re "r") (re.++ (str.to_re "s") (re.++ (str.to_re "e") (re.++ (str.to_re "R") (re.++ (str.to_re "e") (re.++ (str.to_re "g") (re.++ (str.to_re "e") (re.++ (str.to_re "x") (re.++ (str.to_re " ") (re.++ (str.to_re "=") (re.++ (str.to_re " ") (re.++ (str.to_re "@") (re.++ (str.to_re "\u{22}") (re.++ ((_ re.loop 4 4) (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "-") (re.++ ((_ re.loop 4 4) (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "-") (re.++ ((_ re.loop 5 5) (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "-") ((_ re.loop 6 6) (re.diff re.allchar (str.to_re "\n")))))))))))))))))))))))))))))))))))))) (re.++ (str.to_re "X") (re.++ (str.to_re "L") (re.++ (str.to_re "-") (re.++ (re.++ ((_ re.loop 4 4) (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "-") (re.++ ((_ re.loop 4 4) (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "-") (re.++ ((_ re.loop 5 5) (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "-") ((_ re.loop 6 6) (re.diff re.allchar (str.to_re "\n"))))))))) (re.++ (str.to_re "\u{22}") (str.to_re ";")))))))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)