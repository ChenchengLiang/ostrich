;test regex python script.py \\d{4}\-\\d{2}\-\\d{2}\\s\\d{2}:\\d{2}:\\d{2}
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "p") (re.++ (str.to_re "y") (re.++ (str.to_re "t") (re.++ (str.to_re "h") (re.++ (str.to_re "o") (re.++ (str.to_re "n") (re.++ (str.to_re " ") (re.++ (str.to_re "s") (re.++ (str.to_re "c") (re.++ (str.to_re "r") (re.++ (str.to_re "i") (re.++ (str.to_re "p") (re.++ (str.to_re "t") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "p") (re.++ (str.to_re "y") (re.++ (str.to_re " ") (re.++ (str.to_re "\\") (re.++ ((_ re.loop 4 4) (str.to_re "d")) (re.++ (str.to_re "-") (re.++ (str.to_re "\\") (re.++ ((_ re.loop 2 2) (str.to_re "d")) (re.++ (str.to_re "-") (re.++ (str.to_re "\\") (re.++ ((_ re.loop 2 2) (str.to_re "d")) (re.++ (str.to_re "\\") (re.++ (str.to_re "s") (re.++ (str.to_re "\\") (re.++ ((_ re.loop 2 2) (str.to_re "d")) (re.++ (str.to_re ":") (re.++ (str.to_re "\\") (re.++ ((_ re.loop 2 2) (str.to_re "d")) (re.++ (str.to_re ":") (re.++ (str.to_re "\\") ((_ re.loop 2 2) (str.to_re "d"))))))))))))))))))))))))))))))))))))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)