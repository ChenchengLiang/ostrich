(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; ^0(((1[0-9]{2}[ -]?[0-9]{3}[ -]?[0-9]{4})|(1[0-9]{3}[ -]?[0-9]{6})|(1[0-9]{4}[ -]?[0-9]{4,5}))|((1[0-9]1)|(11[0-9]))[ -]?[0-9]{3}[ -]?[0-9]{4}|(2[0-9][ -]?[0-9]{4}[ -]?[0-9]{4})|((20[ -]?[0-9]{4})|(23[ -]?[8,9][0-9]{3})|(24[ -]?7[0-9]{3})|(28[ -]?(25|28|37|71|82|90|92|95)[0-9]{2})|(29[ -]?2[0-9]))[ -]?[0-9]{4}|(7[4-9][0-9]{2}[ -]?[0-9]{6})|((3[0,3,4,7][0-9])[ -]?[0-9]{3}[ -]?[0-9]{4})|((5[5,6][ -]?[0-9]{4}[ -]?[0-9]{4})|(500[ -]?[0-9]{3}[ -]?[0-9]{4}))|(8[0247][0-9]{1}[ -]?[0-9]{3}[ -]?[0-9]{4})|(9[0-9]{2}[ -]?[0-9]{3}[ -]?[0-9]{4}))$
(assert (not (str.in_re X (re.++ (str.to_re "0") (re.union (re.++ (re.union (re.++ (str.to_re "1") (re.range "0" "9") (str.to_re "1")) (re.++ (str.to_re "11") (re.range "0" "9"))) (re.opt (re.union (str.to_re " ") (str.to_re "-"))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to_re " ") (str.to_re "-"))) ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ (str.to_re "2") (re.range "0" "9") (re.opt (re.union (str.to_re " ") (str.to_re "-"))) ((_ re.loop 4 4) (re.range "0" "9")) (re.opt (re.union (str.to_re " ") (str.to_re "-"))) ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ (re.union (re.++ (str.to_re "20") (re.opt (re.union (str.to_re " ") (str.to_re "-"))) ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ (str.to_re "23") (re.opt (re.union (str.to_re " ") (str.to_re "-"))) (re.union (str.to_re "8") (str.to_re ",") (str.to_re "9")) ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ (str.to_re "24") (re.opt (re.union (str.to_re " ") (str.to_re "-"))) (str.to_re "7") ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ (str.to_re "28") (re.opt (re.union (str.to_re " ") (str.to_re "-"))) (re.union (str.to_re "25") (str.to_re "28") (str.to_re "37") (str.to_re "71") (str.to_re "82") (str.to_re "90") (str.to_re "92") (str.to_re "95")) ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (str.to_re "29") (re.opt (re.union (str.to_re " ") (str.to_re "-"))) (str.to_re "2") (re.range "0" "9"))) (re.opt (re.union (str.to_re " ") (str.to_re "-"))) ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ (str.to_re "7") (re.range "4" "9") ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (re.union (str.to_re " ") (str.to_re "-"))) ((_ re.loop 6 6) (re.range "0" "9"))) (re.++ (re.opt (re.union (str.to_re " ") (str.to_re "-"))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to_re " ") (str.to_re "-"))) ((_ re.loop 4 4) (re.range "0" "9")) (str.to_re "3") (re.union (str.to_re "0") (str.to_re ",") (str.to_re "3") (str.to_re "4") (str.to_re "7")) (re.range "0" "9")) (re.++ (str.to_re "8") (re.union (str.to_re "0") (str.to_re "2") (str.to_re "4") (str.to_re "7")) ((_ re.loop 1 1) (re.range "0" "9")) (re.opt (re.union (str.to_re " ") (str.to_re "-"))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to_re " ") (str.to_re "-"))) ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ (str.to_re "9") ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (re.union (str.to_re " ") (str.to_re "-"))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to_re " ") (str.to_re "-"))) ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ (str.to_re "1") ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (re.union (str.to_re " ") (str.to_re "-"))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to_re " ") (str.to_re "-"))) ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ (str.to_re "1") ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to_re " ") (str.to_re "-"))) ((_ re.loop 6 6) (re.range "0" "9"))) (re.++ (str.to_re "1") ((_ re.loop 4 4) (re.range "0" "9")) (re.opt (re.union (str.to_re " ") (str.to_re "-"))) ((_ re.loop 4 5) (re.range "0" "9"))) (re.++ (str.to_re "5") (re.union (str.to_re "5") (str.to_re ",") (str.to_re "6")) (re.opt (re.union (str.to_re " ") (str.to_re "-"))) ((_ re.loop 4 4) (re.range "0" "9")) (re.opt (re.union (str.to_re " ") (str.to_re "-"))) ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ (str.to_re "500") (re.opt (re.union (str.to_re " ") (str.to_re "-"))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to_re " ") (str.to_re "-"))) ((_ re.loop 4 4) (re.range "0" "9")))) (str.to_re "\u{0a}")))))
(check-sat)
