(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; \+353\(0\)\s\d\s\d{3}\s\d{4}
(assert (not (str.in_re X (re.++ (str.to_re "+353(0)") (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}")) (re.range "0" "9") (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}")) ((_ re.loop 3 3) (re.range "0" "9")) (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}")) ((_ re.loop 4 4) (re.range "0" "9")) (str.to_re "\u{0a}")))))
; /filename\=\d+\.swf/H
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.+ (re.range "0" "9")) (str.to_re ".swf/H\u{0a}")))))
(check-sat)
