(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; ^(429496729[0-6]|42949672[0-8]\d|4294967[01]\d{2}|429496[0-6]\d{3}|42949[0-5]\d{4}|4294[0-8]\d{5}|429[0-3]\d{6}|42[0-8]\d{7}|4[01]\d{8}|[1-3]\d{9}|[1-9]\d{8}|[1-9]\d{7}|[1-9]\d{6}|[1-9]\d{5}|[1-9]\d{4}|[1-9]\d{3}|[1-9]\d{2}|[1-9]\d|\d)$
(assert (not (str.in_re X (re.++ (re.union (re.++ (str.to_re "429496729") (re.range "0" "6")) (re.++ (str.to_re "42949672") (re.range "0" "8") (re.range "0" "9")) (re.++ (str.to_re "4294967") (re.union (str.to_re "0") (str.to_re "1")) ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (str.to_re "429496") (re.range "0" "6") ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ (str.to_re "42949") (re.range "0" "5") ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ (str.to_re "4294") (re.range "0" "8") ((_ re.loop 5 5) (re.range "0" "9"))) (re.++ (str.to_re "429") (re.range "0" "3") ((_ re.loop 6 6) (re.range "0" "9"))) (re.++ (str.to_re "42") (re.range "0" "8") ((_ re.loop 7 7) (re.range "0" "9"))) (re.++ (str.to_re "4") (re.union (str.to_re "0") (str.to_re "1")) ((_ re.loop 8 8) (re.range "0" "9"))) (re.++ (re.range "1" "3") ((_ re.loop 9 9) (re.range "0" "9"))) (re.++ (re.range "1" "9") ((_ re.loop 8 8) (re.range "0" "9"))) (re.++ (re.range "1" "9") ((_ re.loop 7 7) (re.range "0" "9"))) (re.++ (re.range "1" "9") ((_ re.loop 6 6) (re.range "0" "9"))) (re.++ (re.range "1" "9") ((_ re.loop 5 5) (re.range "0" "9"))) (re.++ (re.range "1" "9") ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ (re.range "1" "9") ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ (re.range "1" "9") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (re.range "1" "9") (re.range "0" "9")) (re.range "0" "9")) (str.to_re "\u{0a}")))))
; clvompycem\u{2f}cen\.vcn.*Host\x3A\s+toolbar_domain_redirectHost\u{3a}
(assert (not (str.in_re X (re.++ (str.to_re "clvompycem/cen.vcn") (re.* re.allchar) (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re "toolbar_domain_redirectHost:\u{0a}")))))
; /filename=[^\n]*\u{2e}maki/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{0a}"))) (str.to_re ".maki/i\u{0a}"))))
; /\/DES\d+O\d+\.jsp\?[a-z0-9=\u{2b}\u{2f}]{20}/iU
(assert (str.in_re X (re.++ (str.to_re "//DES") (re.+ (re.range "0" "9")) (str.to_re "O") (re.+ (re.range "0" "9")) (str.to_re ".jsp?") ((_ re.loop 20 20) (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re "=") (str.to_re "+") (str.to_re "/"))) (str.to_re "/iU\u{0a}"))))
(check-sat)
