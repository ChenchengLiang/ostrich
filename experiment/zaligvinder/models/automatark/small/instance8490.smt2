(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; /\u{2e}xls([\?\u{5c}\u{2f}]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.xls") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{0a}"))))
; ^[a-zA-Z0-9]+$
(assert (str.in_re X (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to_re "\u{0a}"))))
; ^\$([0]|([1-9]\d{1,2})|([1-9]\d{0,1},\d{3,3})|([1-9]\d{2,2},\d{3,3})|([1-9],\d{3,3},\d{3,3}))([.]\d{1,2})?$|^\(\$([0]|([1-9]\d{1,2})|([1-9]\d{0,1},\d{3,3})|([1-9]\d{2,2},\d{3,3})|([1-9],\d{3,3},\d{3,3}))([.]\d{1,2})?\)$|^(\$)?(-)?([0]|([1-9]\d{0,6}))([.]\d{1,2})?$
(assert (str.in_re X (re.union (re.++ (str.to_re "$") (re.union (str.to_re "0") (re.++ (re.range "1" "9") ((_ re.loop 1 2) (re.range "0" "9"))) (re.++ (re.range "1" "9") (re.opt (re.range "0" "9")) (str.to_re ",") ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ (re.range "1" "9") ((_ re.loop 2 2) (re.range "0" "9")) (str.to_re ",") ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ (re.range "1" "9") (str.to_re ",") ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re ",") ((_ re.loop 3 3) (re.range "0" "9")))) (re.opt (re.++ (str.to_re ".") ((_ re.loop 1 2) (re.range "0" "9"))))) (re.++ (str.to_re "($") (re.union (str.to_re "0") (re.++ (re.range "1" "9") ((_ re.loop 1 2) (re.range "0" "9"))) (re.++ (re.range "1" "9") (re.opt (re.range "0" "9")) (str.to_re ",") ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ (re.range "1" "9") ((_ re.loop 2 2) (re.range "0" "9")) (str.to_re ",") ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ (re.range "1" "9") (str.to_re ",") ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re ",") ((_ re.loop 3 3) (re.range "0" "9")))) (re.opt (re.++ (str.to_re ".") ((_ re.loop 1 2) (re.range "0" "9")))) (str.to_re ")")) (re.++ (re.opt (str.to_re "$")) (re.opt (str.to_re "-")) (re.union (str.to_re "0") (re.++ (re.range "1" "9") ((_ re.loop 0 6) (re.range "0" "9")))) (re.opt (re.++ (str.to_re ".") ((_ re.loop 1 2) (re.range "0" "9")))) (str.to_re "\u{0a}")))))
(check-sat)
