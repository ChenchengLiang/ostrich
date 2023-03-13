(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; ^\s*(((\d*\.?\d*[0-9]+\d*)|([0-9]+\d*\.\d*) )\s*[xX]\s*){2}((\d*\.?\d*[0-9]+\d*)|([0-9]+\d*\.\d*))\s*$
(assert (str.in_re X (re.++ (re.* (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) ((_ re.loop 2 2) (re.++ (re.union (re.++ (re.* (re.range "0" "9")) (re.opt (str.to_re ".")) (re.* (re.range "0" "9")) (re.+ (re.range "0" "9")) (re.* (re.range "0" "9"))) (re.++ (str.to_re " ") (re.+ (re.range "0" "9")) (re.* (re.range "0" "9")) (str.to_re ".") (re.* (re.range "0" "9")))) (re.* (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (re.union (str.to_re "x") (str.to_re "X")) (re.* (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))))) (re.union (re.++ (re.* (re.range "0" "9")) (re.opt (str.to_re ".")) (re.* (re.range "0" "9")) (re.+ (re.range "0" "9")) (re.* (re.range "0" "9"))) (re.++ (re.+ (re.range "0" "9")) (re.* (re.range "0" "9")) (str.to_re ".") (re.* (re.range "0" "9")))) (re.* (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re "\u{0a}"))))
; /\.background\s*=\s*[\u{22}\u{27}]{2}/i
(assert (not (str.in_re X (re.++ (str.to_re "/.background") (re.* (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re "=") (re.* (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) ((_ re.loop 2 2) (re.union (str.to_re "\u{22}") (str.to_re "'"))) (str.to_re "/i\u{0a}")))))
; /filename=[^\n]*\u{2e}oga/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{0a}"))) (str.to_re ".oga/i\u{0a}"))))
(check-sat)
