;test regex ([^\n]*\r?\n[JFMASOND]\w+\h*\d{1,2}\h*(?:,?\h*(?:\d{4})?\h+\w+|at\h*\d{1,2}:\d{1,2}\h*(?:\h+AM|\h+PM:)?)?\h*\r?\n.*)|[^\n]*
(declare-const X String)
(assert (str.in_re X (re.union (re.++ (re.* (re.diff re.allchar (str.to_re "\u{0a}"))) (re.++ (re.opt (str.to_re "\u{0d}")) (re.++ (str.to_re "\u{0a}") (re.++ (re.union (str.to_re "J") (re.union (str.to_re "F") (re.union (str.to_re "M") (re.union (str.to_re "A") (re.union (str.to_re "S") (re.union (str.to_re "O") (re.union (str.to_re "N") (str.to_re "D")))))))) (re.++ (re.+ (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_"))))) (re.++ (re.* (str.to_re "h")) (re.++ ((_ re.loop 1 2) (re.range "0" "9")) (re.++ (re.* (str.to_re "h")) (re.++ (re.opt (re.union (re.++ (re.opt (str.to_re ",")) (re.++ (re.* (str.to_re "h")) (re.++ (re.opt ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ (re.+ (str.to_re "h")) (re.+ (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_"))))))))) (re.++ (str.to_re "a") (re.++ (str.to_re "t") (re.++ (re.* (str.to_re "h")) (re.++ ((_ re.loop 1 2) (re.range "0" "9")) (re.++ (str.to_re ":") (re.++ ((_ re.loop 1 2) (re.range "0" "9")) (re.++ (re.* (str.to_re "h")) (re.opt (re.union (re.++ (re.+ (str.to_re "h")) (re.++ (str.to_re "A") (str.to_re "M"))) (re.++ (re.+ (str.to_re "h")) (re.++ (str.to_re "P") (re.++ (str.to_re "M") (str.to_re ":"))))))))))))))) (re.++ (re.* (str.to_re "h")) (re.++ (re.opt (str.to_re "\u{0d}")) (re.++ (str.to_re "\u{0a}") (re.* (re.diff re.allchar (str.to_re "\n"))))))))))))))) (re.* (re.diff re.allchar (str.to_re "\u{0a}"))))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)