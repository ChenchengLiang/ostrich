(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; ^((02[0-9]{2})|(0[8-9][0-9]{2})|(1[0-9]{3})|(2[0-7][0-9]{2})|(28[0-8][0-9])|(289[0-8])|(29[0-9]{2})|([3-5][0-9]{3})|(6[0-6][0-9]{2})|(67[0-8][0-9])|(679[0-7])|(6[8-9][0-9]{2})|([7-9][0-9]{3}))$
(assert (not (str.in_re X (re.++ (re.union (re.++ (str.to_re "02") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (str.to_re "0") (re.range "8" "9") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (str.to_re "1") ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ (str.to_re "2") (re.range "0" "7") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (str.to_re "28") (re.range "0" "8") (re.range "0" "9")) (re.++ (str.to_re "289") (re.range "0" "8")) (re.++ (str.to_re "29") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (re.range "3" "5") ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ (str.to_re "6") (re.range "0" "6") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (str.to_re "67") (re.range "0" "8") (re.range "0" "9")) (re.++ (str.to_re "679") (re.range "0" "7")) (re.++ (str.to_re "6") (re.range "8" "9") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (re.range "7" "9") ((_ re.loop 3 3) (re.range "0" "9")))) (str.to_re "\u{0a}")))))
; /[a-z]{2}_[a-z0-9]{8}\.mod/Ui
(assert (str.in_re X (re.++ (str.to_re "/") ((_ re.loop 2 2) (re.range "a" "z")) (str.to_re "_") ((_ re.loop 8 8) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to_re ".mod/Ui\u{0a}"))))
; ^[A-G](b|#)?((m(aj)?|M|aug|dim|sus)([2-7]|9|13)?)?(\/[A-G](b|#)?)?$
(assert (str.in_re X (re.++ (re.range "A" "G") (re.opt (re.union (str.to_re "b") (str.to_re "#"))) (re.opt (re.++ (re.union (re.++ (str.to_re "m") (re.opt (str.to_re "aj"))) (str.to_re "M") (str.to_re "aug") (str.to_re "dim") (str.to_re "sus")) (re.opt (re.union (re.range "2" "7") (str.to_re "9") (str.to_re "13"))))) (re.opt (re.++ (str.to_re "/") (re.range "A" "G") (re.opt (re.union (str.to_re "b") (str.to_re "#"))))) (str.to_re "\u{0a}"))))
; (0?[1-9]|[12][0-9]|3[01])-(0?[1-9]|1[012])-((19|20)\\d\\d)
(assert (str.in_re X (re.++ (re.union (re.++ (re.opt (str.to_re "0")) (re.range "1" "9")) (re.++ (re.union (str.to_re "1") (str.to_re "2")) (re.range "0" "9")) (re.++ (str.to_re "3") (re.union (str.to_re "0") (str.to_re "1")))) (str.to_re "-") (re.union (re.++ (re.opt (str.to_re "0")) (re.range "1" "9")) (re.++ (str.to_re "1") (re.union (str.to_re "0") (str.to_re "1") (str.to_re "2")))) (str.to_re "-\u{0a}") (re.union (str.to_re "19") (str.to_re "20")) (str.to_re "\u{5c}d\u{5c}d"))))
; ^([A-Z|a-z|&]{3})(([0-9]{2})([0][13456789]|[1][012])([0][1-9]|[12][\d]|[3][0])|([0-9]{2})([0][13578]|[1][02])([0][1-9]|[12][\d]|[3][01])|([02468][048]|[13579][26])([0][2])([0][1-9]|[12][\d])|([1-9]{2})([0][2])([0][1-9]|[12][0-8]))(\w{2}[A|a|0-9]{1})$|^([A-Z|a-z]{4})(([0-9]{2})([0][13456789]|[1][012])([0][1-9]|[12][\d]|[3][0])|([0-9]{2})([0][13578]|[1][02])([0][1-9]|[12][\d]|[3][01])|([02468][048]|[13579][26])([0][2])([0][1-9]|[12][\d])|([1-9]{2})([0][2])([0][1-9]|[12][0-8]))((\w{2})([A|a|0-9]{1})){0,3}$
(assert (str.in_re X (re.union (re.++ ((_ re.loop 3 3) (re.union (re.range "A" "Z") (str.to_re "|") (re.range "a" "z") (str.to_re "&"))) (re.union (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.union (re.++ (str.to_re "0") (re.union (str.to_re "1") (str.to_re "3") (str.to_re "4") (str.to_re "5") (str.to_re "6") (str.to_re "7") (str.to_re "8") (str.to_re "9"))) (re.++ (str.to_re "1") (re.union (str.to_re "0") (str.to_re "1") (str.to_re "2")))) (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (re.union (str.to_re "1") (str.to_re "2")) (re.range "0" "9")) (str.to_re "30"))) (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.union (re.++ (str.to_re "0") (re.union (str.to_re "1") (str.to_re "3") (str.to_re "5") (str.to_re "7") (str.to_re "8"))) (re.++ (str.to_re "1") (re.union (str.to_re "0") (str.to_re "2")))) (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (re.union (str.to_re "1") (str.to_re "2")) (re.range "0" "9")) (re.++ (str.to_re "3") (re.union (str.to_re "0") (str.to_re "1"))))) (re.++ (re.union (re.++ (re.union (str.to_re "0") (str.to_re "2") (str.to_re "4") (str.to_re "6") (str.to_re "8")) (re.union (str.to_re "0") (str.to_re "4") (str.to_re "8"))) (re.++ (re.union (str.to_re "1") (str.to_re "3") (str.to_re "5") (str.to_re "7") (str.to_re "9")) (re.union (str.to_re "2") (str.to_re "6")))) (str.to_re "02") (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (re.union (str.to_re "1") (str.to_re "2")) (re.range "0" "9")))) (re.++ ((_ re.loop 2 2) (re.range "1" "9")) (str.to_re "02") (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (re.union (str.to_re "1") (str.to_re "2")) (re.range "0" "8"))))) ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) ((_ re.loop 1 1) (re.union (str.to_re "A") (str.to_re "|") (str.to_re "a") (re.range "0" "9")))) (re.++ ((_ re.loop 4 4) (re.union (re.range "A" "Z") (str.to_re "|") (re.range "a" "z"))) (re.union (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.union (re.++ (str.to_re "0") (re.union (str.to_re "1") (str.to_re "3") (str.to_re "4") (str.to_re "5") (str.to_re "6") (str.to_re "7") (str.to_re "8") (str.to_re "9"))) (re.++ (str.to_re "1") (re.union (str.to_re "0") (str.to_re "1") (str.to_re "2")))) (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (re.union (str.to_re "1") (str.to_re "2")) (re.range "0" "9")) (str.to_re "30"))) (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.union (re.++ (str.to_re "0") (re.union (str.to_re "1") (str.to_re "3") (str.to_re "5") (str.to_re "7") (str.to_re "8"))) (re.++ (str.to_re "1") (re.union (str.to_re "0") (str.to_re "2")))) (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (re.union (str.to_re "1") (str.to_re "2")) (re.range "0" "9")) (re.++ (str.to_re "3") (re.union (str.to_re "0") (str.to_re "1"))))) (re.++ (re.union (re.++ (re.union (str.to_re "0") (str.to_re "2") (str.to_re "4") (str.to_re "6") (str.to_re "8")) (re.union (str.to_re "0") (str.to_re "4") (str.to_re "8"))) (re.++ (re.union (str.to_re "1") (str.to_re "3") (str.to_re "5") (str.to_re "7") (str.to_re "9")) (re.union (str.to_re "2") (str.to_re "6")))) (str.to_re "02") (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (re.union (str.to_re "1") (str.to_re "2")) (re.range "0" "9")))) (re.++ ((_ re.loop 2 2) (re.range "1" "9")) (str.to_re "02") (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (re.union (str.to_re "1") (str.to_re "2")) (re.range "0" "8"))))) ((_ re.loop 0 3) (re.++ ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) ((_ re.loop 1 1) (re.union (str.to_re "A") (str.to_re "|") (str.to_re "a") (re.range "0" "9"))))) (str.to_re "\u{0a}")))))
(check-sat)
