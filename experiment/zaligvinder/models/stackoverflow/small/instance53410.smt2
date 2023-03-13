;test regex ^.([-r][-w][-xsStT]){3}
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "") (re.++ (re.diff re.allchar (str.to_re "\n")) ((_ re.loop 3 3) (re.++ (re.union (str.to_re "-") (str.to_re "r")) (re.++ (re.union (str.to_re "-") (str.to_re "w")) (re.union (str.to_re "-") (re.union (str.to_re "x") (re.union (str.to_re "s") (re.union (str.to_re "S") (re.union (str.to_re "t") (str.to_re "T")))))))))))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)