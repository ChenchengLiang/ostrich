;test regex \u{2f}WebID\u{2f}IISWebAgentIF.dll[^\n\u{26}\u{3f}]*\u{3f}Redirect\u{3f}url=[^\n\u{26}\u{3f}]{1024}
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "\u{2f}") (re.++ (str.to_re "W") (re.++ (str.to_re "e") (re.++ (str.to_re "b") (re.++ (str.to_re "I") (re.++ (str.to_re "D") (re.++ (str.to_re "\u{2f}") (re.++ (str.to_re "I") (re.++ (str.to_re "I") (re.++ (str.to_re "S") (re.++ (str.to_re "W") (re.++ (str.to_re "e") (re.++ (str.to_re "b") (re.++ (str.to_re "A") (re.++ (str.to_re "g") (re.++ (str.to_re "e") (re.++ (str.to_re "n") (re.++ (str.to_re "t") (re.++ (str.to_re "I") (re.++ (str.to_re "F") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "d") (re.++ (str.to_re "l") (re.++ (str.to_re "l") (re.++ (re.* (re.inter (re.diff re.allchar (str.to_re "\u{0a}")) (re.inter (re.diff re.allchar (str.to_re "\u{26}")) (re.diff re.allchar (str.to_re "\u{3f}"))))) (re.++ (str.to_re "\u{3f}") (re.++ (str.to_re "R") (re.++ (str.to_re "e") (re.++ (str.to_re "d") (re.++ (str.to_re "i") (re.++ (str.to_re "r") (re.++ (str.to_re "e") (re.++ (str.to_re "c") (re.++ (str.to_re "t") (re.++ (str.to_re "\u{3f}") (re.++ (str.to_re "u") (re.++ (str.to_re "r") (re.++ (str.to_re "l") (re.++ (str.to_re "=") ((_ re.loop 1024 1024) (re.inter (re.diff re.allchar (str.to_re "\u{0a}")) (re.inter (re.diff re.allchar (str.to_re "\u{26}")) (re.diff re.allchar (str.to_re "\u{3f}"))))))))))))))))))))))))))))))))))))))))))))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 50 (str.len X)))
(check-sat)
(get-model)