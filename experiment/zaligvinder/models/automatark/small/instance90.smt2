(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; ^((((31\/(0?[13578]|1[02]))|((29|30)\/(0?[1,3-9]|1[0-2])))\/(1[6-9]|[2-9]\d)?\d{2})|(29\/0?2\/(((1[6-9]|[2-9]\d)?(0[48]|[2468][048]|[13579][26])|((16|[2468][048]|[3579][26])00))))|(0?[1-9]|1\d|2[0-8])\/((0?[1-9])|(1[0-2]))\/((1[6-9]|[2-9]\d)?\d{2})) (20|21|22|23|[0-1]?\d):([0-5]?)\d$
(assert (str.in_re X (re.++ (re.union (re.++ (re.union (re.++ (str.to_re "31/") (re.union (re.++ (re.opt (str.to_re "0")) (re.union (str.to_re "1") (str.to_re "3") (str.to_re "5") (str.to_re "7") (str.to_re "8"))) (re.++ (str.to_re "1") (re.union (str.to_re "0") (str.to_re "2"))))) (re.++ (re.union (str.to_re "29") (str.to_re "30")) (str.to_re "/") (re.union (re.++ (re.opt (str.to_re "0")) (re.union (str.to_re "1") (str.to_re ",") (re.range "3" "9"))) (re.++ (str.to_re "1") (re.range "0" "2"))))) (str.to_re "/") (re.opt (re.union (re.++ (str.to_re "1") (re.range "6" "9")) (re.++ (re.range "2" "9") (re.range "0" "9")))) ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (str.to_re "29/") (re.opt (str.to_re "0")) (str.to_re "2/") (re.union (re.++ (re.opt (re.union (re.++ (str.to_re "1") (re.range "6" "9")) (re.++ (re.range "2" "9") (re.range "0" "9")))) (re.union (re.++ (str.to_re "0") (re.union (str.to_re "4") (str.to_re "8"))) (re.++ (re.union (str.to_re "2") (str.to_re "4") (str.to_re "6") (str.to_re "8")) (re.union (str.to_re "0") (str.to_re "4") (str.to_re "8"))) (re.++ (re.union (str.to_re "1") (str.to_re "3") (str.to_re "5") (str.to_re "7") (str.to_re "9")) (re.union (str.to_re "2") (str.to_re "6"))))) (re.++ (re.union (str.to_re "16") (re.++ (re.union (str.to_re "2") (str.to_re "4") (str.to_re "6") (str.to_re "8")) (re.union (str.to_re "0") (str.to_re "4") (str.to_re "8"))) (re.++ (re.union (str.to_re "3") (str.to_re "5") (str.to_re "7") (str.to_re "9")) (re.union (str.to_re "2") (str.to_re "6")))) (str.to_re "00")))) (re.++ (re.union (re.++ (re.opt (str.to_re "0")) (re.range "1" "9")) (re.++ (str.to_re "1") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "8"))) (str.to_re "/") (re.union (re.++ (re.opt (str.to_re "0")) (re.range "1" "9")) (re.++ (str.to_re "1") (re.range "0" "2"))) (str.to_re "/") (re.opt (re.union (re.++ (str.to_re "1") (re.range "6" "9")) (re.++ (re.range "2" "9") (re.range "0" "9")))) ((_ re.loop 2 2) (re.range "0" "9")))) (str.to_re " ") (re.union (str.to_re "20") (str.to_re "21") (str.to_re "22") (str.to_re "23") (re.++ (re.opt (re.range "0" "1")) (re.range "0" "9"))) (str.to_re ":") (re.opt (re.range "0" "5")) (re.range "0" "9") (str.to_re "\u{0a}"))))
; ([0]{1}[6]{1}[-\s]*[1-9]{1}[\s]*([0-9]{1}[\s]*){7})|([0]{1}[1-9]{1}[0-9]{1}[0-9]{1}[-\s]*[1-9]{1}[\s]*([0-9]{1}[\s]*){5})|([0]{1}[1-9]{1}[0-9]{1}[-\s]*[1-9]{1}[\s]*([0-9]{1}[\s]*){6})
(assert (not (str.in_re X (re.union (re.++ ((_ re.loop 1 1) (str.to_re "0")) ((_ re.loop 1 1) (str.to_re "6")) (re.* (re.union (str.to_re "-") (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) ((_ re.loop 1 1) (re.range "1" "9")) (re.* (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) ((_ re.loop 7 7) (re.++ ((_ re.loop 1 1) (re.range "0" "9")) (re.* (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}")))))) (re.++ ((_ re.loop 1 1) (str.to_re "0")) ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 1 1) (re.range "0" "9")) ((_ re.loop 1 1) (re.range "0" "9")) (re.* (re.union (str.to_re "-") (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) ((_ re.loop 1 1) (re.range "1" "9")) (re.* (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) ((_ re.loop 5 5) (re.++ ((_ re.loop 1 1) (re.range "0" "9")) (re.* (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}")))))) (re.++ (str.to_re "\u{0a}") ((_ re.loop 1 1) (str.to_re "0")) ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 1 1) (re.range "0" "9")) (re.* (re.union (str.to_re "-") (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) ((_ re.loop 1 1) (re.range "1" "9")) (re.* (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) ((_ re.loop 6 6) (re.++ ((_ re.loop 1 1) (re.range "0" "9")) (re.* (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))))))))))
(check-sat)
