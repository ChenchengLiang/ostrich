(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; User-Agent\x3A\d+Desktop\sIDENTIFY666User-Agent\x3A\x5BStatic
(assert (str.in_re X (re.++ (str.to_re "User-Agent:") (re.+ (re.range "0" "9")) (str.to_re "Desktop") (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}")) (str.to_re "IDENTIFY666User-Agent:[Static\u{0a}"))))
; Subject\u{3a}\s+OnlineServer\u{3a}Yeah\!User-Agent\u{3a}
(assert (str.in_re X (re.++ (str.to_re "Subject:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re "OnlineServer:Yeah!User-Agent:\u{0a}"))))
; ^(http|https|ftp)\://(((25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9][0-9]|[0-9])\.){3}(25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9][0-9]|[0-9])|([a-zA-Z0-9_\-\.])+\.(com|net|org|edu|int|mil|gov|arpa|biz|aero|name|coop|info|pro|museum|uk|me))((:[a-zA-Z0-9]*)?/?([a-zA-Z0-9\-\._\?\,\'/\\\+&%\$#\=~])*)$
(assert (str.in_re X (re.++ (re.union (str.to_re "http") (str.to_re "https") (str.to_re "ftp")) (str.to_re "://") (re.union (re.++ ((_ re.loop 3 3) (re.++ (re.union (re.++ (str.to_re "25") (re.range "0" "5")) (re.++ (str.to_re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ (str.to_re "1") (re.range "0" "9") (re.range "0" "9")) (re.++ (re.range "1" "9") (re.range "0" "9")) (re.range "0" "9")) (str.to_re "."))) (re.union (re.++ (str.to_re "25") (re.range "0" "5")) (re.++ (str.to_re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ (str.to_re "1") (re.range "0" "9") (re.range "0" "9")) (re.++ (re.range "1" "9") (re.range "0" "9")) (re.range "0" "9"))) (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "_") (str.to_re "-") (str.to_re "."))) (str.to_re ".") (re.union (str.to_re "com") (str.to_re "net") (str.to_re "org") (str.to_re "edu") (str.to_re "int") (str.to_re "mil") (str.to_re "gov") (str.to_re "arpa") (str.to_re "biz") (str.to_re "aero") (str.to_re "name") (str.to_re "coop") (str.to_re "info") (str.to_re "pro") (str.to_re "museum") (str.to_re "uk") (str.to_re "me")))) (str.to_re "\u{0a}") (re.opt (re.++ (str.to_re ":") (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))))) (re.opt (str.to_re "/")) (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "-") (str.to_re ".") (str.to_re "_") (str.to_re "?") (str.to_re ",") (str.to_re "'") (str.to_re "/") (str.to_re "\u{5c}") (str.to_re "+") (str.to_re "&") (str.to_re "%") (str.to_re "$") (str.to_re "#") (str.to_re "=") (str.to_re "~"))))))
(check-sat)
