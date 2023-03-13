(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; ^[-+]?\d+(\.\d+)?|[-+]?\.\d+?$
(assert (not (str.in_re X (re.union (re.++ (re.opt (re.union (str.to_re "-") (str.to_re "+"))) (re.+ (re.range "0" "9")) (re.opt (re.++ (str.to_re ".") (re.+ (re.range "0" "9"))))) (re.++ (re.opt (re.union (str.to_re "-") (str.to_re "+"))) (str.to_re ".") (re.+ (re.range "0" "9")) (str.to_re "\u{0a}"))))))
; Host\x3A\d+zmnjgmomgbdz\u{2f}zzmw\.gzt%3ftoolbar\x2Ei-lookup\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.range "0" "9")) (str.to_re "zmnjgmomgbdz/zzmw.gzt%3ftoolbar.i-lookup.com\u{0a}")))))
; <[a-zA-Z][^>]*\son\w+=(\w+|'[^']*'|"[^"]*")[^>]*>
(assert (not (str.in_re X (re.++ (str.to_re "<") (re.union (re.range "a" "z") (re.range "A" "Z")) (re.* (re.comp (str.to_re ">"))) (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}")) (str.to_re "on") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "=") (re.union (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.++ (str.to_re "'") (re.* (re.comp (str.to_re "'"))) (str.to_re "'")) (re.++ (str.to_re "\u{22}") (re.* (re.comp (str.to_re "\u{22}"))) (str.to_re "\u{22}"))) (re.* (re.comp (str.to_re ">"))) (str.to_re ">\u{0a}")))))
; (^[A-Z]{1,2}[0-9]{1,}:{1}[A-Z]{1,2}[0-9]{1,}$)|(^\$(([A-Z])|([a-z])){1,2}([0-9]){1,}:{1}\$(([A-Z])|([a-z])){1,2}([0-9]){1,}$)|(^\$(([A-Z])|([a-z])){1,2}(\$){1}([0-9]){1,}:{1}\$(([A-Z])|([a-z])){1,2}(\$){1}([0-9]){1,}$)
(assert (str.in_re X (re.union (re.++ ((_ re.loop 1 2) (re.range "A" "Z")) (re.+ (re.range "0" "9")) ((_ re.loop 1 1) (str.to_re ":")) ((_ re.loop 1 2) (re.range "A" "Z")) (re.+ (re.range "0" "9"))) (re.++ (str.to_re "$") ((_ re.loop 1 2) (re.union (re.range "A" "Z") (re.range "a" "z"))) (re.+ (re.range "0" "9")) ((_ re.loop 1 1) (str.to_re ":")) (str.to_re "$") ((_ re.loop 1 2) (re.union (re.range "A" "Z") (re.range "a" "z"))) (re.+ (re.range "0" "9"))) (re.++ (str.to_re "\u{0a}$") ((_ re.loop 1 2) (re.union (re.range "A" "Z") (re.range "a" "z"))) ((_ re.loop 1 1) (str.to_re "$")) (re.+ (re.range "0" "9")) ((_ re.loop 1 1) (str.to_re ":")) (str.to_re "$") ((_ re.loop 1 2) (re.union (re.range "A" "Z") (re.range "a" "z"))) ((_ re.loop 1 1) (str.to_re "$")) (re.+ (re.range "0" "9"))))))
; ^\s*(([\w-]+\.)+[\w-]+|([a-zA-Z]{1}|[\w-]{2,}))@(\w+\.)+[A-Za-z]{2,5}$
(assert (not (str.in_re X (re.++ (re.* (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (re.union (re.++ (re.+ (re.++ (re.+ (re.union (str.to_re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "."))) (re.+ (re.union (str.to_re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")))) ((_ re.loop 1 1) (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.++ ((_ re.loop 2 2) (re.union (str.to_re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.* (re.union (str.to_re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))))) (str.to_re "@") (re.+ (re.++ (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "."))) ((_ re.loop 2 5) (re.union (re.range "A" "Z") (re.range "a" "z"))) (str.to_re "\u{0a}")))))
(check-sat)
