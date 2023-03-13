(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; ((^((1[8-9]\d{2})|([2-9]\d{3}))(10|12|0?[13578])(3[01]|[12][0-9]|0?[1-9])$)|(^((1[8-9]\d{2})|([2-9]\d{3}))(11|0?[469])(30|[12][0-9]|0?[1-9])$)|(^((1[8-9]\d{2})|([2-9]\d{3}))(0?2)(2[0-8]|1[0-9]|0?[1-9])$)|(^([2468][048]00)(0?2)(29)$)|(^([3579][26]00)(0?2)(29)$)|(^([1][89][0][48])(0?2)(29)$)|(^([2-9][0-9][0][48])(0?2)(29)$)|(^([1][89][2468][048])(0?2)(29)$)|(^([2-9][0-9][2468][048])(0?2)(29)$)|(^([1][89][13579][26])(0?2)(29)$)|(^([2-9][0-9][13579][26])(0?2)(29)$))
(assert (not (str.in_re X (re.++ (re.union (re.++ (re.union (re.++ (str.to_re "1") (re.range "8" "9") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (re.range "2" "9") ((_ re.loop 3 3) (re.range "0" "9")))) (re.union (str.to_re "10") (str.to_re "12") (re.++ (re.opt (str.to_re "0")) (re.union (str.to_re "1") (str.to_re "3") (str.to_re "5") (str.to_re "7") (str.to_re "8")))) (re.union (re.++ (str.to_re "3") (re.union (str.to_re "0") (str.to_re "1"))) (re.++ (re.union (str.to_re "1") (str.to_re "2")) (re.range "0" "9")) (re.++ (re.opt (str.to_re "0")) (re.range "1" "9")))) (re.++ (re.union (re.++ (str.to_re "1") (re.range "8" "9") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (re.range "2" "9") ((_ re.loop 3 3) (re.range "0" "9")))) (re.union (str.to_re "11") (re.++ (re.opt (str.to_re "0")) (re.union (str.to_re "4") (str.to_re "6") (str.to_re "9")))) (re.union (str.to_re "30") (re.++ (re.union (str.to_re "1") (str.to_re "2")) (re.range "0" "9")) (re.++ (re.opt (str.to_re "0")) (re.range "1" "9")))) (re.++ (re.union (re.++ (str.to_re "1") (re.range "8" "9") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (re.range "2" "9") ((_ re.loop 3 3) (re.range "0" "9")))) (re.union (re.++ (str.to_re "2") (re.range "0" "8")) (re.++ (str.to_re "1") (re.range "0" "9")) (re.++ (re.opt (str.to_re "0")) (re.range "1" "9"))) (re.opt (str.to_re "0")) (str.to_re "2")) (re.++ (str.to_re "29") (re.union (str.to_re "2") (str.to_re "4") (str.to_re "6") (str.to_re "8")) (re.union (str.to_re "0") (str.to_re "4") (str.to_re "8")) (str.to_re "00") (re.opt (str.to_re "0")) (str.to_re "2")) (re.++ (str.to_re "29") (re.union (str.to_re "3") (str.to_re "5") (str.to_re "7") (str.to_re "9")) (re.union (str.to_re "2") (str.to_re "6")) (str.to_re "00") (re.opt (str.to_re "0")) (str.to_re "2")) (re.++ (str.to_re "291") (re.union (str.to_re "8") (str.to_re "9")) (str.to_re "0") (re.union (str.to_re "4") (str.to_re "8")) (re.opt (str.to_re "0")) (str.to_re "2")) (re.++ (str.to_re "29") (re.range "2" "9") (re.range "0" "9") (str.to_re "0") (re.union (str.to_re "4") (str.to_re "8")) (re.opt (str.to_re "0")) (str.to_re "2")) (re.++ (str.to_re "291") (re.union (str.to_re "8") (str.to_re "9")) (re.union (str.to_re "2") (str.to_re "4") (str.to_re "6") (str.to_re "8")) (re.union (str.to_re "0") (str.to_re "4") (str.to_re "8")) (re.opt (str.to_re "0")) (str.to_re "2")) (re.++ (str.to_re "29") (re.range "2" "9") (re.range "0" "9") (re.union (str.to_re "2") (str.to_re "4") (str.to_re "6") (str.to_re "8")) (re.union (str.to_re "0") (str.to_re "4") (str.to_re "8")) (re.opt (str.to_re "0")) (str.to_re "2")) (re.++ (str.to_re "291") (re.union (str.to_re "8") (str.to_re "9")) (re.union (str.to_re "1") (str.to_re "3") (str.to_re "5") (str.to_re "7") (str.to_re "9")) (re.union (str.to_re "2") (str.to_re "6")) (re.opt (str.to_re "0")) (str.to_re "2")) (re.++ (str.to_re "29") (re.range "2" "9") (re.range "0" "9") (re.union (str.to_re "1") (str.to_re "3") (str.to_re "5") (str.to_re "7") (str.to_re "9")) (re.union (str.to_re "2") (str.to_re "6")) (re.opt (str.to_re "0")) (str.to_re "2"))) (str.to_re "\u{0a}")))))
; too[^\n\r]*User-Agent\x3A\sHost\x3A.*IP-WindowsAttachedPalas\x2Estarware\x2Ecom\x2Fdp\x2Fsearch\?x=
(assert (not (str.in_re X (re.++ (str.to_re "too") (re.* (re.union (str.to_re "\u{0a}") (str.to_re "\u{0d}"))) (str.to_re "User-Agent:") (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}")) (str.to_re "Host:") (re.* re.allchar) (str.to_re "IP-WindowsAttachedPalas.starware.com/dp/search?x=\u{0a}")))))
; ^(^(([0-9A-F]{1,4}(((:[0-9A-F]{1,4}){5}::[0-9A-F]{1,4})|((:[0-9A-F]{1,4}){4}::[0-9A-F]{1,4}(:[0-9A-F]{1,4}){0,1})|((:[0-9A-F]{1,4}){3}::[0-9A-F]{1,4}(:[0-9A-F]{1,4}){0,2})|((:[0-9A-F]{1,4}){2}::[0-9A-F]{1,4}(:[0-9A-F]{1,4}){0,3})|(:[0-9A-F]{1,4}::[0-9A-F]{1,4}(:[0-9A-F]{1,4}){0,4})|(::[0-9A-F]{1,4}(:[0-9A-F]{1,4}){0,5})|(:[0-9A-F]{1,4}){7}))$|^(::[0-9A-F]{1,4}(:[0-9A-F]{1,4}){0,6})$)|^::$)|^((([0-9A-F]{1,4}(((:[0-9A-F]{1,4}){3}::([0-9A-F]{1,4}){1})|((:[0-9A-F]{1,4}){2}::[0-9A-F]{1,4}(:[0-9A-F]{1,4}){0,1})|((:[0-9A-F]{1,4}){1}::[0-9A-F]{1,4}(:[0-9A-F]{1,4}){0,2})|(::[0-9A-F]{1,4}(:[0-9A-F]{1,4}){0,3})|((:[0-9A-F]{1,4}){0,5})))|([:]{2}[0-9A-F]{1,4}(:[0-9A-F]{1,4}){0,4})):|::)((25[0-5]|2[0-4][0-9]|[0-1]?[0-9]{0,2})\.){3}(25[0-5]|2[0-4][0-9]|[0-1]?[0-9]{0,2})$$
(assert (str.in_re X (re.union (re.++ (re.union (re.++ (re.union (re.++ ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.range "A" "F"))) (re.union (re.++ ((_ re.loop 3 3) (re.++ (str.to_re ":") ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.range "A" "F"))))) (str.to_re "::") ((_ re.loop 1 1) ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.range "A" "F"))))) (re.++ ((_ re.loop 2 2) (re.++ (str.to_re ":") ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.range "A" "F"))))) (str.to_re "::") ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.range "A" "F"))) (re.opt (re.++ (str.to_re ":") ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.range "A" "F")))))) (re.++ ((_ re.loop 1 1) (re.++ (str.to_re ":") ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.range "A" "F"))))) (str.to_re "::") ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.range "A" "F"))) ((_ re.loop 0 2) (re.++ (str.to_re ":") ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.range "A" "F")))))) (re.++ (str.to_re "::") ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.range "A" "F"))) ((_ re.loop 0 3) (re.++ (str.to_re ":") ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.range "A" "F")))))) ((_ re.loop 0 5) (re.++ (str.to_re ":") ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.range "A" "F"))))))) (re.++ ((_ re.loop 2 2) (str.to_re ":")) ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.range "A" "F"))) ((_ re.loop 0 4) (re.++ (str.to_re ":") ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.range "A" "F"))))))) (str.to_re ":")) (str.to_re "::")) ((_ re.loop 3 3) (re.++ (re.union (re.++ (str.to_re "25") (re.range "0" "5")) (re.++ (str.to_re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ (re.opt (re.range "0" "1")) ((_ re.loop 0 2) (re.range "0" "9")))) (str.to_re "."))) (re.union (re.++ (str.to_re "25") (re.range "0" "5")) (re.++ (str.to_re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ (re.opt (re.range "0" "1")) ((_ re.loop 0 2) (re.range "0" "9")))) (str.to_re "\u{0a}")) (str.to_re "::") (re.++ ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.range "A" "F"))) (re.union (re.++ ((_ re.loop 5 5) (re.++ (str.to_re ":") ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.range "A" "F"))))) (str.to_re "::") ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.range "A" "F")))) (re.++ ((_ re.loop 4 4) (re.++ (str.to_re ":") ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.range "A" "F"))))) (str.to_re "::") ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.range "A" "F"))) (re.opt (re.++ (str.to_re ":") ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.range "A" "F")))))) (re.++ ((_ re.loop 3 3) (re.++ (str.to_re ":") ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.range "A" "F"))))) (str.to_re "::") ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.range "A" "F"))) ((_ re.loop 0 2) (re.++ (str.to_re ":") ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.range "A" "F")))))) (re.++ ((_ re.loop 2 2) (re.++ (str.to_re ":") ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.range "A" "F"))))) (str.to_re "::") ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.range "A" "F"))) ((_ re.loop 0 3) (re.++ (str.to_re ":") ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.range "A" "F")))))) (re.++ (str.to_re ":") ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.range "A" "F"))) (str.to_re "::") ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.range "A" "F"))) ((_ re.loop 0 4) (re.++ (str.to_re ":") ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.range "A" "F")))))) (re.++ (str.to_re "::") ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.range "A" "F"))) ((_ re.loop 0 5) (re.++ (str.to_re ":") ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.range "A" "F")))))) ((_ re.loop 7 7) (re.++ (str.to_re ":") ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.range "A" "F"))))))) (re.++ (str.to_re "::") ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.range "A" "F"))) ((_ re.loop 0 6) (re.++ (str.to_re ":") ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.range "A" "F")))))))))
; /filename=[^\n]*\u{2e}wm/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{0a}"))) (str.to_re ".wm/i\u{0a}")))))
(check-sat)
