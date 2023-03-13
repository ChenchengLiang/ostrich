(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; ^((\d?)|(([-+]?\d+\.?\d*)|([-+]?\d*\.?\d+))|(([-+]?\d+\.?\d*\,\ ?)*([-+]?\d+\.?\d*))|(([-+]?\d*\.?\d+\,\ ?)*([-+]?\d*\.?\d+))|(([-+]?\d+\.?\d*\,\ ?)*([-+]?\d*\.?\d+))|(([-+]?\d*\.?\d+\,\ ?)*([-+]?\d+\.?\d*)))$
(assert (str.in_re X (re.++ (re.union (re.opt (re.range "0" "9")) (re.++ (re.* (re.++ (re.opt (re.union (str.to_re "-") (str.to_re "+"))) (re.+ (re.range "0" "9")) (re.opt (str.to_re ".")) (re.* (re.range "0" "9")) (str.to_re ",") (re.opt (str.to_re " ")))) (re.opt (re.union (str.to_re "-") (str.to_re "+"))) (re.+ (re.range "0" "9")) (re.opt (str.to_re ".")) (re.* (re.range "0" "9"))) (re.++ (re.* (re.++ (re.opt (re.union (str.to_re "-") (str.to_re "+"))) (re.* (re.range "0" "9")) (re.opt (str.to_re ".")) (re.+ (re.range "0" "9")) (str.to_re ",") (re.opt (str.to_re " ")))) (re.opt (re.union (str.to_re "-") (str.to_re "+"))) (re.* (re.range "0" "9")) (re.opt (str.to_re ".")) (re.+ (re.range "0" "9"))) (re.++ (re.* (re.++ (re.opt (re.union (str.to_re "-") (str.to_re "+"))) (re.+ (re.range "0" "9")) (re.opt (str.to_re ".")) (re.* (re.range "0" "9")) (str.to_re ",") (re.opt (str.to_re " ")))) (re.opt (re.union (str.to_re "-") (str.to_re "+"))) (re.* (re.range "0" "9")) (re.opt (str.to_re ".")) (re.+ (re.range "0" "9"))) (re.++ (re.* (re.++ (re.opt (re.union (str.to_re "-") (str.to_re "+"))) (re.* (re.range "0" "9")) (re.opt (str.to_re ".")) (re.+ (re.range "0" "9")) (str.to_re ",") (re.opt (str.to_re " ")))) (re.opt (re.union (str.to_re "-") (str.to_re "+"))) (re.+ (re.range "0" "9")) (re.opt (str.to_re ".")) (re.* (re.range "0" "9"))) (re.++ (re.opt (re.union (str.to_re "-") (str.to_re "+"))) (re.+ (re.range "0" "9")) (re.opt (str.to_re ".")) (re.* (re.range "0" "9"))) (re.++ (re.opt (re.union (str.to_re "-") (str.to_re "+"))) (re.* (re.range "0" "9")) (re.opt (str.to_re ".")) (re.+ (re.range "0" "9")))) (str.to_re "\u{0a}"))))
; \u{28}\u{29}url=http\x3A1\x2E0b3\x2EaspxWatchDogupwww\.klikvipsearch\.comNetspyt=WeHost\x3A\x2Fcgi\x2Flogurl\.cgi
(assert (str.in_re X (str.to_re "()url=http:\u{1b}1.0b3.aspxWatchDogupwww.klikvipsearch.comNetspyt=WeHost:/cgi/logurl.cgi\u{0a}")))
; ^(20|21|22|23|[01]\d|\d)(([:.][0-5]\d){1,2})$
(assert (str.in_re X (re.++ (re.union (str.to_re "20") (str.to_re "21") (str.to_re "22") (str.to_re "23") (re.++ (re.union (str.to_re "0") (str.to_re "1")) (re.range "0" "9")) (re.range "0" "9")) ((_ re.loop 1 2) (re.++ (re.union (str.to_re ":") (str.to_re ".")) (re.range "0" "5") (re.range "0" "9"))) (str.to_re "\u{0a}"))))
; \x2APORT3\x2A\s+Warezxmlns\x3A%3flinkautomatici\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "*PORT3*") (re.+ (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re "Warezxmlns:%3flinkautomatici.com\u{0a}")))))
(check-sat)
