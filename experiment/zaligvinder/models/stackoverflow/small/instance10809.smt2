;test regex -replace '("Version"\s*:\s*)".*"',('$1"{0}"' -f $env:version)
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "-") (re.++ (str.to_re "r") (re.++ (str.to_re "e") (re.++ (str.to_re "p") (re.++ (str.to_re "l") (re.++ (str.to_re "a") (re.++ (str.to_re "c") (re.++ (str.to_re "e") (re.++ (str.to_re " ") (re.++ (str.to_re "\u{27}") (re.++ (re.++ (str.to_re "\u{22}") (re.++ (str.to_re "V") (re.++ (str.to_re "e") (re.++ (str.to_re "r") (re.++ (str.to_re "s") (re.++ (str.to_re "i") (re.++ (str.to_re "o") (re.++ (str.to_re "n") (re.++ (str.to_re "\u{22}") (re.++ (re.* (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}"))))))) (re.++ (str.to_re ":") (re.* (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}")))))))))))))))))) (re.++ (str.to_re "\u{22}") (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "\u{22}") (str.to_re "\u{27}"))))))))))))))) (re.++ (str.to_re ",") (re.++ (re.++ (str.to_re "\u{27}") (re.++ (str.to_re "") (re.++ (str.to_re "1") (re.++ ((_ re.loop 0 0) (str.to_re "\u{22}")) (re.++ (str.to_re "\u{22}") (re.++ (str.to_re "\u{27}") (re.++ (str.to_re " ") (re.++ (str.to_re "-") (re.++ (str.to_re "f") (str.to_re " ")))))))))) (re.++ (str.to_re "") (re.++ (str.to_re "e") (re.++ (str.to_re "n") (re.++ (str.to_re "v") (re.++ (str.to_re ":") (re.++ (str.to_re "v") (re.++ (str.to_re "e") (re.++ (str.to_re "r") (re.++ (str.to_re "s") (re.++ (str.to_re "i") (re.++ (str.to_re "o") (str.to_re "n")))))))))))))))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)