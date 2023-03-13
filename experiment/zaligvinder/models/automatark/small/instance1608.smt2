(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; ^([^\s]){5,12}$
(assert (not (str.in_re X (re.++ ((_ re.loop 5 12) (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re "\u{0a}")))))
; ^[2-5](2|4|6|8|0)(A(A)?|B|C|D(D(D)?)?|E|F|G|H)$
(assert (str.in_re X (re.++ (re.range "2" "5") (re.union (str.to_re "2") (str.to_re "4") (str.to_re "6") (str.to_re "8") (str.to_re "0")) (re.union (re.++ (str.to_re "A") (re.opt (str.to_re "A"))) (str.to_re "B") (str.to_re "C") (re.++ (str.to_re "D") (re.opt (re.++ (str.to_re "D") (re.opt (str.to_re "D"))))) (str.to_re "E") (str.to_re "F") (str.to_re "G") (str.to_re "H")) (str.to_re "\u{0a}"))))
; DmInf\x5E\x0D\x0A\x0D\x0AAttached\x2Fbar_pl\x2Fchk\.fcgi
(assert (not (str.in_re X (str.to_re "DmInf^\u{0d}\u{0a}\u{0d}\u{0a}Attached/bar_pl/chk.fcgi\u{0a}"))))
; (^|\s|\()((([1-9]){1}|([0][1-9]){1}|([1][012]){1}){1}[\/-]((2[0-9]){1}|(3[01]){1}|([01][1-9]){1}|([1-9]){1}){1}[\/-](((19|20)([0-9][0-9]){1}|([0-9][0-9]){1})){1}(([\s|\)|:])|(^|\s|\()((([0-9]){1}|([0][1-9]){1}|([1][012]){1}){1}[\/-](([11-31]){1}|([01][1-9]){1}|([1-9]){1}){1}[\/-](((19|20)([0-9][0-9]){1}|([0-9][0-9]){1})){1}(([\s|\)|:|$|\>])){1}){1}){1}){1}
(assert (str.in_re X (re.++ (re.union (str.to_re "(") (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}")) ((_ re.loop 1 1) (re.++ ((_ re.loop 1 1) (re.union ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 1 1) (re.++ (str.to_re "0") (re.range "1" "9"))) ((_ re.loop 1 1) (re.++ (str.to_re "1") (re.union (str.to_re "0") (str.to_re "1") (str.to_re "2")))))) (re.union (str.to_re "/") (str.to_re "-")) ((_ re.loop 1 1) (re.union ((_ re.loop 1 1) (re.++ (str.to_re "2") (re.range "0" "9"))) ((_ re.loop 1 1) (re.++ (str.to_re "3") (re.union (str.to_re "0") (str.to_re "1")))) ((_ re.loop 1 1) (re.++ (re.union (str.to_re "0") (str.to_re "1")) (re.range "1" "9"))) ((_ re.loop 1 1) (re.range "1" "9")))) (re.union (str.to_re "/") (str.to_re "-")) ((_ re.loop 1 1) (re.union (re.++ (re.union (str.to_re "19") (str.to_re "20")) ((_ re.loop 1 1) (re.++ (re.range "0" "9") (re.range "0" "9")))) ((_ re.loop 1 1) (re.++ (re.range "0" "9") (re.range "0" "9"))))) ((_ re.loop 1 1) (re.union (re.++ (re.union (str.to_re "(") (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}")) ((_ re.loop 1 1) (re.++ ((_ re.loop 1 1) (re.union ((_ re.loop 1 1) (re.range "0" "9")) ((_ re.loop 1 1) (re.++ (str.to_re "0") (re.range "1" "9"))) ((_ re.loop 1 1) (re.++ (str.to_re "1") (re.union (str.to_re "0") (str.to_re "1") (str.to_re "2")))))) (re.union (str.to_re "/") (str.to_re "-")) ((_ re.loop 1 1) (re.union ((_ re.loop 1 1) (re.union (str.to_re "1") (re.range "1" "3"))) ((_ re.loop 1 1) (re.++ (re.union (str.to_re "0") (str.to_re "1")) (re.range "1" "9"))) ((_ re.loop 1 1) (re.range "1" "9")))) (re.union (str.to_re "/") (str.to_re "-")) ((_ re.loop 1 1) (re.union (re.++ (re.union (str.to_re "19") (str.to_re "20")) ((_ re.loop 1 1) (re.++ (re.range "0" "9") (re.range "0" "9")))) ((_ re.loop 1 1) (re.++ (re.range "0" "9") (re.range "0" "9"))))) ((_ re.loop 1 1) (re.union (str.to_re "|") (str.to_re ")") (str.to_re ":") (str.to_re "$") (str.to_re ">") (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}")))))) (str.to_re "|") (str.to_re ")") (str.to_re ":") (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))))) (str.to_re "\u{0a}"))))
; ^(V-|I-)?[0-9]{4}$
(assert (not (str.in_re X (re.++ (re.opt (re.union (str.to_re "V-") (str.to_re "I-"))) ((_ re.loop 4 4) (re.range "0" "9")) (str.to_re "\u{0a}")))))
(check-sat)
