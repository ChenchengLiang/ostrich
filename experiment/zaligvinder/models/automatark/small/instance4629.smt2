(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; (\d{1,2}(\:|\s)\d{1,2}(\:|\s)\d{1,2}\s*(AM|PM|A|P))
(assert (str.in_re X (re.++ (str.to_re "\u{0a}") ((_ re.loop 1 2) (re.range "0" "9")) (re.union (str.to_re ":") (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}")) ((_ re.loop 1 2) (re.range "0" "9")) (re.union (str.to_re ":") (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}")) ((_ re.loop 1 2) (re.range "0" "9")) (re.* (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (re.union (str.to_re "AM") (str.to_re "PM") (str.to_re "A") (str.to_re "P")))))
(check-sat)
