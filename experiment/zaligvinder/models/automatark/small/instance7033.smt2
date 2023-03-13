(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; named.*Host\x3A\s+zmnjgmomgbdz\u{2f}zzmw\.gzt
(assert (not (str.in_re X (re.++ (str.to_re "named") (re.* re.allchar) (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re "zmnjgmomgbdz/zzmw.gzt\u{0a}")))))
; products\s+Host\x3A\s+User-Agent\x3A
(assert (str.in_re X (re.++ (str.to_re "products") (re.+ (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re "User-Agent:\u{0a}"))))
; (((^[BEGLMNS][1-9]\d?)|(^W[2-9])|(^(A[BL]|B[ABDHLNRST]|C[ABFHMORTVW]|D[ADEGHLNTY]|E[HNX]|F[KY]|G[LUY]|H[ADGPRSUX]|I[GMPV]|JE|K[ATWY]|L[ADELNSU]|M[EKL]|N[EGNPRW]|O[LX]|P[AEHLOR]|R[GHM]|S[AEGKL-PRSTWY]|T[ADFNQRSW]|UB|W[ADFNRSV]|YO|ZE)\d\d?)|(^W1[A-HJKSTUW0-9])|(((^WC[1-2])|(^EC[1-4])|(^SW1))[ABEHMNPRVWXY]))(\s*)?([0-9][ABD-HJLNP-UW-Z]{2}))$|(^GIR\s?0AA$)
(assert (not (str.in_re X (re.union (re.++ (re.union (re.++ (re.union (str.to_re "B") (str.to_re "E") (str.to_re "G") (str.to_re "L") (str.to_re "M") (str.to_re "N") (str.to_re "S")) (re.range "1" "9") (re.opt (re.range "0" "9"))) (re.++ (str.to_re "W") (re.range "2" "9")) (re.++ (re.union (re.++ (str.to_re "A") (re.union (str.to_re "B") (str.to_re "L"))) (re.++ (str.to_re "B") (re.union (str.to_re "A") (str.to_re "B") (str.to_re "D") (str.to_re "H") (str.to_re "L") (str.to_re "N") (str.to_re "R") (str.to_re "S") (str.to_re "T"))) (re.++ (str.to_re "C") (re.union (str.to_re "A") (str.to_re "B") (str.to_re "F") (str.to_re "H") (str.to_re "M") (str.to_re "O") (str.to_re "R") (str.to_re "T") (str.to_re "V") (str.to_re "W"))) (re.++ (str.to_re "D") (re.union (str.to_re "A") (str.to_re "D") (str.to_re "E") (str.to_re "G") (str.to_re "H") (str.to_re "L") (str.to_re "N") (str.to_re "T") (str.to_re "Y"))) (re.++ (str.to_re "E") (re.union (str.to_re "H") (str.to_re "N") (str.to_re "X"))) (re.++ (str.to_re "F") (re.union (str.to_re "K") (str.to_re "Y"))) (re.++ (str.to_re "G") (re.union (str.to_re "L") (str.to_re "U") (str.to_re "Y"))) (re.++ (str.to_re "H") (re.union (str.to_re "A") (str.to_re "D") (str.to_re "G") (str.to_re "P") (str.to_re "R") (str.to_re "S") (str.to_re "U") (str.to_re "X"))) (re.++ (str.to_re "I") (re.union (str.to_re "G") (str.to_re "M") (str.to_re "P") (str.to_re "V"))) (str.to_re "JE") (re.++ (str.to_re "K") (re.union (str.to_re "A") (str.to_re "T") (str.to_re "W") (str.to_re "Y"))) (re.++ (str.to_re "L") (re.union (str.to_re "A") (str.to_re "D") (str.to_re "E") (str.to_re "L") (str.to_re "N") (str.to_re "S") (str.to_re "U"))) (re.++ (str.to_re "M") (re.union (str.to_re "E") (str.to_re "K") (str.to_re "L"))) (re.++ (str.to_re "N") (re.union (str.to_re "E") (str.to_re "G") (str.to_re "N") (str.to_re "P") (str.to_re "R") (str.to_re "W"))) (re.++ (str.to_re "O") (re.union (str.to_re "L") (str.to_re "X"))) (re.++ (str.to_re "P") (re.union (str.to_re "A") (str.to_re "E") (str.to_re "H") (str.to_re "L") (str.to_re "O") (str.to_re "R"))) (re.++ (str.to_re "R") (re.union (str.to_re "G") (str.to_re "H") (str.to_re "M"))) (re.++ (str.to_re "S") (re.union (str.to_re "A") (str.to_re "E") (str.to_re "G") (str.to_re "K") (re.range "L" "P") (str.to_re "R") (str.to_re "S") (str.to_re "T") (str.to_re "W") (str.to_re "Y"))) (re.++ (str.to_re "T") (re.union (str.to_re "A") (str.to_re "D") (str.to_re "F") (str.to_re "N") (str.to_re "Q") (str.to_re "R") (str.to_re "S") (str.to_re "W"))) (str.to_re "UB") (re.++ (str.to_re "W") (re.union (str.to_re "A") (str.to_re "D") (str.to_re "F") (str.to_re "N") (str.to_re "R") (str.to_re "S") (str.to_re "V"))) (str.to_re "YO") (str.to_re "ZE")) (re.range "0" "9") (re.opt (re.range "0" "9"))) (re.++ (str.to_re "W1") (re.union (re.range "A" "H") (str.to_re "J") (str.to_re "K") (str.to_re "S") (str.to_re "T") (str.to_re "U") (str.to_re "W") (re.range "0" "9"))) (re.++ (re.union (re.++ (str.to_re "WC") (re.range "1" "2")) (re.++ (str.to_re "EC") (re.range "1" "4")) (str.to_re "SW1")) (re.union (str.to_re "A") (str.to_re "B") (str.to_re "E") (str.to_re "H") (str.to_re "M") (str.to_re "N") (str.to_re "P") (str.to_re "R") (str.to_re "V") (str.to_re "W") (str.to_re "X") (str.to_re "Y")))) (re.opt (re.* (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}")))) (re.range "0" "9") ((_ re.loop 2 2) (re.union (str.to_re "A") (str.to_re "B") (re.range "D" "H") (str.to_re "J") (str.to_re "L") (str.to_re "N") (re.range "P" "U") (re.range "W" "Z")))) (re.++ (str.to_re "\u{0a}GIR") (re.opt (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re "0AA"))))))
; /^\u{2f}\u{3f}xclve\u{5f}[a-zA-Z0-9]{30}$/Ui
(assert (not (str.in_re X (re.++ (str.to_re "//?xclve_") ((_ re.loop 30 30) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to_re "/Ui\u{0a}")))))
; /\u{2f}blackmuscats?\u{3f}\d/Ui
(assert (str.in_re X (re.++ (str.to_re "//blackmuscat") (re.opt (str.to_re "s")) (str.to_re "?") (re.range "0" "9") (str.to_re "/Ui\u{0a}"))))
(check-sat)
