;test regex ^ => appveyor_artifacts.py [\.]{15,79} [\d]{5,6} bytes\n$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (str.to_re " ") (re.++ (str.to_re "=") (re.++ (str.to_re ">") (re.++ (str.to_re " ") (re.++ (str.to_re "a") (re.++ (str.to_re "p") (re.++ (str.to_re "p") (re.++ (str.to_re "v") (re.++ (str.to_re "e") (re.++ (str.to_re "y") (re.++ (str.to_re "o") (re.++ (str.to_re "r") (re.++ (str.to_re "_") (re.++ (str.to_re "a") (re.++ (str.to_re "r") (re.++ (str.to_re "t") (re.++ (str.to_re "i") (re.++ (str.to_re "f") (re.++ (str.to_re "a") (re.++ (str.to_re "c") (re.++ (str.to_re "t") (re.++ (str.to_re "s") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "p") (re.++ (str.to_re "y") (re.++ (str.to_re " ") (re.++ ((_ re.loop 15 79) (str.to_re ".")) (re.++ (str.to_re " ") (re.++ ((_ re.loop 5 6) (re.range "0" "9")) (re.++ (str.to_re " ") (re.++ (str.to_re "b") (re.++ (str.to_re "y") (re.++ (str.to_re "t") (re.++ (str.to_re "e") (re.++ (str.to_re "s") (str.to_re "\u{0a}"))))))))))))))))))))))))))))))))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 50 (str.len X)))
(check-sat)
(get-model)