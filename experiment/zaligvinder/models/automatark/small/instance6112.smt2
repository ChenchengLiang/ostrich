(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; /^.{9}[^\u{03}\u{0a}\u{11}\u{10}]/R
(assert (not (str.in_re X (re.++ (str.to_re "/") ((_ re.loop 9 9) re.allchar) (re.union (str.to_re "\u{03}") (str.to_re "\u{0a}") (str.to_re "\u{11}") (str.to_re "\u{10}")) (str.to_re "/R\u{0a}")))))
; Validation of Mexican RFC for tax payers (individuals)
(assert (not (str.in_re X (str.to_re "Validation of Mexican RFC for tax payers individuals\u{0a}"))))
; ^(\+?)(\d{2,4})(\s?)(\-?)((\(0\))?)(\s?)(\d{2})(\s?)(\-?)(\d{3})(\s?)(\-?)(\d{2})(\s?)(\-?)(\d{2})
(assert (not (str.in_re X (re.++ (re.opt (str.to_re "+")) ((_ re.loop 2 4) (re.range "0" "9")) (re.opt (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (re.opt (str.to_re "-")) (re.opt (str.to_re "(0)")) (re.opt (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (re.opt (str.to_re "-")) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (re.opt (str.to_re "-")) ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (re.opt (str.to_re "-")) ((_ re.loop 2 2) (re.range "0" "9")) (str.to_re "\u{0a}")))))
(check-sat)
