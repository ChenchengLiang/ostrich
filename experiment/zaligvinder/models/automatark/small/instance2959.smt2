(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; (\<\?php\s+.*?((\?\>)|$))
(assert (str.in_re X (re.++ (str.to_re "\u{0a}<?php") (re.+ (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (re.* re.allchar) (str.to_re "?>"))))
; (private|public|protected)\s\w(.)*\((.)*\)[^;]
(assert (str.in_re X (re.++ (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}")) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")) (re.* re.allchar) (str.to_re "(") (re.* re.allchar) (str.to_re ")") (re.comp (str.to_re ";")) (str.to_re "\u{0a}p") (re.union (str.to_re "rivate") (str.to_re "ublic") (str.to_re "rotected")))))
; (^(6334)[5-9](\d{11}$|\d{13,14}$))
(assert (str.in_re X (re.++ (str.to_re "\u{0a}6334") (re.range "5" "9") (re.union ((_ re.loop 11 11) (re.range "0" "9")) ((_ re.loop 13 14) (re.range "0" "9"))))))
(check-sat)
