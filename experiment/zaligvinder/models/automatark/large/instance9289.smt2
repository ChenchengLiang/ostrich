(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; (((\d{0,2})\(\d{3}\))|(\d{3}-))\d{3}-\d{4}\s{0,}((([Ee][xX][Tt])|([Pp][Oo][Ss][Tt][Ee])):\d{1,5}){0,1}
(assert (str.in_re X (re.++ (re.union (re.++ ((_ re.loop 0 2) (re.range "0" "9")) (str.to_re "(") ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re ")")) (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re "-"))) ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re "-") ((_ re.loop 4 4) (re.range "0" "9")) (re.* (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (re.opt (re.++ (re.union (re.++ (re.union (str.to_re "E") (str.to_re "e")) (re.union (str.to_re "x") (str.to_re "X")) (re.union (str.to_re "T") (str.to_re "t"))) (re.++ (re.union (str.to_re "P") (str.to_re "p")) (re.union (str.to_re "O") (str.to_re "o")) (re.union (str.to_re "S") (str.to_re "s")) (re.union (str.to_re "T") (str.to_re "t")) (re.union (str.to_re "E") (str.to_re "e")))) (str.to_re ":") ((_ re.loop 1 5) (re.range "0" "9")))) (str.to_re "\u{0a}"))))
; DmInf\x5E\x0D\x0A\x0D\x0AAttached\x2Fbar_pl\x2Fchk\.fcgi
(assert (str.in_re X (str.to_re "DmInf^\u{0d}\u{0a}\u{0d}\u{0a}Attached/bar_pl/chk.fcgi\u{0a}")))
; (^0[1-9]\d{1}\s\d{4}\s?\d{4}$)|(^0[1-9]\d{2}\s\d{3}\s?\d{4}$)|(^0[1-9]\d{2}\s\d{4}\s?\d{3}$)|(^0[1-9]\d{3}\s\d{3}\s?\d{2}$)|(^0[1-9]\d{3}\s\d{3}\s?\d{3}$)|(^0[1-9]\d{4}\s\d{3}\s?\d{2}$)|(^0[1-9]\d{4}\s\d{2}\s?\d{3}$)|(^0[1-9]\d{4}\s\d{2}\s?\d{2}$)
(assert (not (str.in_re X (re.union (re.++ (str.to_re "0") (re.range "1" "9") ((_ re.loop 1 1) (re.range "0" "9")) (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}")) ((_ re.loop 4 4) (re.range "0" "9")) (re.opt (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ (str.to_re "0") (re.range "1" "9") ((_ re.loop 2 2) (re.range "0" "9")) (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}")) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ (str.to_re "0") (re.range "1" "9") ((_ re.loop 2 2) (re.range "0" "9")) (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}")) ((_ re.loop 4 4) (re.range "0" "9")) (re.opt (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ (str.to_re "0") (re.range "1" "9") ((_ re.loop 3 3) (re.range "0" "9")) (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}")) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (str.to_re "0") (re.range "1" "9") ((_ re.loop 3 3) (re.range "0" "9")) (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}")) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ (str.to_re "0") (re.range "1" "9") ((_ re.loop 4 4) (re.range "0" "9")) (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}")) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (str.to_re "0") (re.range "1" "9") ((_ re.loop 4 4) (re.range "0" "9")) (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}")) ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ (str.to_re "\u{0a}0") (re.range "1" "9") ((_ re.loop 4 4) (re.range "0" "9")) (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}")) ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) ((_ re.loop 2 2) (re.range "0" "9")))))))
; /\u{2e}rmp([\?\u{5c}\u{2f}]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.rmp") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{0a}")))))
(check-sat)
