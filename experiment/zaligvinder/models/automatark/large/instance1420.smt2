(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; \d{1,3}.?\d{0,3}\s[a-zA-Z]{2,30}\s[a-zA-Z]{2,15}
(assert (str.in_re X (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (re.opt re.allchar) ((_ re.loop 0 3) (re.range "0" "9")) (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}")) ((_ re.loop 2 30) (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}")) ((_ re.loop 2 15) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to_re "\u{0a}"))))
; User-Agent\x3A\dBarwww\x2Eaccoona\x2Ecom
(assert (str.in_re X (re.++ (str.to_re "User-Agent:") (re.range "0" "9") (str.to_re "Barwww.accoona.com\u{0a}"))))
; <[^>\s]*\bauthor\b[^>]*>
(assert (str.in_re X (re.++ (str.to_re "<") (re.* (re.union (str.to_re ">") (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re "author") (re.* (re.comp (str.to_re ">"))) (str.to_re ">\u{0a}"))))
; ^((0?[13578]|10|12)(-|\/)(([1-9])|(0[1-9])|([12])([0-9]?)|(3[01]?))(-|\/)((19)([2-9])(\d{1})|(20)([01])(\d{1})|([8901])(\d{1}))|(0?[2469]|11)(-|\/)(([1-9])|(0[1-9])|([12])([0-9]?)|(3[0]?))(-|\/)((19)([2-9])(\d{1})|(20)([01])(\d{1})|([8901])(\d{1})))$
(assert (not (str.in_re X (re.++ (re.union (re.++ (re.union (re.++ (re.opt (str.to_re "0")) (re.union (str.to_re "1") (str.to_re "3") (str.to_re "5") (str.to_re "7") (str.to_re "8"))) (str.to_re "10") (str.to_re "12")) (re.union (str.to_re "-") (str.to_re "/")) (re.union (re.range "1" "9") (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (re.union (str.to_re "1") (str.to_re "2")) (re.opt (re.range "0" "9"))) (re.++ (str.to_re "3") (re.opt (re.union (str.to_re "0") (str.to_re "1"))))) (re.union (str.to_re "-") (str.to_re "/")) (re.union (re.++ (str.to_re "19") (re.range "2" "9") ((_ re.loop 1 1) (re.range "0" "9"))) (re.++ (str.to_re "20") (re.union (str.to_re "0") (str.to_re "1")) ((_ re.loop 1 1) (re.range "0" "9"))) (re.++ (re.union (str.to_re "8") (str.to_re "9") (str.to_re "0") (str.to_re "1")) ((_ re.loop 1 1) (re.range "0" "9"))))) (re.++ (re.union (re.++ (re.opt (str.to_re "0")) (re.union (str.to_re "2") (str.to_re "4") (str.to_re "6") (str.to_re "9"))) (str.to_re "11")) (re.union (str.to_re "-") (str.to_re "/")) (re.union (re.range "1" "9") (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (re.union (str.to_re "1") (str.to_re "2")) (re.opt (re.range "0" "9"))) (re.++ (str.to_re "3") (re.opt (str.to_re "0")))) (re.union (str.to_re "-") (str.to_re "/")) (re.union (re.++ (str.to_re "19") (re.range "2" "9") ((_ re.loop 1 1) (re.range "0" "9"))) (re.++ (str.to_re "20") (re.union (str.to_re "0") (str.to_re "1")) ((_ re.loop 1 1) (re.range "0" "9"))) (re.++ (re.union (str.to_re "8") (str.to_re "9") (str.to_re "0") (str.to_re "1")) ((_ re.loop 1 1) (re.range "0" "9")))))) (str.to_re "\u{0a}")))))
; /filename=[^\n]*\u{2e}skm/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{0a}"))) (str.to_re ".skm/i\u{0a}"))))
(check-sat)
