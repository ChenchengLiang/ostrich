;test regex ^(\\d{4})?\\s+(\\D+)\\s+(\\d.*)$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (re.opt (re.++ (str.to_re "\\") ((_ re.loop 4 4) (str.to_re "d")))) (re.++ (str.to_re "\\") (re.++ (re.+ (str.to_re "s")) (re.++ (re.++ (str.to_re "\\") (re.+ (str.to_re "D"))) (re.++ (str.to_re "\\") (re.++ (re.+ (str.to_re "s")) (re.++ (str.to_re "\\") (re.++ (str.to_re "d") (re.* (re.diff re.allchar (str.to_re "\n")))))))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)