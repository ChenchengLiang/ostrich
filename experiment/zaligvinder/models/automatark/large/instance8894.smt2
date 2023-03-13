(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; ^((([A-PR-UWYZ])([0-9][0-9A-HJKS-UW]?))|(([A-PR-UWYZ][A-HK-Y])([0-9][0-9ABEHMNPRV-Y]?))\s{0,2}(([0-9])([ABD-HJLNP-UW-Z])([ABD-HJLNP-UW-Z])))|(((GI)(R))\s{0,2}((0)(A)(A)))$
(assert (not (str.in_re X (re.union (re.++ (str.to_re "\u{0a}GIR") ((_ re.loop 0 2) (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re "0AA")) (re.++ (re.union (re.range "A" "P") (re.range "R" "U") (str.to_re "W") (str.to_re "Y") (str.to_re "Z")) (re.range "0" "9") (re.opt (re.union (re.range "0" "9") (re.range "A" "H") (str.to_re "J") (str.to_re "K") (re.range "S" "U") (str.to_re "W")))) (re.++ ((_ re.loop 0 2) (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (re.union (re.range "A" "P") (re.range "R" "U") (str.to_re "W") (str.to_re "Y") (str.to_re "Z")) (re.union (re.range "A" "H") (re.range "K" "Y")) (re.range "0" "9") (re.opt (re.union (re.range "0" "9") (str.to_re "A") (str.to_re "B") (str.to_re "E") (str.to_re "H") (str.to_re "M") (str.to_re "N") (str.to_re "P") (str.to_re "R") (re.range "V" "Y"))) (re.range "0" "9") (re.union (str.to_re "A") (str.to_re "B") (re.range "D" "H") (str.to_re "J") (str.to_re "L") (str.to_re "N") (re.range "P" "U") (re.range "W" "Z")) (re.union (str.to_re "A") (str.to_re "B") (re.range "D" "H") (str.to_re "J") (str.to_re "L") (str.to_re "N") (re.range "P" "U") (re.range "W" "Z")))))))
; c\.goclick\.com\s+URLBlaze\s+Host\x3A
(assert (str.in_re X (re.++ (str.to_re "c.goclick.com") (re.+ (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re "URLBlaze") (re.+ (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re "Host:\u{0a}"))))
; ^0(((1[0-9]{2}[ -]?[0-9]{3}[ -]?[0-9]{4})|(1[0-9]{3}[ -]?[0-9]{6})|(1[0-9]{4}[ -]?[0-9]{4,5}))|((1[0-9]1)|(11[0-9]))[ -]?[0-9]{3}[ -]?[0-9]{4}|(2[0-9][ -]?[0-9]{4}[ -]?[0-9]{4})|((20[ -]?[0-9]{4})|(23[ -]?[8,9][0-9]{3})|(24[ -]?7[0-9]{3})|(28[ -]?(25|28|37|71|82|90|92|95)[0-9]{2})|(29[ -]?2[0-9]))[ -]?[0-9]{4}|(7[4-9][0-9]{2}[ -]?[0-9]{6})|((3[0,3,4,7][0-9])[ -]?[0-9]{3}[ -]?[0-9]{4})|((5[5,6][ -]?[0-9]{4}[ -]?[0-9]{4})|(500[ -]?[0-9]{3}[ -]?[0-9]{4}))|(8[0247][0-9]{1}[ -]?[0-9]{3}[ -]?[0-9]{4})|(9[0-9]{2}[ -]?[0-9]{3}[ -]?[0-9]{4}))$
(assert (str.in_re X (re.++ (str.to_re "0") (re.union (re.++ (re.union (re.++ (str.to_re "1") (re.range "0" "9") (str.to_re "1")) (re.++ (str.to_re "11") (re.range "0" "9"))) (re.opt (re.union (str.to_re " ") (str.to_re "-"))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to_re " ") (str.to_re "-"))) ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ (str.to_re "2") (re.range "0" "9") (re.opt (re.union (str.to_re " ") (str.to_re "-"))) ((_ re.loop 4 4) (re.range "0" "9")) (re.opt (re.union (str.to_re " ") (str.to_re "-"))) ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ (re.union (re.++ (str.to_re "20") (re.opt (re.union (str.to_re " ") (str.to_re "-"))) ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ (str.to_re "23") (re.opt (re.union (str.to_re " ") (str.to_re "-"))) (re.union (str.to_re "8") (str.to_re ",") (str.to_re "9")) ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ (str.to_re "24") (re.opt (re.union (str.to_re " ") (str.to_re "-"))) (str.to_re "7") ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ (str.to_re "28") (re.opt (re.union (str.to_re " ") (str.to_re "-"))) (re.union (str.to_re "25") (str.to_re "28") (str.to_re "37") (str.to_re "71") (str.to_re "82") (str.to_re "90") (str.to_re "92") (str.to_re "95")) ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (str.to_re "29") (re.opt (re.union (str.to_re " ") (str.to_re "-"))) (str.to_re "2") (re.range "0" "9"))) (re.opt (re.union (str.to_re " ") (str.to_re "-"))) ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ (str.to_re "7") (re.range "4" "9") ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (re.union (str.to_re " ") (str.to_re "-"))) ((_ re.loop 6 6) (re.range "0" "9"))) (re.++ (re.opt (re.union (str.to_re " ") (str.to_re "-"))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to_re " ") (str.to_re "-"))) ((_ re.loop 4 4) (re.range "0" "9")) (str.to_re "3") (re.union (str.to_re "0") (str.to_re ",") (str.to_re "3") (str.to_re "4") (str.to_re "7")) (re.range "0" "9")) (re.++ (str.to_re "8") (re.union (str.to_re "0") (str.to_re "2") (str.to_re "4") (str.to_re "7")) ((_ re.loop 1 1) (re.range "0" "9")) (re.opt (re.union (str.to_re " ") (str.to_re "-"))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to_re " ") (str.to_re "-"))) ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ (str.to_re "9") ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (re.union (str.to_re " ") (str.to_re "-"))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to_re " ") (str.to_re "-"))) ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ (str.to_re "1") ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (re.union (str.to_re " ") (str.to_re "-"))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to_re " ") (str.to_re "-"))) ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ (str.to_re "1") ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to_re " ") (str.to_re "-"))) ((_ re.loop 6 6) (re.range "0" "9"))) (re.++ (str.to_re "1") ((_ re.loop 4 4) (re.range "0" "9")) (re.opt (re.union (str.to_re " ") (str.to_re "-"))) ((_ re.loop 4 5) (re.range "0" "9"))) (re.++ (str.to_re "5") (re.union (str.to_re "5") (str.to_re ",") (str.to_re "6")) (re.opt (re.union (str.to_re " ") (str.to_re "-"))) ((_ re.loop 4 4) (re.range "0" "9")) (re.opt (re.union (str.to_re " ") (str.to_re "-"))) ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ (str.to_re "500") (re.opt (re.union (str.to_re " ") (str.to_re "-"))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to_re " ") (str.to_re "-"))) ((_ re.loop 4 4) (re.range "0" "9")))) (str.to_re "\u{0a}"))))
; /filename=[^\n]*\u{2e}sami/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{0a}"))) (str.to_re ".sami/i\u{0a}")))))
; ^.*([^\.][\.](([gG][iI][fF])|([Jj][pP][Gg])|([Jj][pP][Ee][Gg])|([Bb][mM][pP])|([Pp][nN][Gg])))
(assert (str.in_re X (re.++ (re.* re.allchar) (str.to_re "\u{0a}") (re.comp (str.to_re ".")) (str.to_re ".") (re.union (re.++ (re.union (str.to_re "g") (str.to_re "G")) (re.union (str.to_re "i") (str.to_re "I")) (re.union (str.to_re "f") (str.to_re "F"))) (re.++ (re.union (str.to_re "J") (str.to_re "j")) (re.union (str.to_re "p") (str.to_re "P")) (re.union (str.to_re "G") (str.to_re "g"))) (re.++ (re.union (str.to_re "J") (str.to_re "j")) (re.union (str.to_re "p") (str.to_re "P")) (re.union (str.to_re "E") (str.to_re "e")) (re.union (str.to_re "G") (str.to_re "g"))) (re.++ (re.union (str.to_re "B") (str.to_re "b")) (re.union (str.to_re "m") (str.to_re "M")) (re.union (str.to_re "p") (str.to_re "P"))) (re.++ (re.union (str.to_re "P") (str.to_re "p")) (re.union (str.to_re "n") (str.to_re "N")) (re.union (str.to_re "G") (str.to_re "g")))))))
(check-sat)
