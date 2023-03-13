;test regex (https?://)?((?:(\w+-)*\w+)\.)+(?:com|org|net|edu|gov|biz|info|name|museum|[a-z]{2})(\/?\w?-?=?_?\??&?)+[\.]?[a-z0-9\?=&_\-%#]*
(declare-const X String)
(assert (str.in_re X (re.++ (re.opt (re.++ (str.to_re "h") (re.++ (str.to_re "t") (re.++ (str.to_re "t") (re.++ (str.to_re "p") (re.++ (re.opt (str.to_re "s")) (re.++ (str.to_re ":") (re.++ (str.to_re "/") (str.to_re "/"))))))))) (re.++ (re.+ (re.++ (re.++ (re.* (re.++ (re.+ (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_"))))) (str.to_re "-"))) (re.+ (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_")))))) (str.to_re "."))) (re.++ (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.++ (str.to_re "c") (re.++ (str.to_re "o") (str.to_re "m"))) (re.++ (str.to_re "o") (re.++ (str.to_re "r") (str.to_re "g")))) (re.++ (str.to_re "n") (re.++ (str.to_re "e") (str.to_re "t")))) (re.++ (str.to_re "e") (re.++ (str.to_re "d") (str.to_re "u")))) (re.++ (str.to_re "g") (re.++ (str.to_re "o") (str.to_re "v")))) (re.++ (str.to_re "b") (re.++ (str.to_re "i") (str.to_re "z")))) (re.++ (str.to_re "i") (re.++ (str.to_re "n") (re.++ (str.to_re "f") (str.to_re "o"))))) (re.++ (str.to_re "n") (re.++ (str.to_re "a") (re.++ (str.to_re "m") (str.to_re "e"))))) (re.++ (str.to_re "m") (re.++ (str.to_re "u") (re.++ (str.to_re "s") (re.++ (str.to_re "e") (re.++ (str.to_re "u") (str.to_re "m"))))))) ((_ re.loop 2 2) (re.range "a" "z"))) (re.++ (re.+ (re.++ (re.opt (str.to_re "/")) (re.++ (re.opt (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (str.to_re "_"))))) (re.++ (re.opt (str.to_re "-")) (re.++ (re.opt (str.to_re "=")) (re.++ (re.opt (str.to_re "_")) (re.++ (re.opt (str.to_re "?")) (re.opt (str.to_re "&"))))))))) (re.++ (re.opt (str.to_re ".")) (re.* (re.union (re.range "a" "z") (re.union (re.range "0" "9") (re.union (str.to_re "?") (re.union (str.to_re "=") (re.union (str.to_re "&") (re.union (str.to_re "_") (re.union (str.to_re "-") (re.union (str.to_re "%") (str.to_re "#")))))))))))))))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)