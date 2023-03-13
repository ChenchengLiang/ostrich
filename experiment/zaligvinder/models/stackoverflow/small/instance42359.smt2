;test regex $ptn = "~(?:[a-z]{4,5}://[a-z.0-9]*/)?([a-z.?_=]*)([0-9]*)~";  // Regex
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "") (re.++ (str.to_re "p") (re.++ (str.to_re "t") (re.++ (str.to_re "n") (re.++ (str.to_re " ") (re.++ (str.to_re "=") (re.++ (str.to_re " ") (re.++ (str.to_re "\u{22}") (re.++ (str.to_re "~") (re.++ (re.opt (re.++ ((_ re.loop 4 5) (re.range "a" "z")) (re.++ (str.to_re ":") (re.++ (str.to_re "/") (re.++ (str.to_re "/") (re.++ (re.* (re.union (re.range "a" "z") (re.union (str.to_re ".") (re.range "0" "9")))) (str.to_re "/"))))))) (re.++ (re.* (re.union (re.range "a" "z") (re.union (str.to_re ".") (re.union (str.to_re "?") (re.union (str.to_re "_") (str.to_re "=")))))) (re.++ (re.* (re.range "0" "9")) (re.++ (str.to_re "~") (re.++ (str.to_re "\u{22}") (re.++ (str.to_re ";") (re.++ (str.to_re " ") (re.++ (str.to_re " ") (re.++ (str.to_re "/") (re.++ (str.to_re "/") (re.++ (str.to_re " ") (re.++ (str.to_re "R") (re.++ (str.to_re "e") (re.++ (str.to_re "g") (re.++ (str.to_re "e") (str.to_re "x")))))))))))))))))))))))))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)