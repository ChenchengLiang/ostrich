(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; /filename\s*=\s*[^\r\n]*?\u{2e}ttf[\u{22}\u{27}\u{3b}\s\r\n]/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename") (re.* (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re "=") (re.* (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (re.* (re.union (str.to_re "\u{0d}") (str.to_re "\u{0a}"))) (str.to_re ".ttf") (re.union (str.to_re "\u{22}") (str.to_re "'") (str.to_re ";") (str.to_re "\u{0d}") (str.to_re "\u{0a}") (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}")) (str.to_re "/i\u{0a}")))))
; ^[a-zA-Z0-9]+([_.-]?[a-zA-Z0-9]+)?@[a-zA-Z0-9]+([_-]?[a-zA-Z0-9]+)*([.]{1})[a-zA-Z0-9]+([.]?[a-zA-Z0-9]+)*$
(assert (not (str.in_re X (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (re.opt (re.++ (re.opt (re.union (str.to_re "_") (str.to_re ".") (str.to_re "-"))) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))))) (str.to_re "@") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (re.* (re.++ (re.opt (re.union (str.to_re "_") (str.to_re "-"))) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))))) ((_ re.loop 1 1) (str.to_re ".")) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (re.* (re.++ (re.opt (str.to_re ".")) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))))) (str.to_re "\u{0a}")))))
; ^(([A-Z]{1}[a-z]+([\-][A-Z]{1}[a-z]+)?)([ ]([A-Z]\.)){0,2}[ ](([A-Z]{1}[a-z]*)|([O]{1}[\']{1}[A-Z][a-z]{2,}))([ ](Jr\.|Sr\.|IV|III|II))?)$
(assert (str.in_re X (re.++ (str.to_re "\u{0a}") ((_ re.loop 0 2) (re.++ (str.to_re " ") (re.range "A" "Z") (str.to_re "."))) (str.to_re " ") (re.union (re.++ ((_ re.loop 1 1) (re.range "A" "Z")) (re.* (re.range "a" "z"))) (re.++ ((_ re.loop 1 1) (str.to_re "O")) ((_ re.loop 1 1) (str.to_re "'")) (re.range "A" "Z") ((_ re.loop 2 2) (re.range "a" "z")) (re.* (re.range "a" "z")))) (re.opt (re.++ (str.to_re " ") (re.union (str.to_re "Jr.") (str.to_re "Sr.") (str.to_re "IV") (str.to_re "III") (str.to_re "II")))) ((_ re.loop 1 1) (re.range "A" "Z")) (re.+ (re.range "a" "z")) (re.opt (re.++ (str.to_re "-") ((_ re.loop 1 1) (re.range "A" "Z")) (re.+ (re.range "a" "z")))))))
(check-sat)
