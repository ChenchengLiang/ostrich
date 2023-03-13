(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; Points\d+Host\u{3a}\stoBasicwww\x2Ewebcruiser\x2Ecc
(assert (not (str.in_re X (re.++ (str.to_re "Points") (re.+ (re.range "0" "9")) (str.to_re "Host:") (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}")) (str.to_re "toBasicwww.webcruiser.cc\u{0a}")))))
; ^(([1-9][0-9]{0,3}|[1-4][0-9]{4}|5([0-8][0-9]{3}|9([0-2][0-9]{2}|3([0-8][0-9]|9[01]))))|(6(4(5(1[2-9]|[2-9][0-9])|[6-9][0-9]{2})|5([0-4][0-9]{2}|5([0-2][0-9]|3[0-4]))))|(1(3(1(0(7[2-9]|[89][0-9])|[1-9][0-9]{2})|[2-9][0-9]{3})|[4-9][0-9]{4})|[2-9][0-9]{5}|[1-9][0-9]{6,8}|[1-3][0-9]{9}|4([01][0-9]{8}|2([0-8][0-9]{7}|9([0-3][0-9]{6}|4([0-8][0-9]{5}|9([0-5][0-9]{4}|6([0-6][0-9]{3}|7([01][0-9]{2}|2([0-8][0-9]|9[0-4]))))))))))$
(assert (str.in_re X (re.++ (re.union (re.++ (str.to_re "6") (re.union (re.++ (str.to_re "4") (re.union (re.++ (str.to_re "5") (re.union (re.++ (str.to_re "1") (re.range "2" "9")) (re.++ (re.range "2" "9") (re.range "0" "9")))) (re.++ (re.range "6" "9") ((_ re.loop 2 2) (re.range "0" "9"))))) (re.++ (str.to_re "5") (re.union (re.++ (re.range "0" "4") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (str.to_re "5") (re.union (re.++ (re.range "0" "2") (re.range "0" "9")) (re.++ (str.to_re "3") (re.range "0" "4")))))))) (re.++ (re.range "1" "9") ((_ re.loop 0 3) (re.range "0" "9"))) (re.++ (re.range "1" "4") ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ (str.to_re "5") (re.union (re.++ (re.range "0" "8") ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ (str.to_re "9") (re.union (re.++ (re.range "0" "2") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (str.to_re "3") (re.union (re.++ (re.range "0" "8") (re.range "0" "9")) (re.++ (str.to_re "9") (re.union (str.to_re "0") (str.to_re "1"))))))))) (re.++ (str.to_re "1") (re.union (re.++ (str.to_re "3") (re.union (re.++ (str.to_re "1") (re.union (re.++ (str.to_re "0") (re.union (re.++ (str.to_re "7") (re.range "2" "9")) (re.++ (re.union (str.to_re "8") (str.to_re "9")) (re.range "0" "9")))) (re.++ (re.range "1" "9") ((_ re.loop 2 2) (re.range "0" "9"))))) (re.++ (re.range "2" "9") ((_ re.loop 3 3) (re.range "0" "9"))))) (re.++ (re.range "4" "9") ((_ re.loop 4 4) (re.range "0" "9"))))) (re.++ (re.range "2" "9") ((_ re.loop 5 5) (re.range "0" "9"))) (re.++ (re.range "1" "9") ((_ re.loop 6 8) (re.range "0" "9"))) (re.++ (re.range "1" "3") ((_ re.loop 9 9) (re.range "0" "9"))) (re.++ (str.to_re "4") (re.union (re.++ (re.union (str.to_re "0") (str.to_re "1")) ((_ re.loop 8 8) (re.range "0" "9"))) (re.++ (str.to_re "2") (re.union (re.++ (re.range "0" "8") ((_ re.loop 7 7) (re.range "0" "9"))) (re.++ (str.to_re "9") (re.union (re.++ (re.range "0" "3") ((_ re.loop 6 6) (re.range "0" "9"))) (re.++ (str.to_re "4") (re.union (re.++ (re.range "0" "8") ((_ re.loop 5 5) (re.range "0" "9"))) (re.++ (str.to_re "9") (re.union (re.++ (re.range "0" "5") ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ (str.to_re "6") (re.union (re.++ (re.range "0" "6") ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ (str.to_re "7") (re.union (re.++ (re.union (str.to_re "0") (str.to_re "1")) ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (str.to_re "2") (re.union (re.++ (re.range "0" "8") (re.range "0" "9")) (re.++ (str.to_re "9") (re.range "0" "4"))))))))))))))))))) (str.to_re "\u{0a}"))))
; ^(\+|-)?(\d\.\d{1,6}|[1-9]\d\.\d{1,6}|1[1-7]\d\.\d{1,6}|180\.0{1,6})$
(assert (str.in_re X (re.++ (re.opt (re.union (str.to_re "+") (str.to_re "-"))) (re.union (re.++ (re.range "0" "9") (str.to_re ".") ((_ re.loop 1 6) (re.range "0" "9"))) (re.++ (re.range "1" "9") (re.range "0" "9") (str.to_re ".") ((_ re.loop 1 6) (re.range "0" "9"))) (re.++ (str.to_re "1") (re.range "1" "7") (re.range "0" "9") (str.to_re ".") ((_ re.loop 1 6) (re.range "0" "9"))) (re.++ (str.to_re "180.") ((_ re.loop 1 6) (str.to_re "0")))) (str.to_re "\u{0a}"))))
; ^[-+]?\d+(\.\d{2})?$
(assert (not (str.in_re X (re.++ (re.opt (re.union (str.to_re "-") (str.to_re "+"))) (re.+ (re.range "0" "9")) (re.opt (re.++ (str.to_re ".") ((_ re.loop 2 2) (re.range "0" "9")))) (str.to_re "\u{0a}")))))
(check-sat)
