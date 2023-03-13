;test regex gsub('[(]([0-9]{3})[)] ([0-9]{3})[-]([0-9]{4}).*','\\1-\\2-\\3',ll)
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "g") (re.++ (str.to_re "s") (re.++ (str.to_re "u") (re.++ (str.to_re "b") (re.++ (re.++ (re.++ (str.to_re "\u{27}") (re.++ (str.to_re "(") (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.++ (str.to_re ")") (re.++ (str.to_re " ") (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.++ (str.to_re "-") (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (str.to_re "\u{27}")))))))))) (re.++ (str.to_re ",") (re.++ (str.to_re "\u{27}") (re.++ (str.to_re "\\") (re.++ (str.to_re "1") (re.++ (str.to_re "-") (re.++ (str.to_re "\\") (re.++ (str.to_re "2") (re.++ (str.to_re "-") (re.++ (str.to_re "\\") (re.++ (str.to_re "3") (str.to_re "\u{27}")))))))))))) (re.++ (str.to_re ",") (re.++ (str.to_re "l") (str.to_re "l"))))))))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)