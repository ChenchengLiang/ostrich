;test regex b:Masking.Mask="^\d+(\.\d{1,2})?$"
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (re.++ (str.to_re "b") (re.++ (str.to_re ":") (re.++ (str.to_re "M") (re.++ (str.to_re "a") (re.++ (str.to_re "s") (re.++ (str.to_re "k") (re.++ (str.to_re "i") (re.++ (str.to_re "n") (re.++ (str.to_re "g") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "M") (re.++ (str.to_re "a") (re.++ (str.to_re "s") (re.++ (str.to_re "k") (re.++ (str.to_re "=") (str.to_re "\u{22}")))))))))))))))) (re.++ (str.to_re "") (re.++ (re.+ (re.range "0" "9")) (re.opt (re.++ (str.to_re ".") ((_ re.loop 1 2) (re.range "0" "9"))))))) (re.++ (str.to_re "") (str.to_re "\u{22}")))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)