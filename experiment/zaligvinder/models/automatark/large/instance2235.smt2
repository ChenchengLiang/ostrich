(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; ^\$([0]|([1-9]\d{1,2})|([1-9]\d{0,1},\d{3,3})|([1-9]\d{2,2},\d{3,3})|([1-9],\d{3,3},\d{3,3}))([.]\d{1,2})?$|^\(\$([0]|([1-9]\d{1,2})|([1-9]\d{0,1},\d{3,3})|([1-9]\d{2,2},\d{3,3})|([1-9],\d{3,3},\d{3,3}))([.]\d{1,2})?\)$|^(\$)?(-)?([0]|([1-9]\d{0,6}))([.]\d{1,2})?$
(assert (not (str.in_re X (re.union (re.++ (str.to_re "$") (re.union (str.to_re "0") (re.++ (re.range "1" "9") ((_ re.loop 1 2) (re.range "0" "9"))) (re.++ (re.range "1" "9") (re.opt (re.range "0" "9")) (str.to_re ",") ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ (re.range "1" "9") ((_ re.loop 2 2) (re.range "0" "9")) (str.to_re ",") ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ (re.range "1" "9") (str.to_re ",") ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re ",") ((_ re.loop 3 3) (re.range "0" "9")))) (re.opt (re.++ (str.to_re ".") ((_ re.loop 1 2) (re.range "0" "9"))))) (re.++ (str.to_re "($") (re.union (str.to_re "0") (re.++ (re.range "1" "9") ((_ re.loop 1 2) (re.range "0" "9"))) (re.++ (re.range "1" "9") (re.opt (re.range "0" "9")) (str.to_re ",") ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ (re.range "1" "9") ((_ re.loop 2 2) (re.range "0" "9")) (str.to_re ",") ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ (re.range "1" "9") (str.to_re ",") ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re ",") ((_ re.loop 3 3) (re.range "0" "9")))) (re.opt (re.++ (str.to_re ".") ((_ re.loop 1 2) (re.range "0" "9")))) (str.to_re ")")) (re.++ (re.opt (str.to_re "$")) (re.opt (str.to_re "-")) (re.union (str.to_re "0") (re.++ (re.range "1" "9") ((_ re.loop 0 6) (re.range "0" "9")))) (re.opt (re.++ (str.to_re ".") ((_ re.loop 1 2) (re.range "0" "9")))) (str.to_re "\u{0a}"))))))
; /nim:import\?[^\u{22}\u{27}>\s]*?filename=[^\u{22}\u{27}>\s]{485}/i
(assert (not (str.in_re X (re.++ (str.to_re "/nim:import?") (re.* (re.union (str.to_re "\u{22}") (str.to_re "'") (str.to_re ">") (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re "filename=") ((_ re.loop 485 485) (re.union (str.to_re "\u{22}") (str.to_re "'") (str.to_re ">") (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re "/i\u{0a}")))))
; \w*
(assert (not (str.in_re X (re.++ (re.* (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "\u{0a}")))))
; www\.take5bingo\.com\d+Host\x3AHost\x3A
(assert (not (str.in_re X (re.++ (str.to_re "www.take5bingo.com\u{1b}") (re.+ (re.range "0" "9")) (str.to_re "Host:Host:\u{0a}")))))
; ^[A-Z1-9]{5}-[A-Z1-9]{5}-[A-Z1-9]{5}-[A-Z1-9]{5}-[A-Z1-9]{5}$
(assert (str.in_re X (re.++ ((_ re.loop 5 5) (re.union (re.range "A" "Z") (re.range "1" "9"))) (str.to_re "-") ((_ re.loop 5 5) (re.union (re.range "A" "Z") (re.range "1" "9"))) (str.to_re "-") ((_ re.loop 5 5) (re.union (re.range "A" "Z") (re.range "1" "9"))) (str.to_re "-") ((_ re.loop 5 5) (re.union (re.range "A" "Z") (re.range "1" "9"))) (str.to_re "-") ((_ re.loop 5 5) (re.union (re.range "A" "Z") (re.range "1" "9"))) (str.to_re "\u{0a}"))))
(check-sat)
