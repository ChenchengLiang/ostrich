;test regex regexprep('Can/u0027t add the category','/u(\d{4})',strrep('$1','/u',''))
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "r") (re.++ (str.to_re "e") (re.++ (str.to_re "g") (re.++ (str.to_re "e") (re.++ (str.to_re "x") (re.++ (str.to_re "p") (re.++ (str.to_re "r") (re.++ (str.to_re "e") (re.++ (str.to_re "p") (re.++ (re.++ (re.++ (str.to_re "\u{27}") (re.++ (str.to_re "C") (re.++ (str.to_re "a") (re.++ (str.to_re "n") (re.++ (str.to_re "/") (re.++ (str.to_re "u") (re.++ (str.to_re "0027") (re.++ (str.to_re "t") (re.++ (str.to_re " ") (re.++ (str.to_re "a") (re.++ (str.to_re "d") (re.++ (str.to_re "d") (re.++ (str.to_re " ") (re.++ (str.to_re "t") (re.++ (str.to_re "h") (re.++ (str.to_re "e") (re.++ (str.to_re " ") (re.++ (str.to_re "c") (re.++ (str.to_re "a") (re.++ (str.to_re "t") (re.++ (str.to_re "e") (re.++ (str.to_re "g") (re.++ (str.to_re "o") (re.++ (str.to_re "r") (re.++ (str.to_re "y") (str.to_re "\u{27}")))))))))))))))))))))))))) (re.++ (str.to_re ",") (re.++ (str.to_re "\u{27}") (re.++ (str.to_re "/") (re.++ (str.to_re "u") (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (str.to_re "\u{27}"))))))) (re.++ (str.to_re ",") (re.++ (str.to_re "s") (re.++ (str.to_re "t") (re.++ (str.to_re "r") (re.++ (str.to_re "r") (re.++ (str.to_re "e") (re.++ (str.to_re "p") (re.++ (re.++ (re.++ (str.to_re "\u{27}") (re.++ (str.to_re "") (re.++ (str.to_re "1") (str.to_re "\u{27}")))) (re.++ (str.to_re ",") (re.++ (str.to_re "\u{27}") (re.++ (str.to_re "/") (re.++ (str.to_re "u") (str.to_re "\u{27}")))))) (re.++ (str.to_re ",") (re.++ (str.to_re "\u{27}") (str.to_re "\u{27}")))))))))))))))))))))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)