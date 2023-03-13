;test regex ^$|^[A-Za-z0-9 .,;-\']{5,60}$
(declare-const X String)
(assert (str.in_re X (re.union (re.++ (str.to_re "") (str.to_re "")) (re.++ (re.++ (str.to_re "") ((_ re.loop 5 60) (re.union (re.range "A" "Z") (re.union (re.range "a" "z") (re.union (re.range "0" "9") (re.union (str.to_re " ") (re.union (str.to_re ".") (re.union (str.to_re ",") (re.range ";" "\u{27}"))))))))) (str.to_re "")))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 50 (str.len X)))
(check-sat)
(get-model)