(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; ^[\d]{5}[-\s]{1}[\d]{2}[-\s]{1}[\d]{2}[-\s]{1}[\d]{2}$
(assert (str.in_re X (re.++ ((_ re.loop 5 5) (re.range "0" "9")) ((_ re.loop 1 1) (re.union (str.to_re "-") (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) ((_ re.loop 2 2) (re.range "0" "9")) ((_ re.loop 1 1) (re.union (str.to_re "-") (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) ((_ re.loop 2 2) (re.range "0" "9")) ((_ re.loop 1 1) (re.union (str.to_re "-") (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) ((_ re.loop 2 2) (re.range "0" "9")) (str.to_re "\u{0a}"))))
; ^(\+){0,1}\d{1,10}$
(assert (not (str.in_re X (re.++ (re.opt (str.to_re "+")) ((_ re.loop 1 10) (re.range "0" "9")) (str.to_re "\u{0a}")))))
(check-sat)
