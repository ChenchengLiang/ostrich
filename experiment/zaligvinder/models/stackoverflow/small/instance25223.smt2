;test regex (?:(?:(?:TYPE1)|(?:TYPE1)|(?:TYPE3))(?:\s+?)(?:(.+){1};(.+){1}))
(declare-const X String)
(assert (str.in_re X (re.++ (re.union (re.union (re.++ (str.to_re "T") (re.++ (str.to_re "Y") (re.++ (str.to_re "P") (re.++ (str.to_re "E") (str.to_re "1"))))) (re.++ (str.to_re "T") (re.++ (str.to_re "Y") (re.++ (str.to_re "P") (re.++ (str.to_re "E") (str.to_re "1")))))) (re.++ (str.to_re "T") (re.++ (str.to_re "Y") (re.++ (str.to_re "P") (re.++ (str.to_re "E") (str.to_re "3")))))) (re.++ (re.+ (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) (re.++ ((_ re.loop 1 1) (re.+ (re.diff re.allchar (str.to_re "\n")))) (re.++ (str.to_re ";") ((_ re.loop 1 1) (re.+ (re.diff re.allchar (str.to_re "\n"))))))))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)