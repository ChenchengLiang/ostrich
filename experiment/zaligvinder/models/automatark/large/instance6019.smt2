(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; logsFictionalReporterCookieUser-Agent\x3A
(assert (str.in_re X (str.to_re "logsFictionalReporterCookieUser-Agent:\u{0a}")))
; /^\s*?EHLO\s+\d[\d\u{2e}]{500}/
(assert (not (str.in_re X (re.++ (str.to_re "/") (re.* (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re "EHLO") (re.+ (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (re.range "0" "9") ((_ re.loop 500 500) (re.union (re.range "0" "9") (str.to_re "."))) (str.to_re "/\u{0a}")))))
(check-sat)
