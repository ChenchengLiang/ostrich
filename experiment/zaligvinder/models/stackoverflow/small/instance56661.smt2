;test regex '5' = REGEXP_SUBSTR(phone#, '^([0-9]{4})(5)([0-9]{5})$', 1, 1, 'i', 2)
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "\u{27}") (re.++ (str.to_re "5") (re.++ (str.to_re "\u{27}") (re.++ (str.to_re " ") (re.++ (str.to_re "=") (re.++ (str.to_re " ") (re.++ (str.to_re "R") (re.++ (str.to_re "E") (re.++ (str.to_re "G") (re.++ (str.to_re "E") (re.++ (str.to_re "X") (re.++ (str.to_re "P") (re.++ (str.to_re "_") (re.++ (str.to_re "S") (re.++ (str.to_re "U") (re.++ (str.to_re "B") (re.++ (str.to_re "S") (re.++ (str.to_re "T") (re.++ (str.to_re "R") (re.++ (re.++ (re.++ (re.++ (re.++ (re.++ (re.++ (re.++ (str.to_re "p") (re.++ (str.to_re "h") (re.++ (str.to_re "o") (re.++ (str.to_re "n") (re.++ (str.to_re "e") (str.to_re "#")))))) (re.++ (str.to_re ",") (re.++ (str.to_re " ") (str.to_re "\u{27}")))) (re.++ (str.to_re "") (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.++ (str.to_re "5") ((_ re.loop 5 5) (re.range "0" "9")))))) (re.++ (str.to_re "") (str.to_re "\u{27}"))) (re.++ (str.to_re ",") (re.++ (str.to_re " ") (str.to_re "1")))) (re.++ (str.to_re ",") (re.++ (str.to_re " ") (str.to_re "1")))) (re.++ (str.to_re ",") (re.++ (str.to_re " ") (re.++ (str.to_re "\u{27}") (re.++ (str.to_re "i") (str.to_re "\u{27}")))))) (re.++ (str.to_re ",") (re.++ (str.to_re " ") (str.to_re "2")))))))))))))))))))))))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)