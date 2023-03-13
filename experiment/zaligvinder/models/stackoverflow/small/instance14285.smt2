;test regex @"((\\d{1,2})\\s([a-z]+)\\s(\\d{4}))(?:-(\\d+:\\d+)(?:(\\s([a-z]{3}))?))?$"
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "@") (re.++ (str.to_re "\u{22}") (re.++ (re.++ (re.++ (str.to_re "\\") ((_ re.loop 1 2) (str.to_re "d"))) (re.++ (str.to_re "\\") (re.++ (str.to_re "s") (re.++ (re.+ (re.range "a" "z")) (re.++ (str.to_re "\\") (re.++ (str.to_re "s") (re.++ (str.to_re "\\") ((_ re.loop 4 4) (str.to_re "d"))))))))) (re.opt (re.++ (str.to_re "-") (re.++ (re.++ (str.to_re "\\") (re.++ (re.+ (str.to_re "d")) (re.++ (str.to_re ":") (re.++ (str.to_re "\\") (re.+ (str.to_re "d")))))) (re.opt (re.++ (str.to_re "\\") (re.++ (str.to_re "s") ((_ re.loop 3 3) (re.range "a" "z"))))))))))) (re.++ (str.to_re "") (str.to_re "\u{22}")))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)