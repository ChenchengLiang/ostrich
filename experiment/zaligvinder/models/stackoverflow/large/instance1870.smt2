;test regex postRegex = /^([A-Za-z0-9\u00C0-\u017F \/.,-_$!\'&*()="?#+%:;\[\]\r\r\n]{1,1000})$/;
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (re.++ (str.to_re "p") (re.++ (str.to_re "o") (re.++ (str.to_re "s") (re.++ (str.to_re "t") (re.++ (str.to_re "R") (re.++ (str.to_re "e") (re.++ (str.to_re "g") (re.++ (str.to_re "e") (re.++ (str.to_re "x") (re.++ (str.to_re " ") (re.++ (str.to_re "=") (re.++ (str.to_re " ") (str.to_re "/"))))))))))))) (re.++ (str.to_re "") ((_ re.loop 1 1000) (re.union (re.range "A" "Z") (re.union (re.range "a" "z") (re.union (re.range "0" "9") (re.union (re.range "\u{00c0}" "\u{017f}") (re.union (str.to_re " ") (re.union (str.to_re "/") (re.union (str.to_re ".") (re.union (str.to_re ",") (re.union (str.to_re "-") (re.union (str.to_re "_") (re.union (str.to_re "$") (re.union (str.to_re "!") (re.union (str.to_re "\u{27}") (re.union (str.to_re "&") (re.union (str.to_re "*") (re.union (str.to_re "(") (re.union (str.to_re ")") (re.union (str.to_re "=") (re.union (str.to_re "\u{22}") (re.union (str.to_re "?") (re.union (str.to_re "#") (re.union (str.to_re "+") (re.union (str.to_re "%") (re.union (str.to_re ":") (re.union (str.to_re ";") (re.union (str.to_re "[") (re.union (str.to_re "]") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{0d}") (str.to_re "\u{0a}"))))))))))))))))))))))))))))))))) (re.++ (str.to_re "") (re.++ (str.to_re "/") (str.to_re ";"))))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 50 (str.len X)))
(check-sat)
(get-model)