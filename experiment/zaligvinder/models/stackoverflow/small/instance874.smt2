;test regex ([0-9A-F]{2,12}(?:[:.,]?)(?: ?)){1,5}([0-9A-F]{2,4})(?:$| )
(declare-const X String)
(assert (str.in_re X (re.++ ((_ re.loop 1 5) (re.++ ((_ re.loop 2 12) (re.union (re.range "0" "9") (re.range "A" "F"))) (re.++ (re.opt (re.union (str.to_re ":") (re.union (str.to_re ".") (str.to_re ",")))) (re.opt (str.to_re " "))))) (re.++ ((_ re.loop 2 4) (re.union (re.range "0" "9") (re.range "A" "F"))) (re.union (str.to_re "") (str.to_re " "))))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)