;test regex grep -nvE '^\$.*\*[0-9A-F]{2}' *.log | grep -v ADVER | grep -v ADPMB
(declare-const X String)
(assert (str.in_re X (re.union (re.union (re.++ (re.++ (str.to_re "g") (re.++ (str.to_re "r") (re.++ (str.to_re "e") (re.++ (str.to_re "p") (re.++ (str.to_re " ") (re.++ (str.to_re "-") (re.++ (str.to_re "n") (re.++ (str.to_re "v") (re.++ (str.to_re "E") (re.++ (str.to_re " ") (str.to_re "\u{27}"))))))))))) (re.++ (str.to_re "") (re.++ (str.to_re "$") (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "*") (re.++ ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "A" "F"))) (re.++ (str.to_re "\u{27}") (re.++ (re.* (str.to_re " ")) (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "l") (re.++ (str.to_re "o") (re.++ (str.to_re "g") (str.to_re " "))))))))))))) (re.++ (str.to_re " ") (re.++ (str.to_re "g") (re.++ (str.to_re "r") (re.++ (str.to_re "e") (re.++ (str.to_re "p") (re.++ (str.to_re " ") (re.++ (str.to_re "-") (re.++ (str.to_re "v") (re.++ (str.to_re " ") (re.++ (str.to_re "A") (re.++ (str.to_re "D") (re.++ (str.to_re "V") (re.++ (str.to_re "E") (re.++ (str.to_re "R") (str.to_re " ")))))))))))))))) (re.++ (str.to_re " ") (re.++ (str.to_re "g") (re.++ (str.to_re "r") (re.++ (str.to_re "e") (re.++ (str.to_re "p") (re.++ (str.to_re " ") (re.++ (str.to_re "-") (re.++ (str.to_re "v") (re.++ (str.to_re " ") (re.++ (str.to_re "A") (re.++ (str.to_re "D") (re.++ (str.to_re "P") (re.++ (str.to_re "M") (str.to_re "B")))))))))))))))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)