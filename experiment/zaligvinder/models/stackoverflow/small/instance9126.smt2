;test regex ((?:[a-zA-Z]{3} \d{1,2}, \d{4,4} \d{1,2}:\d{2}:\d{2} (AM|PM) (\(INFO\)|\(SEVERE\)|\(WARNING\))).*\r(?:(.*Exception.*(\r.*)(\tat.*\r)+)))|((?:[a-zA-Z]{3} \d{1,2}, \d{4,4} \d{1,2}:\d{2}:\d{2} (AM|PM) (\(INFO\)|\(SEVERE\)|\(WARNING\))).*)
(declare-const X String)
(assert (str.in_re X (re.union (re.++ (re.++ (re.++ ((_ re.loop 3 3) (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.++ (str.to_re " ") ((_ re.loop 1 2) (re.range "0" "9")))) (re.++ (str.to_re ",") (re.++ (str.to_re " ") (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.++ (str.to_re " ") (re.++ ((_ re.loop 1 2) (re.range "0" "9")) (re.++ (str.to_re ":") (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.++ (str.to_re ":") (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.++ (str.to_re " ") (re.++ (re.union (re.++ (str.to_re "A") (str.to_re "M")) (re.++ (str.to_re "P") (str.to_re "M"))) (re.++ (str.to_re " ") (re.union (re.union (re.++ (str.to_re "(") (re.++ (str.to_re "I") (re.++ (str.to_re "N") (re.++ (str.to_re "F") (re.++ (str.to_re "O") (str.to_re ")")))))) (re.++ (str.to_re "(") (re.++ (str.to_re "S") (re.++ (str.to_re "E") (re.++ (str.to_re "V") (re.++ (str.to_re "E") (re.++ (str.to_re "R") (re.++ (str.to_re "E") (str.to_re ")"))))))))) (re.++ (str.to_re "(") (re.++ (str.to_re "W") (re.++ (str.to_re "A") (re.++ (str.to_re "R") (re.++ (str.to_re "N") (re.++ (str.to_re "I") (re.++ (str.to_re "N") (re.++ (str.to_re "G") (str.to_re ")"))))))))))))))))))))))) (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "\u{0d}") (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "E") (re.++ (str.to_re "x") (re.++ (str.to_re "c") (re.++ (str.to_re "e") (re.++ (str.to_re "p") (re.++ (str.to_re "t") (re.++ (str.to_re "i") (re.++ (str.to_re "o") (re.++ (str.to_re "n") (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (re.++ (str.to_re "\u{0d}") (re.* (re.diff re.allchar (str.to_re "\n")))) (re.+ (re.++ (str.to_re "\u{09}") (re.++ (str.to_re "a") (re.++ (str.to_re "t") (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (str.to_re "\u{0d}"))))))))))))))))))))) (re.++ (re.++ (re.++ ((_ re.loop 3 3) (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.++ (str.to_re " ") ((_ re.loop 1 2) (re.range "0" "9")))) (re.++ (str.to_re ",") (re.++ (str.to_re " ") (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.++ (str.to_re " ") (re.++ ((_ re.loop 1 2) (re.range "0" "9")) (re.++ (str.to_re ":") (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.++ (str.to_re ":") (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.++ (str.to_re " ") (re.++ (re.union (re.++ (str.to_re "A") (str.to_re "M")) (re.++ (str.to_re "P") (str.to_re "M"))) (re.++ (str.to_re " ") (re.union (re.union (re.++ (str.to_re "(") (re.++ (str.to_re "I") (re.++ (str.to_re "N") (re.++ (str.to_re "F") (re.++ (str.to_re "O") (str.to_re ")")))))) (re.++ (str.to_re "(") (re.++ (str.to_re "S") (re.++ (str.to_re "E") (re.++ (str.to_re "V") (re.++ (str.to_re "E") (re.++ (str.to_re "R") (re.++ (str.to_re "E") (str.to_re ")"))))))))) (re.++ (str.to_re "(") (re.++ (str.to_re "W") (re.++ (str.to_re "A") (re.++ (str.to_re "R") (re.++ (str.to_re "N") (re.++ (str.to_re "I") (re.++ (str.to_re "N") (re.++ (str.to_re "G") (str.to_re ")"))))))))))))))))))))))) (re.* (re.diff re.allchar (str.to_re "\n")))))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)