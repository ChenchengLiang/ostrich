(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; ^[\+\-]?[0-9]+([\,\.][0-9]+)?$
(assert (str.in_re X (re.++ (re.opt (re.union (str.to_re "+") (str.to_re "-"))) (re.+ (re.range "0" "9")) (re.opt (re.++ (re.union (str.to_re ",") (str.to_re ".")) (re.+ (re.range "0" "9")))) (str.to_re "\u{0a}"))))
; /filename=[^\n]*\u{2e}m4v/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{0a}"))) (str.to_re ".m4v/i\u{0a}")))))
; \b(((0[13578]|1[02])[\/\.-]?(0[1-9]|[12]\d|3[01])[\/\.-]?(19|20)?(\d{2}))|(0[13456789]|1[012])[\/\.-]?(0[1-9]|[12]\d|30)[\/\.-]?(19|20)?(\d{2}))|(02[\/\.-]?(0[1-9]|1\d|2[0-8])[\/\.-]?(19|20)?(\d{2}))|(02[\/\.-]?29[\/\.-]?(19|20)?((0[48]|[2468][048]|[13579][26])|(00)))\b
(assert (not (str.in_re X (re.union (re.++ (str.to_re "02") (re.opt (re.union (str.to_re "/") (str.to_re ".") (str.to_re "-"))) (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (str.to_re "1") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "8"))) (re.opt (re.union (str.to_re "/") (str.to_re ".") (str.to_re "-"))) (re.opt (re.union (str.to_re "19") (str.to_re "20"))) ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (str.to_re "\u{0a}02") (re.opt (re.union (str.to_re "/") (str.to_re ".") (str.to_re "-"))) (str.to_re "29") (re.opt (re.union (str.to_re "/") (str.to_re ".") (str.to_re "-"))) (re.opt (re.union (str.to_re "19") (str.to_re "20"))) (re.union (str.to_re "00") (re.++ (str.to_re "0") (re.union (str.to_re "4") (str.to_re "8"))) (re.++ (re.union (str.to_re "2") (str.to_re "4") (str.to_re "6") (str.to_re "8")) (re.union (str.to_re "0") (str.to_re "4") (str.to_re "8"))) (re.++ (re.union (str.to_re "1") (str.to_re "3") (str.to_re "5") (str.to_re "7") (str.to_re "9")) (re.union (str.to_re "2") (str.to_re "6"))))) (re.++ (re.union (re.++ (str.to_re "0") (re.union (str.to_re "1") (str.to_re "3") (str.to_re "5") (str.to_re "7") (str.to_re "8"))) (re.++ (str.to_re "1") (re.union (str.to_re "0") (str.to_re "2")))) (re.opt (re.union (str.to_re "/") (str.to_re ".") (str.to_re "-"))) (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (re.union (str.to_re "1") (str.to_re "2")) (re.range "0" "9")) (re.++ (str.to_re "3") (re.union (str.to_re "0") (str.to_re "1")))) (re.opt (re.union (str.to_re "/") (str.to_re ".") (str.to_re "-"))) (re.opt (re.union (str.to_re "19") (str.to_re "20"))) ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (re.union (re.++ (str.to_re "0") (re.union (str.to_re "1") (str.to_re "3") (str.to_re "4") (str.to_re "5") (str.to_re "6") (str.to_re "7") (str.to_re "8") (str.to_re "9"))) (re.++ (str.to_re "1") (re.union (str.to_re "0") (str.to_re "1") (str.to_re "2")))) (re.opt (re.union (str.to_re "/") (str.to_re ".") (str.to_re "-"))) (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (re.union (str.to_re "1") (str.to_re "2")) (re.range "0" "9")) (str.to_re "30")) (re.opt (re.union (str.to_re "/") (str.to_re ".") (str.to_re "-"))) (re.opt (re.union (str.to_re "19") (str.to_re "20"))) ((_ re.loop 2 2) (re.range "0" "9")))))))
(check-sat)
