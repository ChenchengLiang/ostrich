(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; DE\d{2}[ ]\d{4}[ ]\d{4}[ ]\d{4}[ ]\d{4}[ ]\d{2}|DE\d{20}
(assert (str.in_re X (re.++ (str.to_re "DE") (re.union (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (str.to_re " ") ((_ re.loop 4 4) (re.range "0" "9")) (str.to_re " ") ((_ re.loop 4 4) (re.range "0" "9")) (str.to_re " ") ((_ re.loop 4 4) (re.range "0" "9")) (str.to_re " ") ((_ re.loop 4 4) (re.range "0" "9")) (str.to_re " ") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ ((_ re.loop 20 20) (re.range "0" "9")) (str.to_re "\u{0a}"))))))
; toetbuviaebe\u{2f}eqv\.bvvuplink\x2Eco\x2Ekrwv=Host\x3A
(assert (not (str.in_re X (str.to_re "toetbuviaebe/eqv.bvvuplink.co.krwv=Host:\u{0a}"))))
; Host\x3A\d+Subject\x3A[^\n\r]*Seconds\-ovplHost\x3AHost\x3ADownload
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.range "0" "9")) (str.to_re "Subject:") (re.* (re.union (str.to_re "\u{0a}") (str.to_re "\u{0d}"))) (str.to_re "Seconds-ovplHost:Host:Download\u{0a}")))))
; ^([\!#\$%&'\*\+/\=?\^`\{\|\}~a-zA-Z0-9_-]+[\.]?)+[\!#\$%&'\*\+/\=?\^`\{\|\}~a-zA-Z0-9_-]+@{1}((([0-9A-Za-z_-]+)([\.]{1}[0-9A-Za-z_-]+)*\.{1}([A-Za-z]){1,6})|(([0-9]{1,3}[\.]{1}){3}([0-9]{1,3}){1}))$
(assert (not (str.in_re X (re.++ (re.+ (re.++ (re.+ (re.union (str.to_re "!") (str.to_re "#") (str.to_re "$") (str.to_re "%") (str.to_re "&") (str.to_re "'") (str.to_re "*") (str.to_re "+") (str.to_re "/") (str.to_re "=") (str.to_re "?") (str.to_re "^") (str.to_re "`") (str.to_re "{") (str.to_re "|") (str.to_re "}") (str.to_re "~") (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "_") (str.to_re "-"))) (re.opt (str.to_re ".")))) (re.+ (re.union (str.to_re "!") (str.to_re "#") (str.to_re "$") (str.to_re "%") (str.to_re "&") (str.to_re "'") (str.to_re "*") (str.to_re "+") (str.to_re "/") (str.to_re "=") (str.to_re "?") (str.to_re "^") (str.to_re "`") (str.to_re "{") (str.to_re "|") (str.to_re "}") (str.to_re "~") (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "_") (str.to_re "-"))) ((_ re.loop 1 1) (str.to_re "@")) (re.union (re.++ (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_") (str.to_re "-"))) (re.* (re.++ ((_ re.loop 1 1) (str.to_re ".")) (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_") (str.to_re "-"))))) ((_ re.loop 1 1) (str.to_re ".")) ((_ re.loop 1 6) (re.union (re.range "A" "Z") (re.range "a" "z")))) (re.++ ((_ re.loop 3 3) (re.++ ((_ re.loop 1 3) (re.range "0" "9")) ((_ re.loop 1 1) (str.to_re ".")))) ((_ re.loop 1 1) ((_ re.loop 1 3) (re.range "0" "9"))))) (str.to_re "\u{0a}")))))
(check-sat)
