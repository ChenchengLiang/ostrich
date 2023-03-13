;test regex ^([#]{0,1}.*?)(FUNCTION\s+(.*?)[(](.*?)[)].*?END FUNCTION)
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "") (re.++ (re.++ ((_ re.loop 0 1) (str.to_re "#")) (re.* (re.diff re.allchar (str.to_re "\n")))) (re.++ (str.to_re "F") (re.++ (str.to_re "U") (re.++ (str.to_re "N") (re.++ (str.to_re "C") (re.++ (str.to_re "T") (re.++ (str.to_re "I") (re.++ (str.to_re "O") (re.++ (str.to_re "N") (re.++ (re.+ (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "(") (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re ")") (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "E") (re.++ (str.to_re "N") (re.++ (str.to_re "D") (re.++ (str.to_re " ") (re.++ (str.to_re "F") (re.++ (str.to_re "U") (re.++ (str.to_re "N") (re.++ (str.to_re "C") (re.++ (str.to_re "T") (re.++ (str.to_re "I") (re.++ (str.to_re "O") (str.to_re "N"))))))))))))))))))))))))))))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)