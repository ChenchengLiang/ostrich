(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; User-Agent\x3A\s+\x7D\x7BPort\x3A
(assert (str.in_re X (re.++ (str.to_re "User-Agent:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re "}{Port:\u{0a}"))))
; ^\$?(([1-9],)?([0-9]{3},){0,3}[0-9]{3}|[0-9]{0,16})(\.[0-9]{0,3})?$
(assert (str.in_re X (re.++ (re.opt (str.to_re "$")) (re.union (re.++ (re.opt (re.++ (re.range "1" "9") (str.to_re ","))) ((_ re.loop 0 3) (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re ","))) ((_ re.loop 3 3) (re.range "0" "9"))) ((_ re.loop 0 16) (re.range "0" "9"))) (re.opt (re.++ (str.to_re ".") ((_ re.loop 0 3) (re.range "0" "9")))) (str.to_re "\u{0a}"))))
; ^(((((0?[1-9]|[12]\d|3[01])[-/]([0]?[13578]|1[02]))|((0?[1-9]|[12]\d|30)[-/]([0]?[469]|11))|(([01]?\d|2[0-8])[-/]0?2))[-/]((20|19)?\d{2}|\d{1,2}))|(29[-/]0?2[-/]((19)|(20))?([13579][26]|[24680][048])))$
(assert (str.in_re X (re.++ (re.union (re.++ (re.union (re.++ (re.union (re.++ (re.opt (str.to_re "0")) (re.range "1" "9")) (re.++ (re.union (str.to_re "1") (str.to_re "2")) (re.range "0" "9")) (re.++ (str.to_re "3") (re.union (str.to_re "0") (str.to_re "1")))) (re.union (str.to_re "-") (str.to_re "/")) (re.union (re.++ (re.opt (str.to_re "0")) (re.union (str.to_re "1") (str.to_re "3") (str.to_re "5") (str.to_re "7") (str.to_re "8"))) (re.++ (str.to_re "1") (re.union (str.to_re "0") (str.to_re "2"))))) (re.++ (re.union (re.++ (re.opt (str.to_re "0")) (re.range "1" "9")) (re.++ (re.union (str.to_re "1") (str.to_re "2")) (re.range "0" "9")) (str.to_re "30")) (re.union (str.to_re "-") (str.to_re "/")) (re.union (re.++ (re.opt (str.to_re "0")) (re.union (str.to_re "4") (str.to_re "6") (str.to_re "9"))) (str.to_re "11"))) (re.++ (re.union (re.++ (re.opt (re.union (str.to_re "0") (str.to_re "1"))) (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "8"))) (re.union (str.to_re "-") (str.to_re "/")) (re.opt (str.to_re "0")) (str.to_re "2"))) (re.union (str.to_re "-") (str.to_re "/")) (re.union (re.++ (re.opt (re.union (str.to_re "20") (str.to_re "19"))) ((_ re.loop 2 2) (re.range "0" "9"))) ((_ re.loop 1 2) (re.range "0" "9")))) (re.++ (str.to_re "29") (re.union (str.to_re "-") (str.to_re "/")) (re.opt (str.to_re "0")) (str.to_re "2") (re.union (str.to_re "-") (str.to_re "/")) (re.opt (re.union (str.to_re "19") (str.to_re "20"))) (re.union (re.++ (re.union (str.to_re "1") (str.to_re "3") (str.to_re "5") (str.to_re "7") (str.to_re "9")) (re.union (str.to_re "2") (str.to_re "6"))) (re.++ (re.union (str.to_re "2") (str.to_re "4") (str.to_re "6") (str.to_re "8") (str.to_re "0")) (re.union (str.to_re "0") (str.to_re "4") (str.to_re "8")))))) (str.to_re "\u{0a}"))))
(check-sat)
