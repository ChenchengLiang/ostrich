(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; ^((([sS]|[nN])[a-hA-Hj-zJ-Z])|(([tT]|[oO])[abfglmqrvwABFGLMQRVW])|([hH][l-zL-Z])|([jJ][lmqrvwLMQRVW]))([0-9]{2})?([0-9]{2})?([0-9]{2})?([0-9]{2})?([0-9]{2})?$
(assert (str.in_re X (re.++ (re.union (re.++ (re.union (str.to_re "s") (str.to_re "S") (str.to_re "n") (str.to_re "N")) (re.union (re.range "a" "h") (re.range "A" "H") (re.range "j" "z") (re.range "J" "Z"))) (re.++ (re.union (str.to_re "t") (str.to_re "T") (str.to_re "o") (str.to_re "O")) (re.union (str.to_re "a") (str.to_re "b") (str.to_re "f") (str.to_re "g") (str.to_re "l") (str.to_re "m") (str.to_re "q") (str.to_re "r") (str.to_re "v") (str.to_re "w") (str.to_re "A") (str.to_re "B") (str.to_re "F") (str.to_re "G") (str.to_re "L") (str.to_re "M") (str.to_re "Q") (str.to_re "R") (str.to_re "V") (str.to_re "W"))) (re.++ (re.union (str.to_re "h") (str.to_re "H")) (re.union (re.range "l" "z") (re.range "L" "Z"))) (re.++ (re.union (str.to_re "j") (str.to_re "J")) (re.union (str.to_re "l") (str.to_re "m") (str.to_re "q") (str.to_re "r") (str.to_re "v") (str.to_re "w") (str.to_re "L") (str.to_re "M") (str.to_re "Q") (str.to_re "R") (str.to_re "V") (str.to_re "W")))) (re.opt ((_ re.loop 2 2) (re.range "0" "9"))) (re.opt ((_ re.loop 2 2) (re.range "0" "9"))) (re.opt ((_ re.loop 2 2) (re.range "0" "9"))) (re.opt ((_ re.loop 2 2) (re.range "0" "9"))) (re.opt ((_ re.loop 2 2) (re.range "0" "9"))) (str.to_re "\u{0a}"))))
; ^(((0)[13578]|(10)|(12))(/)((0[1-9])|([12][0-9])|((3)[01]))(/)(\d{4}))|(((0)[469]|(11))(/)((0[1-9])|([12][0-9])|(30))(/)(\d{4}))|((02)(/)((0[1-9])|((1)[0-9])|((2)[0-8]))(/)(\d{4}))|((02)(/)((0[1-9])|((1)[0-9])|((2)[0-9]))(/)((\d{2})(([02468][048])|([13579][26]))))$
(assert (str.in_re X (re.union (re.++ (re.union (re.++ (str.to_re "0") (re.union (str.to_re "1") (str.to_re "3") (str.to_re "5") (str.to_re "7") (str.to_re "8"))) (str.to_re "10") (str.to_re "12")) (str.to_re "/") (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (re.union (str.to_re "1") (str.to_re "2")) (re.range "0" "9")) (re.++ (str.to_re "3") (re.union (str.to_re "0") (str.to_re "1")))) (str.to_re "/") ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ (re.union (re.++ (str.to_re "0") (re.union (str.to_re "4") (str.to_re "6") (str.to_re "9"))) (str.to_re "11")) (str.to_re "/") (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (re.union (str.to_re "1") (str.to_re "2")) (re.range "0" "9")) (str.to_re "30")) (str.to_re "/") ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ (str.to_re "02/") (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (str.to_re "1") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "8"))) (str.to_re "/") ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ (str.to_re "\u{0a}02/") (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (str.to_re "1") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "9"))) (str.to_re "/") ((_ re.loop 2 2) (re.range "0" "9")) (re.union (re.++ (re.union (str.to_re "0") (str.to_re "2") (str.to_re "4") (str.to_re "6") (str.to_re "8")) (re.union (str.to_re "0") (str.to_re "4") (str.to_re "8"))) (re.++ (re.union (str.to_re "1") (str.to_re "3") (str.to_re "5") (str.to_re "7") (str.to_re "9")) (re.union (str.to_re "2") (str.to_re "6"))))))))
; \[DRIVE\w+updates[^\n\r]*\u{22}StarLogger\u{22}User-Agent\x3AJMailUser-Agent\x3A
(assert (str.in_re X (re.++ (str.to_re "[DRIVE") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "updates") (re.* (re.union (str.to_re "\u{0a}") (str.to_re "\u{0d}"))) (str.to_re "\u{22}StarLogger\u{22}User-Agent:JMailUser-Agent:\u{0a}"))))
; ^\d{5}-\d{4}|\d{5}|[A-Z]\d[A-Z] \d[A-Z]\d$
(assert (str.in_re X (re.union (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (str.to_re "-") ((_ re.loop 4 4) (re.range "0" "9"))) ((_ re.loop 5 5) (re.range "0" "9")) (re.++ (re.range "A" "Z") (re.range "0" "9") (re.range "A" "Z") (str.to_re " ") (re.range "0" "9") (re.range "A" "Z") (re.range "0" "9") (str.to_re "\u{0a}")))))
(check-sat)
