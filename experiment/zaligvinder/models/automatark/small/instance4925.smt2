(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; <[^>]*name[\s]*=[\s]*"?[^\w_]*"?[^>]*>
(assert (str.in_re X (re.++ (str.to_re "<") (re.* (re.comp (str.to_re ">"))) (str.to_re "name") (re.* (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re "=") (re.* (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (re.opt (str.to_re "\u{22}")) (re.* (re.union (str.to_re "_") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.opt (str.to_re "\u{22}")) (re.* (re.comp (str.to_re ">"))) (str.to_re ">\u{0a}"))))
; ^(([A-Za-z]+[^0-9]*)([0-9]+[^\W]*)([\W]+[\W0-9A-Za-z]*))|(([A-Za-z]+[^\W]*)([\W]+[^0-9]*)([0-9]+[\W0-9A-Za-z]*))|(([\W]+[^A-Za-z]*)([A-Za-z]+[^0-9]*)([0-9]+[\W0-9A-Za-z]*))|(([\W]+[^0-9]*)([0-9]+[^A-Za-z]*)([A-Za-z]+[\W0-9A-Za-z]*))|(([0-9]+[^A-Za-z]*)([A-Za-z]+[^\W]*)([\W]+[\W0-9A-Za-z]*))|(([0-9]+[^\W]*)([\W]+[^A-Za-z]*)([A-Za-z]+[\W0-9A-Za-z]*))$
(assert (not (str.in_re X (re.union (re.++ (re.+ (re.union (re.range "A" "Z") (re.range "a" "z"))) (re.* (re.range "0" "9")) (re.+ (re.range "0" "9")) (re.* (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")))) (re.+ (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")))) (re.* (re.union (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z")))) (re.++ (re.+ (re.union (re.range "A" "Z") (re.range "a" "z"))) (re.* (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")))) (re.+ (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")))) (re.* (re.range "0" "9")) (re.+ (re.range "0" "9")) (re.* (re.union (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z")))) (re.++ (re.+ (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")))) (re.* (re.union (re.range "A" "Z") (re.range "a" "z"))) (re.+ (re.union (re.range "A" "Z") (re.range "a" "z"))) (re.* (re.range "0" "9")) (re.+ (re.range "0" "9")) (re.* (re.union (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z")))) (re.++ (re.+ (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")))) (re.* (re.range "0" "9")) (re.+ (re.range "0" "9")) (re.* (re.union (re.range "A" "Z") (re.range "a" "z"))) (re.+ (re.union (re.range "A" "Z") (re.range "a" "z"))) (re.* (re.union (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z")))) (re.++ (re.+ (re.range "0" "9")) (re.* (re.union (re.range "A" "Z") (re.range "a" "z"))) (re.+ (re.union (re.range "A" "Z") (re.range "a" "z"))) (re.* (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")))) (re.+ (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")))) (re.* (re.union (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z")))) (re.++ (str.to_re "\u{0a}") (re.+ (re.range "0" "9")) (re.* (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")))) (re.+ (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")))) (re.* (re.union (re.range "A" "Z") (re.range "a" "z"))) (re.+ (re.union (re.range "A" "Z") (re.range "a" "z"))) (re.* (re.union (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z"))))))))
; ^[0-9]{6}
(assert (str.in_re X (re.++ ((_ re.loop 6 6) (re.range "0" "9")) (str.to_re "\u{0a}"))))
; /\r\nReferer\x3A\u{20}http\x3A\x2F\u{2f}[a-z0-9\u{2d}\u{2e}]+\x2F\x3Fdo\x3Dpayment\u{26}ver\x3D\d+\u{26}sid\x3D\d+\u{26}sn\x3D\d+\r\n/H
(assert (str.in_re X (re.++ (str.to_re "/\u{0d}\u{0a}Referer: http://") (re.+ (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re "-") (str.to_re "."))) (str.to_re "/?do=payment&ver=") (re.+ (re.range "0" "9")) (str.to_re "&sid=") (re.+ (re.range "0" "9")) (str.to_re "&sn=") (re.+ (re.range "0" "9")) (str.to_re "\u{0d}\u{0a}/H\u{0a}"))))
; urn:[a-z0-9]{1}[a-z0-9\-]{1,31}:[a-z0-9_,:=@;!'%/#\(\)\+\-\.\$\*\?]+
(assert (not (str.in_re X (re.++ (str.to_re "urn:") ((_ re.loop 1 1) (re.union (re.range "a" "z") (re.range "0" "9"))) ((_ re.loop 1 31) (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re "-"))) (str.to_re ":") (re.+ (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re "_") (str.to_re ",") (str.to_re ":") (str.to_re "=") (str.to_re "@") (str.to_re ";") (str.to_re "!") (str.to_re "'") (str.to_re "%") (str.to_re "/") (str.to_re "#") (str.to_re "(") (str.to_re ")") (str.to_re "+") (str.to_re "-") (str.to_re ".") (str.to_re "$") (str.to_re "*") (str.to_re "?"))) (str.to_re "\u{0a}")))))
(check-sat)
