(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; /\/ZES\d+O\d+\.jsp\?[a-z0-9=\u{2b}\u{2f}]{20}/iU
(assert (not (str.in_re X (re.++ (str.to_re "//ZES") (re.+ (re.range "0" "9")) (str.to_re "O") (re.+ (re.range "0" "9")) (str.to_re ".jsp?") ((_ re.loop 20 20) (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re "=") (str.to_re "+") (str.to_re "/"))) (str.to_re "/iU\u{0a}")))))
(check-sat)
