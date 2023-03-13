;test regex \d{1,4} .*(\.docx|\.doc|\.ppt|xls|\.pdf)
(declare-const X String)
(assert (str.in_re X (re.++ ((_ re.loop 1 4) (re.range "0" "9")) (re.++ (str.to_re " ") (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.union (re.union (re.union (re.union (re.++ (str.to_re ".") (re.++ (str.to_re "d") (re.++ (str.to_re "o") (re.++ (str.to_re "c") (str.to_re "x"))))) (re.++ (str.to_re ".") (re.++ (str.to_re "d") (re.++ (str.to_re "o") (str.to_re "c"))))) (re.++ (str.to_re ".") (re.++ (str.to_re "p") (re.++ (str.to_re "p") (str.to_re "t"))))) (re.++ (str.to_re "x") (re.++ (str.to_re "l") (str.to_re "s")))) (re.++ (str.to_re ".") (re.++ (str.to_re "p") (re.++ (str.to_re "d") (str.to_re "f"))))))))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)