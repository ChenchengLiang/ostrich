(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; /filename=[^\n]*\u{2e}maki/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{0a}"))) (str.to_re ".maki/i\u{0a}")))))
; (^\(\)$|^\(((\([0-9]+,(\((\([0-9]+,[0-9]+,[0-9]+\),)*(\([0-9]+,[0-9]+,[0-9]+\)){1}\))+\),)*(\([0-9]+,(\((\([0-9]+,[0-9]+,[0-9]+\),)*(\([0-9]+,[0-9]+,[0-9]+\)){1}\))+\)){1}\)))$
(assert (str.in_re X (re.++ (str.to_re "\u{0a}(") (re.union (str.to_re ")") (re.++ (re.* (re.++ (str.to_re "(") (re.+ (re.range "0" "9")) (str.to_re ",") (re.+ (re.++ (str.to_re "(") (re.* (re.++ (str.to_re "(") (re.+ (re.range "0" "9")) (str.to_re ",") (re.+ (re.range "0" "9")) (str.to_re ",") (re.+ (re.range "0" "9")) (str.to_re "),"))) ((_ re.loop 1 1) (re.++ (str.to_re "(") (re.+ (re.range "0" "9")) (str.to_re ",") (re.+ (re.range "0" "9")) (str.to_re ",") (re.+ (re.range "0" "9")) (str.to_re ")"))) (str.to_re ")"))) (str.to_re "),"))) ((_ re.loop 1 1) (re.++ (str.to_re "(") (re.+ (re.range "0" "9")) (str.to_re ",") (re.+ (re.++ (str.to_re "(") (re.* (re.++ (str.to_re "(") (re.+ (re.range "0" "9")) (str.to_re ",") (re.+ (re.range "0" "9")) (str.to_re ",") (re.+ (re.range "0" "9")) (str.to_re "),"))) ((_ re.loop 1 1) (re.++ (str.to_re "(") (re.+ (re.range "0" "9")) (str.to_re ",") (re.+ (re.range "0" "9")) (str.to_re ",") (re.+ (re.range "0" "9")) (str.to_re ")"))) (str.to_re ")"))) (str.to_re ")"))) (str.to_re ")"))))))
; ^(\d|\d{1,9}|1\d{1,9}|20\d{8}|213\d{7}|2146\d{6}|21473\d{5}|214747\d{4}|2147482\d{3}|21474835\d{2}|214748364[0-7])$
(assert (not (str.in_re X (re.++ (re.union (re.range "0" "9") ((_ re.loop 1 9) (re.range "0" "9")) (re.++ (str.to_re "1") ((_ re.loop 1 9) (re.range "0" "9"))) (re.++ (str.to_re "20") ((_ re.loop 8 8) (re.range "0" "9"))) (re.++ (str.to_re "213") ((_ re.loop 7 7) (re.range "0" "9"))) (re.++ (str.to_re "2146") ((_ re.loop 6 6) (re.range "0" "9"))) (re.++ (str.to_re "21473") ((_ re.loop 5 5) (re.range "0" "9"))) (re.++ (str.to_re "214747") ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ (str.to_re "2147482") ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ (str.to_re "21474835") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (str.to_re "214748364") (re.range "0" "7"))) (str.to_re "\u{0a}")))))
; Host\x3A\d+Black\s+daosearch\x2EcomMyPostwww\.raxsearch\.com
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.range "0" "9")) (str.to_re "Black") (re.+ (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re "daosearch.comMyPostwww.raxsearch.com\u{0a}"))))
(check-sat)
