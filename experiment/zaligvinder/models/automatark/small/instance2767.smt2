(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; \b([\d\w\.\/\+\-\?\:]*)((ht|f)tp(s|)\:\/\/|[\d\d\d|\d\d]\.[\d\d\d|\d\d]\.|www\.|\.tv|\.ac|\.com|\.edu|\.gov|\.int|\.mil|\.net|\.org|\.biz|\.info|\.name|\.pro|\.museum|\.co)([\d\w\.\/\%\+\-\=\&\?\:\\\"\'\,\|\~\;]*)\b
(assert (str.in_re X (re.++ (re.* (re.union (re.range "0" "9") (str.to_re ".") (str.to_re "/") (str.to_re "+") (str.to_re "-") (str.to_re "?") (str.to_re ":") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.union (re.++ (re.union (str.to_re "ht") (str.to_re "f")) (str.to_re "tps://")) (re.++ (re.union (re.range "0" "9") (str.to_re "|")) (str.to_re ".") (re.union (re.range "0" "9") (str.to_re "|")) (str.to_re ".")) (str.to_re "www.") (str.to_re ".tv") (str.to_re ".ac") (str.to_re ".com") (str.to_re ".edu") (str.to_re ".gov") (str.to_re ".int") (str.to_re ".mil") (str.to_re ".net") (str.to_re ".org") (str.to_re ".biz") (str.to_re ".info") (str.to_re ".name") (str.to_re ".pro") (str.to_re ".museum") (str.to_re ".co")) (re.* (re.union (re.range "0" "9") (str.to_re ".") (str.to_re "/") (str.to_re "%") (str.to_re "+") (str.to_re "-") (str.to_re "=") (str.to_re "&") (str.to_re "?") (str.to_re ":") (str.to_re "\u{5c}") (str.to_re "\u{22}") (str.to_re "'") (str.to_re ",") (str.to_re "|") (str.to_re "~") (str.to_re ";") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "\u{0a}"))))
; ^([0-9a-zA-Z]([-.\w]*[0-9a-zA-Z])*@(([0-9a-zA-Z])+([-\w]*[0-9a-zA-Z])*\.)+[a-zA-Z]{2,9})$
(assert (not (str.in_re X (re.++ (str.to_re "\u{0a}") (re.union (re.range "0" "9") (re.range "a" "z") (re.range "A" "Z")) (re.* (re.++ (re.* (re.union (str.to_re "-") (str.to_re ".") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.union (re.range "0" "9") (re.range "a" "z") (re.range "A" "Z")))) (str.to_re "@") (re.+ (re.++ (re.+ (re.union (re.range "0" "9") (re.range "a" "z") (re.range "A" "Z"))) (re.* (re.++ (re.* (re.union (str.to_re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.union (re.range "0" "9") (re.range "a" "z") (re.range "A" "Z")))) (str.to_re "."))) ((_ re.loop 2 9) (re.union (re.range "a" "z") (re.range "A" "Z")))))))
; www\x2Ecameup\x2Ecom\s+spyblini\x2Eini
(assert (not (str.in_re X (re.++ (str.to_re "www.cameup.com\u{13}") (re.+ (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re "spyblini.ini\u{0a}")))))
; (^0[87][23467]((\d{7})|( |-)((\d{3}))( |-)(\d{4})|( |-)(\d{7})))
(assert (str.in_re X (re.++ (str.to_re "\u{0a}0") (re.union (str.to_re "8") (str.to_re "7")) (re.union (str.to_re "2") (str.to_re "3") (str.to_re "4") (str.to_re "6") (str.to_re "7")) (re.union ((_ re.loop 7 7) (re.range "0" "9")) (re.++ (re.union (str.to_re " ") (str.to_re "-")) ((_ re.loop 3 3) (re.range "0" "9")) (re.union (str.to_re " ") (str.to_re "-")) ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ (re.union (str.to_re " ") (str.to_re "-")) ((_ re.loop 7 7) (re.range "0" "9")))))))
; /^http\u{7c}\d+\u{7c}\d+\x7C[a-z0-9]+\x2E[a-z]{2,3}\x7C[a-z0-9]+\x7C/
(assert (str.in_re X (re.++ (str.to_re "/http|") (re.+ (re.range "0" "9")) (str.to_re "|") (re.+ (re.range "0" "9")) (str.to_re "|") (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to_re ".") ((_ re.loop 2 3) (re.range "a" "z")) (str.to_re "|") (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to_re "|/\u{0a}"))))
(check-sat)
