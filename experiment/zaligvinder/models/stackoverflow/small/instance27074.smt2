;test regex ((MM)*N{1,3})|(N{1,3}(MM)*)
(declare-const X String)
(assert (str.in_re X (re.union (re.++ (re.* (re.++ (str.to_re "M") (str.to_re "M"))) ((_ re.loop 1 3) (str.to_re "N"))) (re.++ ((_ re.loop 1 3) (str.to_re "N")) (re.* (re.++ (str.to_re "M") (str.to_re "M")))))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)