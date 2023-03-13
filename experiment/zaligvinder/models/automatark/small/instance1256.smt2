(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; ^(010|011|012)[0-9]{7}$
(assert (not (str.in_re X (re.++ ((_ re.loop 7 7) (re.range "0" "9")) (str.to_re "\u{0a}01") (re.union (str.to_re "0") (str.to_re "1") (str.to_re "2"))))))
; (([a-zA-Z]{3}[0-9]{3})|(\w{2}-\w{2}-\w{2})|([0-9]{2}-[a-zA-Z]{3}-[0-9]{1})|([0-9]{1}-[a-zA-Z]{3}-[0-9]{2})|([a-zA-Z]{1}-[0-9]{3}-[a-zA-Z]{2}))
(assert (not (str.in_re X (re.++ (re.union (re.++ ((_ re.loop 3 3) (re.union (re.range "a" "z") (re.range "A" "Z"))) ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "-") ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "-") ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")))) (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (str.to_re "-") ((_ re.loop 3 3) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to_re "-") ((_ re.loop 1 1) (re.range "0" "9"))) (re.++ ((_ re.loop 1 1) (re.range "0" "9")) (str.to_re "-") ((_ re.loop 3 3) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to_re "-") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ ((_ re.loop 1 1) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to_re "-") ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re "-") ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "A" "Z"))))) (str.to_re "\u{0a}")))))
(check-sat)
