;test regex ^(.*?) in the year ([0-9]{1,4})$|^([0-9]{1,4}) is the year$
(declare-const X String)
(assert (str.in_re X (re.union (re.++ (re.++ (str.to_re "") (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re " ") (re.++ (str.to_re "i") (re.++ (str.to_re "n") (re.++ (str.to_re " ") (re.++ (str.to_re "t") (re.++ (str.to_re "h") (re.++ (str.to_re "e") (re.++ (str.to_re " ") (re.++ (str.to_re "y") (re.++ (str.to_re "e") (re.++ (str.to_re "a") (re.++ (str.to_re "r") (re.++ (str.to_re " ") ((_ re.loop 1 4) (re.range "0" "9"))))))))))))))))) (str.to_re "")) (re.++ (re.++ (str.to_re "") (re.++ ((_ re.loop 1 4) (re.range "0" "9")) (re.++ (str.to_re " ") (re.++ (str.to_re "i") (re.++ (str.to_re "s") (re.++ (str.to_re " ") (re.++ (str.to_re "t") (re.++ (str.to_re "h") (re.++ (str.to_re "e") (re.++ (str.to_re " ") (re.++ (str.to_re "y") (re.++ (str.to_re "e") (re.++ (str.to_re "a") (str.to_re "r")))))))))))))) (str.to_re "")))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)