;test regex /^((http|http|HTTP|HTTP):\/\/+(www|WWW\.)?[A-Za-z0-9\-\.]{1,}\.[A-Za-z])|((www|WWW\.)?[A-    Za-z0-9\-\.]{1,}\.[A-Za-z])/i.test(value);
(declare-const X String)
(assert (str.in_re X (re.union (re.++ (str.to_re "/") (re.++ (str.to_re "") (re.++ (re.union (re.union (re.union (re.++ (str.to_re "h") (re.++ (str.to_re "t") (re.++ (str.to_re "t") (str.to_re "p")))) (re.++ (str.to_re "h") (re.++ (str.to_re "t") (re.++ (str.to_re "t") (str.to_re "p"))))) (re.++ (str.to_re "H") (re.++ (str.to_re "T") (re.++ (str.to_re "T") (str.to_re "P"))))) (re.++ (str.to_re "H") (re.++ (str.to_re "T") (re.++ (str.to_re "T") (str.to_re "P"))))) (re.++ (str.to_re ":") (re.++ (str.to_re "/") (re.++ (re.+ (str.to_re "/")) (re.++ (re.opt (re.union (re.++ (str.to_re "w") (re.++ (str.to_re "w") (str.to_re "w"))) (re.++ (str.to_re "W") (re.++ (str.to_re "W") (re.++ (str.to_re "W") (str.to_re ".")))))) (re.++ (re.++ (re.* (re.union (re.range "A" "Z") (re.union (re.range "a" "z") (re.union (re.range "0" "9") (re.union (str.to_re "-") (str.to_re ".")))))) ((_ re.loop 1 1) (re.union (re.range "A" "Z") (re.union (re.range "a" "z") (re.union (re.range "0" "9") (re.union (str.to_re "-") (str.to_re "."))))))) (re.++ (str.to_re ".") (re.union (re.range "A" "Z") (re.range "a" "z"))))))))))) (re.++ (re.++ (re.opt (re.union (re.++ (str.to_re "w") (re.++ (str.to_re "w") (str.to_re "w"))) (re.++ (str.to_re "W") (re.++ (str.to_re "W") (re.++ (str.to_re "W") (str.to_re ".")))))) (re.++ (re.++ (re.* (re.union (re.range "A" " ") (re.union (str.to_re " ") (re.union (str.to_re " ") (re.union (str.to_re " ") (re.union (str.to_re "Z") (re.union (re.range "a" "z") (re.union (re.range "0" "9") (re.union (str.to_re "-") (str.to_re ".")))))))))) ((_ re.loop 1 1) (re.union (re.range "A" " ") (re.union (str.to_re " ") (re.union (str.to_re " ") (re.union (str.to_re " ") (re.union (str.to_re "Z") (re.union (re.range "a" "z") (re.union (re.range "0" "9") (re.union (str.to_re "-") (str.to_re "."))))))))))) (re.++ (str.to_re ".") (re.union (re.range "A" "Z") (re.range "a" "z"))))) (re.++ (str.to_re "/") (re.++ (str.to_re "i") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "t") (re.++ (str.to_re "e") (re.++ (str.to_re "s") (re.++ (str.to_re "t") (re.++ (re.++ (str.to_re "v") (re.++ (str.to_re "a") (re.++ (str.to_re "l") (re.++ (str.to_re "u") (str.to_re "e"))))) (str.to_re ";")))))))))))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)