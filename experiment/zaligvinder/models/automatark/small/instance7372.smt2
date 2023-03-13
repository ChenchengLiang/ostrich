(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; ^(\s*\d\s*){11}$
(assert (str.in_re X (re.++ ((_ re.loop 11 11) (re.++ (re.* (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (re.range "0" "9") (re.* (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))))) (str.to_re "\u{0a}"))))
; ^[^']*?\<\s*Assembly\s*:\s*AssemblyVersion\s*\(\s*"(\*|[0-9]+.\*|[0-9]+.[0-9]+.\*|[0-9]+.[0-9]+.[0-9]+.\*|[0-9]+.[0-9]+.[0-9]+.[0-9]+)"\s*\)\s*\>.*$
(assert (not (str.in_re X (re.++ (re.* (re.comp (str.to_re "'"))) (str.to_re "<") (re.* (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re "Assembly") (re.* (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re ":") (re.* (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re "AssemblyVersion") (re.* (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re "(") (re.* (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re "\u{22}") (re.union (str.to_re "*") (re.++ (re.+ (re.range "0" "9")) re.allchar (str.to_re "*")) (re.++ (re.+ (re.range "0" "9")) re.allchar (re.+ (re.range "0" "9")) re.allchar (str.to_re "*")) (re.++ (re.+ (re.range "0" "9")) re.allchar (re.+ (re.range "0" "9")) re.allchar (re.+ (re.range "0" "9")) re.allchar (str.to_re "*")) (re.++ (re.+ (re.range "0" "9")) re.allchar (re.+ (re.range "0" "9")) re.allchar (re.+ (re.range "0" "9")) re.allchar (re.+ (re.range "0" "9")))) (str.to_re "\u{22}") (re.* (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re ")") (re.* (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re ">") (re.* re.allchar) (str.to_re "\u{0a}")))))
(check-sat)
