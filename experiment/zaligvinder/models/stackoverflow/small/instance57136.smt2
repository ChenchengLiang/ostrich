;test regex [:alpha:]{2}[:digit:]{6}
(declare-const X String)
(assert (str.in_re X (re.++ ((_ re.loop 2 2) (re.union (str.to_re ":") (re.union (str.to_re "a") (re.union (str.to_re "l") (re.union (str.to_re "p") (re.union (str.to_re "h") (re.union (str.to_re "a") (str.to_re ":")))))))) ((_ re.loop 6 6) (re.union (str.to_re ":") (re.union (str.to_re "d") (re.union (str.to_re "i") (re.union (str.to_re "g") (re.union (str.to_re "i") (re.union (str.to_re "t") (str.to_re ":")))))))))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)