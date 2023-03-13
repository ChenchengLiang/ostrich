;test regex (([1-9]|1[012]):[0-5][0-9](am|pm))|(\d{1,2}(st|nd|rd|th)-\d{1,2}(st|nd|rd|th))
(declare-const X String)
(assert (str.in_re X (re.union (re.++ (re.union (re.range "1" "9") (re.++ (str.to_re "1") (str.to_re "012"))) (re.++ (str.to_re ":") (re.++ (re.range "0" "5") (re.++ (re.range "0" "9") (re.union (re.++ (str.to_re "a") (str.to_re "m")) (re.++ (str.to_re "p") (str.to_re "m"))))))) (re.++ ((_ re.loop 1 2) (re.range "0" "9")) (re.++ (re.union (re.union (re.union (re.++ (str.to_re "s") (str.to_re "t")) (re.++ (str.to_re "n") (str.to_re "d"))) (re.++ (str.to_re "r") (str.to_re "d"))) (re.++ (str.to_re "t") (str.to_re "h"))) (re.++ (str.to_re "-") (re.++ ((_ re.loop 1 2) (re.range "0" "9")) (re.union (re.union (re.union (re.++ (str.to_re "s") (str.to_re "t")) (re.++ (str.to_re "n") (str.to_re "d"))) (re.++ (str.to_re "r") (str.to_re "d"))) (re.++ (str.to_re "t") (str.to_re "h"))))))))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)