(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; ^([30|36|38]{2})([0-9]{12})$
(assert (str.in_re X (re.++ ((_ re.loop 2 2) (re.union (str.to_re "3") (str.to_re "0") (str.to_re "|") (str.to_re "6") (str.to_re "8"))) ((_ re.loop 12 12) (re.range "0" "9")) (str.to_re "\u{0a}"))))
; ([a-z\s.\-_'])*<\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*\>
(assert (str.in_re X (re.++ (re.* (re.union (re.range "a" "z") (str.to_re ".") (str.to_re "-") (str.to_re "_") (str.to_re "'") (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re "<") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.* (re.++ (re.union (str.to_re "-") (str.to_re "+") (str.to_re ".") (str.to_re "'")) (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))))) (str.to_re "@") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.* (re.++ (re.union (str.to_re "-") (str.to_re ".")) (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))))) (str.to_re ".") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.* (re.++ (re.union (str.to_re "-") (str.to_re ".")) (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))))) (str.to_re ">\u{0a}"))))
; corep\x2Edmcast\x2EcomOwner\x3A
(assert (not (str.in_re X (str.to_re "corep.dmcast.comOwner:\u{0a}"))))
; ^\((([2-7][0-9]{2})|(8(0[^0]|[^0]0|1\d|2[^2]|[^2]2|3[^3]|[^3]3|4[^4]|[^4]4|5[^5]|[^5]5|6[^6]|[^6]6|7[^7]|[^7]7|8[^8]|[^8]8|9\d){1})|(9(0[^0]|[^0]0|[1-9][1-9])))\)\s?[0-9]{3}(-|\s)?[0-9]{4}$|^(([2-7][0-9]{2})|(8(0[^0]|[^0]0|1\d|2[^2]|[^2]2|3[^3]|[^3]3|4[^4]|[^4]4|5[^5]|[^5]5|6[^6]|[^6]6|7[^7]|[^7]7|8[^8]|[^8]8|9\d){1})|(9(0[^0]|[^0]0|[1-9][1-9])))-?[0-9]{3}-?[0-9]{4}$
(assert (str.in_re X (re.union (re.++ (str.to_re "(") (re.union (re.++ (re.range "2" "7") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (str.to_re "8") ((_ re.loop 1 1) (re.union (re.++ (str.to_re "0") (re.comp (str.to_re "0"))) (re.++ (re.comp (str.to_re "0")) (str.to_re "0")) (re.++ (str.to_re "1") (re.range "0" "9")) (re.++ (str.to_re "2") (re.comp (str.to_re "2"))) (re.++ (re.comp (str.to_re "2")) (str.to_re "2")) (re.++ (str.to_re "3") (re.comp (str.to_re "3"))) (re.++ (re.comp (str.to_re "3")) (str.to_re "3")) (re.++ (str.to_re "4") (re.comp (str.to_re "4"))) (re.++ (re.comp (str.to_re "4")) (str.to_re "4")) (re.++ (str.to_re "5") (re.comp (str.to_re "5"))) (re.++ (re.comp (str.to_re "5")) (str.to_re "5")) (re.++ (str.to_re "6") (re.comp (str.to_re "6"))) (re.++ (re.comp (str.to_re "6")) (str.to_re "6")) (re.++ (str.to_re "7") (re.comp (str.to_re "7"))) (re.++ (re.comp (str.to_re "7")) (str.to_re "7")) (re.++ (str.to_re "8") (re.comp (str.to_re "8"))) (re.++ (re.comp (str.to_re "8")) (str.to_re "8")) (re.++ (str.to_re "9") (re.range "0" "9"))))) (re.++ (str.to_re "9") (re.union (re.++ (str.to_re "0") (re.comp (str.to_re "0"))) (re.++ (re.comp (str.to_re "0")) (str.to_re "0")) (re.++ (re.range "1" "9") (re.range "1" "9"))))) (str.to_re ")") (re.opt (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to_re "-") (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ (re.union (re.++ (re.range "2" "7") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (str.to_re "8") ((_ re.loop 1 1) (re.union (re.++ (str.to_re "0") (re.comp (str.to_re "0"))) (re.++ (re.comp (str.to_re "0")) (str.to_re "0")) (re.++ (str.to_re "1") (re.range "0" "9")) (re.++ (str.to_re "2") (re.comp (str.to_re "2"))) (re.++ (re.comp (str.to_re "2")) (str.to_re "2")) (re.++ (str.to_re "3") (re.comp (str.to_re "3"))) (re.++ (re.comp (str.to_re "3")) (str.to_re "3")) (re.++ (str.to_re "4") (re.comp (str.to_re "4"))) (re.++ (re.comp (str.to_re "4")) (str.to_re "4")) (re.++ (str.to_re "5") (re.comp (str.to_re "5"))) (re.++ (re.comp (str.to_re "5")) (str.to_re "5")) (re.++ (str.to_re "6") (re.comp (str.to_re "6"))) (re.++ (re.comp (str.to_re "6")) (str.to_re "6")) (re.++ (str.to_re "7") (re.comp (str.to_re "7"))) (re.++ (re.comp (str.to_re "7")) (str.to_re "7")) (re.++ (str.to_re "8") (re.comp (str.to_re "8"))) (re.++ (re.comp (str.to_re "8")) (str.to_re "8")) (re.++ (str.to_re "9") (re.range "0" "9"))))) (re.++ (str.to_re "9") (re.union (re.++ (str.to_re "0") (re.comp (str.to_re "0"))) (re.++ (re.comp (str.to_re "0")) (str.to_re "0")) (re.++ (re.range "1" "9") (re.range "1" "9"))))) (re.opt (str.to_re "-")) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (str.to_re "-")) ((_ re.loop 4 4) (re.range "0" "9")) (str.to_re "\u{0a}")))))
(check-sat)
