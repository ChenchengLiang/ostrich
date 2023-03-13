;test regex ^STEAM_0:(0|1):[0-9]{1}[0-9]{0,8}$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (str.to_re "S") (re.++ (str.to_re "T") (re.++ (str.to_re "E") (re.++ (str.to_re "A") (re.++ (str.to_re "M") (re.++ (str.to_re "_") (re.++ (str.to_re "0") (re.++ (str.to_re ":") (re.++ (re.union (str.to_re "0") (str.to_re "1")) (re.++ (str.to_re ":") (re.++ ((_ re.loop 1 1) (re.range "0" "9")) ((_ re.loop 0 8) (re.range "0" "9")))))))))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)