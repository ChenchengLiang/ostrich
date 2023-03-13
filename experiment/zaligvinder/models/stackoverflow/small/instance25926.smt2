;test regex ([^,]*), Q\.ty: (\d*), Price: (\d*\.\d{2})
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (re.* (re.diff re.allchar (str.to_re ","))) (re.++ (str.to_re ",") (re.++ (str.to_re " ") (re.++ (str.to_re "Q") (re.++ (str.to_re ".") (re.++ (str.to_re "t") (re.++ (str.to_re "y") (re.++ (str.to_re ":") (re.++ (str.to_re " ") (re.* (re.range "0" "9"))))))))))) (re.++ (str.to_re ",") (re.++ (str.to_re " ") (re.++ (str.to_re "P") (re.++ (str.to_re "r") (re.++ (str.to_re "i") (re.++ (str.to_re "c") (re.++ (str.to_re "e") (re.++ (str.to_re ":") (re.++ (str.to_re " ") (re.++ (re.* (re.range "0" "9")) (re.++ (str.to_re ".") ((_ re.loop 2 2) (re.range "0" "9"))))))))))))))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)