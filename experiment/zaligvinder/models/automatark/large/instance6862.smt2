(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; [\\""=/>](25[0-4]|2[0-4][0-9]|1\d{2}|\d{2})\.((25[0-4]|2[0-4][0-9]|1\d{2}|\d{1,2})\.){2}(25[0-4]|2[0-4][0-9]|1\d{2}|\d{2}|[1-9])\b[\\""=:;,/<]
(assert (not (str.in_re X (re.++ (re.union (str.to_re "\u{5c}") (str.to_re "\u{22}") (str.to_re "=") (str.to_re "/") (str.to_re ">")) (re.union (re.++ (str.to_re "25") (re.range "0" "4")) (re.++ (str.to_re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ (str.to_re "1") ((_ re.loop 2 2) (re.range "0" "9"))) ((_ re.loop 2 2) (re.range "0" "9"))) (str.to_re ".") ((_ re.loop 2 2) (re.++ (re.union (re.++ (str.to_re "25") (re.range "0" "4")) (re.++ (str.to_re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ (str.to_re "1") ((_ re.loop 2 2) (re.range "0" "9"))) ((_ re.loop 1 2) (re.range "0" "9"))) (str.to_re "."))) (re.union (re.++ (str.to_re "25") (re.range "0" "4")) (re.++ (str.to_re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ (str.to_re "1") ((_ re.loop 2 2) (re.range "0" "9"))) ((_ re.loop 2 2) (re.range "0" "9")) (re.range "1" "9")) (re.union (str.to_re "\u{5c}") (str.to_re "\u{22}") (str.to_re "=") (str.to_re ":") (str.to_re ";") (str.to_re ",") (str.to_re "/") (str.to_re "<")) (str.to_re "\u{0a}")))))
; /\/[a-z]{1,4}\u{2e}html\u{3f}0\u{2e}[0-9]{15,}$/U
(assert (not (str.in_re X (re.++ (str.to_re "//") ((_ re.loop 1 4) (re.range "a" "z")) (str.to_re ".html?0./U\u{0a}") ((_ re.loop 15 15) (re.range "0" "9")) (re.* (re.range "0" "9"))))))
; ^\d*[1-9]\d*$
(assert (str.in_re X (re.++ (re.* (re.range "0" "9")) (re.range "1" "9") (re.* (re.range "0" "9")) (str.to_re "\u{0a}"))))
; href=[\"\'](http:\/\/|\.\/|\/)?\w+(\.\w+)*(\/\w+(\.\w+)?)*(\/|\?\w*=\w*(&\w*=\w*)*)?[\"\']
(assert (not (str.in_re X (re.++ (str.to_re "href=") (re.union (str.to_re "\u{22}") (str.to_re "'")) (re.opt (re.union (str.to_re "http://") (str.to_re "./") (str.to_re "/"))) (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.* (re.++ (str.to_re ".") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))))) (re.* (re.++ (str.to_re "/") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.opt (re.++ (str.to_re ".") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))))))) (re.opt (re.union (str.to_re "/") (re.++ (str.to_re "?") (re.* (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "=") (re.* (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.* (re.++ (str.to_re "&") (re.* (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "=") (re.* (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")))))))) (re.union (str.to_re "\u{22}") (str.to_re "'")) (str.to_re "\u{0a}")))))
; ^((\+44\s?\d{4}|\(?\d{5}\)?)\s?\d{6})|((\+44\s?|0)7\d{3}\s?\d{6})$
(assert (str.in_re X (re.union (re.++ (re.union (re.++ (str.to_re "+44") (re.opt (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ (re.opt (str.to_re "(")) ((_ re.loop 5 5) (re.range "0" "9")) (re.opt (str.to_re ")")))) (re.opt (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) ((_ re.loop 6 6) (re.range "0" "9"))) (re.++ (str.to_re "\u{0a}") (re.union (re.++ (str.to_re "+44") (re.opt (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}")))) (str.to_re "0")) (str.to_re "7") ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) ((_ re.loop 6 6) (re.range "0" "9"))))))
(check-sat)
