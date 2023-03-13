;test regex ^\n*[sS][tT][oO][uU][\u{20}\u{09}\u{0b}][^\n]{100}
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "") (re.++ (re.* (str.to_re "\u{0a}")) (re.++ (re.union (str.to_re "s") (str.to_re "S")) (re.++ (re.union (str.to_re "t") (str.to_re "T")) (re.++ (re.union (str.to_re "o") (str.to_re "O")) (re.++ (re.union (str.to_re "u") (str.to_re "U")) (re.++ (re.union (str.to_re "\u{20}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0b}"))) ((_ re.loop 100 100) (re.diff re.allchar (str.to_re "\u{0a}"))))))))))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 50 (str.len X)))
(check-sat)
(get-model)