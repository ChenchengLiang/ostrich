;test regex ^(JD[a-zA-Z0-9]{6}),?([^,]*),?([^,]*)$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (re.++ (re.++ (str.to_re "") (re.++ (str.to_re "J") (re.++ (str.to_re "D") ((_ re.loop 6 6) (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.range "0" "9"))))))) (re.++ (re.opt (str.to_re ",")) (re.* (re.diff re.allchar (str.to_re ","))))) (re.++ (re.opt (str.to_re ",")) (re.* (re.diff re.allchar (str.to_re ","))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)