(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; /filename=[^\n]*\u{2e}mswmm/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{0a}"))) (str.to_re ".mswmm/i\u{0a}")))))
; ^(([a-zA-Z0-9]([a-zA-Z0-9\-]{0,61}[a-zA-Z0-9])?\.)+[a-zA-Z]{2,6}/(DC=['\w\d\s\-\&]+[,]*){2,})|((\d{1,2}|1\d\d|2[0-4]\d|25[0-5])\.(\d{1,2}|1\d\d|2[0-4]\d|25[0-5])\.(\d{1,2}|1\d\d|2[0-4]\d|25[0-5])\.(\d{1,2}|1\d\d|2[0-4]\d|25[0-5])/(DC=['\w\d\s\-\&]+[,]*){2,})|((DC=['\w\d\s\-\&]+[,]*){2,})$
(assert (str.in_re X (re.union (re.++ (re.+ (re.++ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9")) (re.opt (re.++ ((_ re.loop 0 61) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "-"))) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9")))) (str.to_re "."))) ((_ re.loop 2 6) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to_re "/") ((_ re.loop 2 2) (re.++ (str.to_re "DC=") (re.+ (re.union (str.to_re "'") (re.range "0" "9") (str.to_re "-") (str.to_re "&") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_") (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (re.* (str.to_re ",")))) (re.* (re.++ (str.to_re "DC=") (re.+ (re.union (str.to_re "'") (re.range "0" "9") (str.to_re "-") (str.to_re "&") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_") (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (re.* (str.to_re ","))))) (re.++ (re.union ((_ re.loop 1 2) (re.range "0" "9")) (re.++ (str.to_re "1") (re.range "0" "9") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ (str.to_re "25") (re.range "0" "5"))) (str.to_re ".") (re.union ((_ re.loop 1 2) (re.range "0" "9")) (re.++ (str.to_re "1") (re.range "0" "9") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ (str.to_re "25") (re.range "0" "5"))) (str.to_re ".") (re.union ((_ re.loop 1 2) (re.range "0" "9")) (re.++ (str.to_re "1") (re.range "0" "9") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ (str.to_re "25") (re.range "0" "5"))) (str.to_re ".") (re.union ((_ re.loop 1 2) (re.range "0" "9")) (re.++ (str.to_re "1") (re.range "0" "9") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ (str.to_re "25") (re.range "0" "5"))) (str.to_re "/") ((_ re.loop 2 2) (re.++ (str.to_re "DC=") (re.+ (re.union (str.to_re "'") (re.range "0" "9") (str.to_re "-") (str.to_re "&") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_") (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (re.* (str.to_re ",")))) (re.* (re.++ (str.to_re "DC=") (re.+ (re.union (str.to_re "'") (re.range "0" "9") (str.to_re "-") (str.to_re "&") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_") (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (re.* (str.to_re ","))))) (re.++ (str.to_re "\u{0a}") ((_ re.loop 2 2) (re.++ (str.to_re "DC=") (re.+ (re.union (str.to_re "'") (re.range "0" "9") (str.to_re "-") (str.to_re "&") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_") (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (re.* (str.to_re ",")))) (re.* (re.++ (str.to_re "DC=") (re.+ (re.union (str.to_re "'") (re.range "0" "9") (str.to_re "-") (str.to_re "&") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_") (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (re.* (str.to_re ","))))))))
; about\d+yxegtd\u{2f}efcwgHost\x3ATPSystemwww\x2Ee-finder\x2Ecc
(assert (not (str.in_re X (re.++ (str.to_re "about") (re.+ (re.range "0" "9")) (str.to_re "yxegtd/efcwgHost:TPSystemwww.e-finder.cc\u{0a}")))))
; ^([0-9]*)+(,[0-9]+)+$
(assert (not (str.in_re X (re.++ (re.+ (re.* (re.range "0" "9"))) (re.+ (re.++ (str.to_re ",") (re.+ (re.range "0" "9")))) (str.to_re "\u{0a}")))))
(check-sat)
