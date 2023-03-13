(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; act=\s+smrtshpr-cs-verDANavExcel
(assert (str.in_re X (re.++ (str.to_re "act=") (re.+ (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re "smrtshpr-cs-\u{13}verDANavExcel\u{0a}"))))
; \b(((J(ANUARY|UNE|ULY))|FEBRUARY|MARCH|(A(PRIL|UGUST))|MAY|(SEPT|NOV|DEC)EMBER|OCTOBER))\s*(0?[1-9]|1[0-9]|2[0-9]|3[0-1])\s*(\,)\s*(200[0-9])\b
(assert (str.in_re X (re.++ (re.union (re.++ (str.to_re "J") (re.union (str.to_re "ANUARY") (str.to_re "UNE") (str.to_re "ULY"))) (str.to_re "FEBRUARY") (str.to_re "MARCH") (re.++ (str.to_re "A") (re.union (str.to_re "PRIL") (str.to_re "UGUST"))) (str.to_re "MAY") (re.++ (re.union (str.to_re "SEPT") (str.to_re "NOV") (str.to_re "DEC")) (str.to_re "EMBER")) (str.to_re "OCTOBER")) (re.* (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (re.union (re.++ (re.opt (str.to_re "0")) (re.range "1" "9")) (re.++ (str.to_re "1") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "9")) (re.++ (str.to_re "3") (re.range "0" "1"))) (re.* (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re ",") (re.* (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re "\u{0a}200") (re.range "0" "9"))))
; (^(4|5)\d{3}-?\d{4}-?\d{4}-?\d{4}|(4|5)\d{15})|(^(6011)-?\d{4}-?\d{4}-?\d{4}|(6011)-?\d{12})|(^((3\d{3}))-\d{6}-\d{5}|^((3\d{14})))
(assert (str.in_re X (re.union (re.++ (re.union (re.++ (str.to_re "-") ((_ re.loop 6 6) (re.range "0" "9")) (str.to_re "-") ((_ re.loop 5 5) (re.range "0" "9")) (str.to_re "3") ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ (str.to_re "3") ((_ re.loop 14 14) (re.range "0" "9")))) (str.to_re "\u{0a}")) (re.++ (re.union (str.to_re "4") (str.to_re "5")) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (str.to_re "-")) ((_ re.loop 4 4) (re.range "0" "9")) (re.opt (str.to_re "-")) ((_ re.loop 4 4) (re.range "0" "9")) (re.opt (str.to_re "-")) ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ (re.union (str.to_re "4") (str.to_re "5")) ((_ re.loop 15 15) (re.range "0" "9"))) (re.++ (str.to_re "6011") (re.opt (str.to_re "-")) ((_ re.loop 4 4) (re.range "0" "9")) (re.opt (str.to_re "-")) ((_ re.loop 4 4) (re.range "0" "9")) (re.opt (str.to_re "-")) ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ (str.to_re "6011") (re.opt (str.to_re "-")) ((_ re.loop 12 12) (re.range "0" "9"))))))
(check-sat)
