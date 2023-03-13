(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; ([a-z\s.\-_'])*<\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*\>|^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*
(assert (not (str.in_re X (re.union (re.++ (re.* (re.union (re.range "a" "z") (str.to_re ".") (str.to_re "-") (str.to_re "_") (str.to_re "'") (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re "<") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.* (re.++ (re.union (str.to_re "-") (str.to_re "+") (str.to_re ".") (str.to_re "'")) (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))))) (str.to_re "@") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.* (re.++ (re.union (str.to_re "-") (str.to_re ".")) (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))))) (str.to_re ".") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.* (re.++ (re.union (str.to_re "-") (str.to_re ".")) (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))))) (str.to_re ">")) (re.++ (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.* (re.++ (re.union (str.to_re "-") (str.to_re "+") (str.to_re ".") (str.to_re "'")) (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))))) (str.to_re "@") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.* (re.++ (re.union (str.to_re "-") (str.to_re ".")) (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))))) (str.to_re ".") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.* (re.++ (re.union (str.to_re "-") (str.to_re ".")) (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))))) (str.to_re "\u{0a}"))))))
; /filename=[^\n]*\u{2e}reg/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{0a}"))) (str.to_re ".reg/i\u{0a}")))))
; (^(5[0678])\d{11,18}$)|(^(6[^05])\d{11,18}$)|(^(601)[^1]\d{9,16}$)|(^(6011)\d{9,11}$)|(^(6011)\d{13,16}$)|(^(65)\d{11,13}$)|(^(65)\d{15,18}$)|(^(49030)[2-9](\d{10}$|\d{12,13}$))|(^(49033)[5-9](\d{10}$|\d{12,13}$))|(^(49110)[1-2](\d{10}$|\d{12,13}$))|(^(49117)[4-9](\d{10}$|\d{12,13}$))|(^(49118)[0-2](\d{10}$|\d{12,13}$))|(^(4936)(\d{12}$|\d{14,15}$))
(assert (str.in_re X (re.union (re.++ ((_ re.loop 11 18) (re.range "0" "9")) (str.to_re "5") (re.union (str.to_re "0") (str.to_re "6") (str.to_re "7") (str.to_re "8"))) (re.++ ((_ re.loop 11 18) (re.range "0" "9")) (str.to_re "6") (re.union (str.to_re "0") (str.to_re "5"))) (re.++ (str.to_re "601") (re.comp (str.to_re "1")) ((_ re.loop 9 16) (re.range "0" "9"))) (re.++ (str.to_re "6011") ((_ re.loop 9 11) (re.range "0" "9"))) (re.++ (str.to_re "6011") ((_ re.loop 13 16) (re.range "0" "9"))) (re.++ (str.to_re "65") ((_ re.loop 11 13) (re.range "0" "9"))) (re.++ (str.to_re "65") ((_ re.loop 15 18) (re.range "0" "9"))) (re.++ (str.to_re "49030") (re.range "2" "9") (re.union ((_ re.loop 10 10) (re.range "0" "9")) ((_ re.loop 12 13) (re.range "0" "9")))) (re.++ (str.to_re "49033") (re.range "5" "9") (re.union ((_ re.loop 10 10) (re.range "0" "9")) ((_ re.loop 12 13) (re.range "0" "9")))) (re.++ (str.to_re "49110") (re.range "1" "2") (re.union ((_ re.loop 10 10) (re.range "0" "9")) ((_ re.loop 12 13) (re.range "0" "9")))) (re.++ (str.to_re "49117") (re.range "4" "9") (re.union ((_ re.loop 10 10) (re.range "0" "9")) ((_ re.loop 12 13) (re.range "0" "9")))) (re.++ (str.to_re "49118") (re.range "0" "2") (re.union ((_ re.loop 10 10) (re.range "0" "9")) ((_ re.loop 12 13) (re.range "0" "9")))) (re.++ (str.to_re "\u{0a}4936") (re.union ((_ re.loop 12 12) (re.range "0" "9")) ((_ re.loop 14 15) (re.range "0" "9")))))))
(check-sat)
