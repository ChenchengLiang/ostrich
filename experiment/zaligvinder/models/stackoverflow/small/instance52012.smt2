;test regex string1.match(/[:!?+\<">'$;@`*&.\\/]{2}/g)
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "s") (re.++ (str.to_re "t") (re.++ (str.to_re "r") (re.++ (str.to_re "i") (re.++ (str.to_re "n") (re.++ (str.to_re "g") (re.++ (str.to_re "1") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "m") (re.++ (str.to_re "a") (re.++ (str.to_re "t") (re.++ (str.to_re "c") (re.++ (str.to_re "h") (re.++ (str.to_re "/") (re.++ ((_ re.loop 2 2) (re.union (str.to_re ":") (re.union (str.to_re "!") (re.union (str.to_re "?") (re.union (str.to_re "+") (re.union (str.to_re "<") (re.union (str.to_re "\u{22}") (re.union (str.to_re ">") (re.union (str.to_re "\u{27}") (re.union (str.to_re "$") (re.union (str.to_re ";") (re.union (str.to_re "@") (re.union (str.to_re "`") (re.union (str.to_re "*") (re.union (str.to_re "&") (re.union (str.to_re ".") (re.union (str.to_re "\\") (str.to_re "/")))))))))))))))))) (re.++ (str.to_re "/") (str.to_re "g")))))))))))))))))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)