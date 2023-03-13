;test regex pattern = "^([A-Z\-0-9]){4,10}.*\d+,\d{2}"
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (re.++ (str.to_re "p") (re.++ (str.to_re "a") (re.++ (str.to_re "t") (re.++ (str.to_re "t") (re.++ (str.to_re "e") (re.++ (str.to_re "r") (re.++ (str.to_re "n") (re.++ (str.to_re " ") (re.++ (str.to_re "=") (re.++ (str.to_re " ") (str.to_re "\u{22}"))))))))))) (re.++ (str.to_re "") (re.++ ((_ re.loop 4 10) (re.union (re.range "A" "Z") (re.union (str.to_re "-") (re.range "0" "9")))) (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.+ (re.range "0" "9")))))) (re.++ (str.to_re ",") (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (str.to_re "\u{22}"))))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)