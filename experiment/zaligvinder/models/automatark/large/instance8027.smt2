(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; ^((A[LKSZR])|(C[AOT])|(D[EC])|(F[ML])|(G[AU])|(HI)|(I[DLNA])|(K[SY])|(LA)|(M[EHDAINSOT])|(N[EVHJMYCD])|(MP)|(O[HKR])|(P[WAR])|(RI)|(S[CD])|(T[NX])|(UT)|(V[TIA])|(W[AVIY]))$
(assert (not (str.in_re X (re.++ (re.union (re.++ (str.to_re "A") (re.union (str.to_re "L") (str.to_re "K") (str.to_re "S") (str.to_re "Z") (str.to_re "R"))) (re.++ (str.to_re "C") (re.union (str.to_re "A") (str.to_re "O") (str.to_re "T"))) (re.++ (str.to_re "D") (re.union (str.to_re "E") (str.to_re "C"))) (re.++ (str.to_re "F") (re.union (str.to_re "M") (str.to_re "L"))) (re.++ (str.to_re "G") (re.union (str.to_re "A") (str.to_re "U"))) (str.to_re "HI") (re.++ (str.to_re "I") (re.union (str.to_re "D") (str.to_re "L") (str.to_re "N") (str.to_re "A"))) (re.++ (str.to_re "K") (re.union (str.to_re "S") (str.to_re "Y"))) (str.to_re "LA") (re.++ (str.to_re "M") (re.union (str.to_re "E") (str.to_re "H") (str.to_re "D") (str.to_re "A") (str.to_re "I") (str.to_re "N") (str.to_re "S") (str.to_re "O") (str.to_re "T"))) (re.++ (str.to_re "N") (re.union (str.to_re "E") (str.to_re "V") (str.to_re "H") (str.to_re "J") (str.to_re "M") (str.to_re "Y") (str.to_re "C") (str.to_re "D"))) (str.to_re "MP") (re.++ (str.to_re "O") (re.union (str.to_re "H") (str.to_re "K") (str.to_re "R"))) (re.++ (str.to_re "P") (re.union (str.to_re "W") (str.to_re "A") (str.to_re "R"))) (str.to_re "RI") (re.++ (str.to_re "S") (re.union (str.to_re "C") (str.to_re "D"))) (re.++ (str.to_re "T") (re.union (str.to_re "N") (str.to_re "X"))) (str.to_re "UT") (re.++ (str.to_re "V") (re.union (str.to_re "T") (str.to_re "I") (str.to_re "A"))) (re.++ (str.to_re "W") (re.union (str.to_re "A") (str.to_re "V") (str.to_re "I") (str.to_re "Y")))) (str.to_re "\u{0a}")))))
; (([\w]+:)?//)?(([\d\w]|%[a-fA-f\d]{2,2})+(:([\d\w]|%[a-fA-f\d]{2,2})+)?@)?([\d\w][-\d\w]{0,253}[\d\w]\.)+[\w]{2,4}(:[\d]+)?(/([-+_~.\d\w]|%[a-fA-f\d]{2,2})*)*(\?(&?([-+_~.\d\w]|%[a-fA-f\d]{2,2})=?)*)?(#([-+_~.\d\w]|%[a-fA-f\d]{2,2})*)?
(assert (str.in_re X (re.++ (re.opt (re.++ (re.opt (re.++ (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re ":"))) (str.to_re "//"))) (re.opt (re.++ (re.+ (re.union (re.++ (str.to_re "%") ((_ re.loop 2 2) (re.union (re.range "a" "f") (re.range "A" "f") (re.range "0" "9")))) (re.range "0" "9") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.opt (re.++ (str.to_re ":") (re.+ (re.union (re.++ (str.to_re "%") ((_ re.loop 2 2) (re.union (re.range "a" "f") (re.range "A" "f") (re.range "0" "9")))) (re.range "0" "9") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))))) (str.to_re "@"))) (re.+ (re.++ (re.union (re.range "0" "9") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")) ((_ re.loop 0 253) (re.union (str.to_re "-") (re.range "0" "9") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.union (re.range "0" "9") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")) (str.to_re "."))) ((_ re.loop 2 4) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.opt (re.++ (str.to_re ":") (re.+ (re.range "0" "9")))) (re.* (re.++ (str.to_re "/") (re.* (re.union (re.++ (str.to_re "%") ((_ re.loop 2 2) (re.union (re.range "a" "f") (re.range "A" "f") (re.range "0" "9")))) (str.to_re "-") (str.to_re "+") (str.to_re "_") (str.to_re "~") (str.to_re ".") (re.range "0" "9") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))))) (re.opt (re.++ (str.to_re "?") (re.* (re.++ (re.opt (str.to_re "&")) (re.union (re.++ (str.to_re "%") ((_ re.loop 2 2) (re.union (re.range "a" "f") (re.range "A" "f") (re.range "0" "9")))) (str.to_re "-") (str.to_re "+") (str.to_re "_") (str.to_re "~") (str.to_re ".") (re.range "0" "9") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")) (re.opt (str.to_re "=")))))) (re.opt (re.++ (str.to_re "#") (re.* (re.union (re.++ (str.to_re "%") ((_ re.loop 2 2) (re.union (re.range "a" "f") (re.range "A" "f") (re.range "0" "9")))) (str.to_re "-") (str.to_re "+") (str.to_re "_") (str.to_re "~") (str.to_re ".") (re.range "0" "9") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))))) (str.to_re "\u{0a}"))))
; PASSW=\w+www2\u{2e}instantbuzz\u{2e}com\x2Fbar_pl\x2Fchk_bar\.fcgi
(assert (not (str.in_re X (re.++ (str.to_re "PASSW=") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "www2.instantbuzz.com/bar_pl/chk_bar.fcgi\u{0a}")))))
(check-sat)
