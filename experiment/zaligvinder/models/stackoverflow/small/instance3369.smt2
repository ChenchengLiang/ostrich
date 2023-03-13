;test regex (\d{1,2}(?::\d{1,2})?\s*(?:[ap]m|[ap]\.m\.))
(declare-const X String)
(assert (str.in_re X (re.++ ((_ re.loop 1 2) (re.range "0" "9")) (re.++ (re.opt (re.++ (str.to_re ":") ((_ re.loop 1 2) (re.range "0" "9")))) (re.++ (re.* (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) (re.union (re.++ (re.union (str.to_re "a") (str.to_re "p")) (str.to_re "m")) (re.++ (re.union (str.to_re "a") (str.to_re "p")) (re.++ (str.to_re ".") (re.++ (str.to_re "m") (str.to_re "."))))))))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)