;test regex ^[^\d\u{20}]{0,11}\d{1}[^\d\u{20}]{0,11}$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ ((_ re.loop 0 11) (re.inter (re.diff re.allchar (re.range "0" "9")) (re.diff re.allchar (str.to_re "\u{20}")))) (re.++ ((_ re.loop 1 1) (re.range "0" "9")) ((_ re.loop 0 11) (re.inter (re.diff re.allchar (re.range "0" "9")) (re.diff re.allchar (str.to_re "\u{20}"))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)