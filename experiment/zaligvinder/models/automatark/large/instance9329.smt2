(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; ^((CN=['\w\d\s\-\&]+,)+(OU=['\w\d\s\-\&]+,)*(DC=['\w\d\s\-\&]+[,]*){2,})$
(assert (str.in_re X (re.++ (str.to_re "\u{0a}") (re.+ (re.++ (str.to_re "CN=") (re.+ (re.union (str.to_re "'") (re.range "0" "9") (str.to_re "-") (str.to_re "&") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_") (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re ","))) (re.* (re.++ (str.to_re "OU=") (re.+ (re.union (str.to_re "'") (re.range "0" "9") (str.to_re "-") (str.to_re "&") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_") (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re ","))) ((_ re.loop 2 2) (re.++ (str.to_re "DC=") (re.+ (re.union (str.to_re "'") (re.range "0" "9") (str.to_re "-") (str.to_re "&") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_") (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (re.* (str.to_re ",")))) (re.* (re.++ (str.to_re "DC=") (re.+ (re.union (str.to_re "'") (re.range "0" "9") (str.to_re "-") (str.to_re "&") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_") (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (re.* (str.to_re ",")))))))
; Ready\sver\dcount\x2Eyok\x2Ecomweather
(assert (not (str.in_re X (re.++ (str.to_re "Ready") (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}")) (str.to_re "ver") (re.range "0" "9") (str.to_re "count.yok.comweather\u{0a}")))))
; ^[{|\(]?[0-9a-fA-F]{8}[-]([0-9a-fA-F]{4}[-]){3}[0-9a-fA-F]{12}[\)|}]?|[{|\(]?[0-9a-fA-F]{8}([0-9a-fA-F]{4}){3}[0-9a-fA-F]{12}[\)|}]?$
(assert (not (str.in_re X (re.union (re.++ (re.opt (re.union (str.to_re "{") (str.to_re "|") (str.to_re "("))) ((_ re.loop 8 8) (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F"))) (str.to_re "-") ((_ re.loop 3 3) (re.++ ((_ re.loop 4 4) (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F"))) (str.to_re "-"))) ((_ re.loop 12 12) (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F"))) (re.opt (re.union (str.to_re ")") (str.to_re "|") (str.to_re "}")))) (re.++ (re.opt (re.union (str.to_re "{") (str.to_re "|") (str.to_re "("))) ((_ re.loop 8 8) (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F"))) ((_ re.loop 3 3) ((_ re.loop 4 4) (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F")))) ((_ re.loop 12 12) (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F"))) (re.opt (re.union (str.to_re ")") (str.to_re "|") (str.to_re "}"))) (str.to_re "\u{0a}"))))))
; /filename=[^\n]*\u{2e}wm/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{0a}"))) (str.to_re ".wm/i\u{0a}")))))
(check-sat)
