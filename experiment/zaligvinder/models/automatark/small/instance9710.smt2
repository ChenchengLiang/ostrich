(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; /outerhtml\s*?\+\=\s*?\u{22}/i
(assert (str.in_re X (re.++ (str.to_re "/outerhtml") (re.* (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re "+=") (re.* (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re "\u{22}/i\u{0a}"))))
; ((0[1-9])|(1[0-2]))\/(([0-9])|([0-2][0-9])|(3[0-1]))/\d{2}
(assert (not (str.in_re X (re.++ (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (str.to_re "1") (re.range "0" "2"))) (str.to_re "/") (re.union (re.range "0" "9") (re.++ (re.range "0" "2") (re.range "0" "9")) (re.++ (str.to_re "3") (re.range "0" "1"))) (str.to_re "/") ((_ re.loop 2 2) (re.range "0" "9")) (str.to_re "\u{0a}")))))
; thesearchresltLoggerHost\x3ABetaHWAEHost\x3Ais
(assert (not (str.in_re X (str.to_re "thesearchresltLoggerHost:BetaHWAEHost:is\u{0a}"))))
; ^(\$|)([1-9]+\d{0,2}(\,\d{3})*|([1-9]+\d*))(\.\d{2})?$
(assert (not (str.in_re X (re.++ (str.to_re "$") (re.union (re.++ (re.+ (re.range "1" "9")) ((_ re.loop 0 2) (re.range "0" "9")) (re.* (re.++ (str.to_re ",") ((_ re.loop 3 3) (re.range "0" "9"))))) (re.++ (re.+ (re.range "1" "9")) (re.* (re.range "0" "9")))) (re.opt (re.++ (str.to_re ".") ((_ re.loop 2 2) (re.range "0" "9")))) (str.to_re "\u{0a}")))))
(check-sat)
