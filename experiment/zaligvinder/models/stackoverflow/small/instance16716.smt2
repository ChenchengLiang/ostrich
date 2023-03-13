;test regex <script[^>]*>.*["']((((https?)?:)?//)?[-.0-9A-Za-z]+\.[A-Za-z]{2,}/[-./0-9A-Z\_a-z]+\.js)
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "<") (re.++ (str.to_re "s") (re.++ (str.to_re "c") (re.++ (str.to_re "r") (re.++ (str.to_re "i") (re.++ (str.to_re "p") (re.++ (str.to_re "t") (re.++ (re.* (re.diff re.allchar (str.to_re ">"))) (re.++ (str.to_re ">") (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (re.union (str.to_re "\u{22}") (str.to_re "\u{27}")) (re.++ (re.opt (re.++ (re.opt (re.++ (re.opt (re.++ (str.to_re "h") (re.++ (str.to_re "t") (re.++ (str.to_re "t") (re.++ (str.to_re "p") (re.opt (str.to_re "s"))))))) (str.to_re ":"))) (re.++ (str.to_re "/") (str.to_re "/")))) (re.++ (re.+ (re.union (str.to_re "-") (re.union (str.to_re ".") (re.union (re.range "0" "9") (re.union (re.range "A" "Z") (re.range "a" "z")))))) (re.++ (str.to_re ".") (re.++ (re.++ (re.* (re.union (re.range "A" "Z") (re.range "a" "z"))) ((_ re.loop 2 2) (re.union (re.range "A" "Z") (re.range "a" "z")))) (re.++ (str.to_re "/") (re.++ (re.+ (re.union (str.to_re "-") (re.union (str.to_re ".") (re.union (str.to_re "/") (re.union (re.range "0" "9") (re.union (re.range "A" "Z") (re.union (str.to_re "_") (re.range "a" "z")))))))) (re.++ (str.to_re ".") (re.++ (str.to_re "j") (str.to_re "s"))))))))))))))))))))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)