(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; (^\+?1[0-7]\d(\.\d+)?$)|(^\+?([1-9])?\d(\.\d+)?$)|(^-180$)|(^-1[1-7]\d(\.\d+)?$)|(^-[1-9]\d(\.\d+)?$)|(^\-\d(\.\d+)?$)
(assert (str.in_re X (re.union (re.++ (re.opt (str.to_re "+")) (str.to_re "1") (re.range "0" "7") (re.range "0" "9") (re.opt (re.++ (str.to_re ".") (re.+ (re.range "0" "9"))))) (re.++ (re.opt (str.to_re "+")) (re.opt (re.range "1" "9")) (re.range "0" "9") (re.opt (re.++ (str.to_re ".") (re.+ (re.range "0" "9"))))) (str.to_re "-180") (re.++ (str.to_re "-1") (re.range "1" "7") (re.range "0" "9") (re.opt (re.++ (str.to_re ".") (re.+ (re.range "0" "9"))))) (re.++ (str.to_re "-") (re.range "1" "9") (re.range "0" "9") (re.opt (re.++ (str.to_re ".") (re.+ (re.range "0" "9"))))) (re.++ (str.to_re "\u{0a}-") (re.range "0" "9") (re.opt (re.++ (str.to_re ".") (re.+ (re.range "0" "9"))))))))
; ^((A[ABEHKLMPRSTWXYZ])|(B[ABEHKLMT])|(C[ABEHKLR])|(E[ABEHKLMPRSTWXYZ])|(GY)|(H[ABEHKLMPRSTWXYZ])|(J[ABCEGHJKLMNPRSTWXYZ])|(K[ABEHKLMPRSTWXYZ])|(L[ABEHKLMPRSTWXYZ])|(M[AWX])|(N[ABEHLMPRSWXYZ])|(O[ABEHKLMPRSX])|(P[ABCEGHJLMNPRSTWXY])|(R[ABEHKMPRSTWXYZ])|(S[ABCGHJKLMNPRSTWXYZ])|(T[ABEHKLMPRSTWXYZ])|(W[ABEKLMP])|(Y[ABEHKLMPRSTWXYZ])|(Z[ABEHKLMPRSTWXY]))\d{6}([A-D]|\s)$
(assert (not (str.in_re X (re.++ (re.union (re.++ (str.to_re "A") (re.union (str.to_re "A") (str.to_re "B") (str.to_re "E") (str.to_re "H") (str.to_re "K") (str.to_re "L") (str.to_re "M") (str.to_re "P") (str.to_re "R") (str.to_re "S") (str.to_re "T") (str.to_re "W") (str.to_re "X") (str.to_re "Y") (str.to_re "Z"))) (re.++ (str.to_re "B") (re.union (str.to_re "A") (str.to_re "B") (str.to_re "E") (str.to_re "H") (str.to_re "K") (str.to_re "L") (str.to_re "M") (str.to_re "T"))) (re.++ (str.to_re "C") (re.union (str.to_re "A") (str.to_re "B") (str.to_re "E") (str.to_re "H") (str.to_re "K") (str.to_re "L") (str.to_re "R"))) (re.++ (str.to_re "E") (re.union (str.to_re "A") (str.to_re "B") (str.to_re "E") (str.to_re "H") (str.to_re "K") (str.to_re "L") (str.to_re "M") (str.to_re "P") (str.to_re "R") (str.to_re "S") (str.to_re "T") (str.to_re "W") (str.to_re "X") (str.to_re "Y") (str.to_re "Z"))) (str.to_re "GY") (re.++ (str.to_re "H") (re.union (str.to_re "A") (str.to_re "B") (str.to_re "E") (str.to_re "H") (str.to_re "K") (str.to_re "L") (str.to_re "M") (str.to_re "P") (str.to_re "R") (str.to_re "S") (str.to_re "T") (str.to_re "W") (str.to_re "X") (str.to_re "Y") (str.to_re "Z"))) (re.++ (str.to_re "J") (re.union (str.to_re "A") (str.to_re "B") (str.to_re "C") (str.to_re "E") (str.to_re "G") (str.to_re "H") (str.to_re "J") (str.to_re "K") (str.to_re "L") (str.to_re "M") (str.to_re "N") (str.to_re "P") (str.to_re "R") (str.to_re "S") (str.to_re "T") (str.to_re "W") (str.to_re "X") (str.to_re "Y") (str.to_re "Z"))) (re.++ (str.to_re "K") (re.union (str.to_re "A") (str.to_re "B") (str.to_re "E") (str.to_re "H") (str.to_re "K") (str.to_re "L") (str.to_re "M") (str.to_re "P") (str.to_re "R") (str.to_re "S") (str.to_re "T") (str.to_re "W") (str.to_re "X") (str.to_re "Y") (str.to_re "Z"))) (re.++ (str.to_re "L") (re.union (str.to_re "A") (str.to_re "B") (str.to_re "E") (str.to_re "H") (str.to_re "K") (str.to_re "L") (str.to_re "M") (str.to_re "P") (str.to_re "R") (str.to_re "S") (str.to_re "T") (str.to_re "W") (str.to_re "X") (str.to_re "Y") (str.to_re "Z"))) (re.++ (str.to_re "M") (re.union (str.to_re "A") (str.to_re "W") (str.to_re "X"))) (re.++ (str.to_re "N") (re.union (str.to_re "A") (str.to_re "B") (str.to_re "E") (str.to_re "H") (str.to_re "L") (str.to_re "M") (str.to_re "P") (str.to_re "R") (str.to_re "S") (str.to_re "W") (str.to_re "X") (str.to_re "Y") (str.to_re "Z"))) (re.++ (str.to_re "O") (re.union (str.to_re "A") (str.to_re "B") (str.to_re "E") (str.to_re "H") (str.to_re "K") (str.to_re "L") (str.to_re "M") (str.to_re "P") (str.to_re "R") (str.to_re "S") (str.to_re "X"))) (re.++ (str.to_re "P") (re.union (str.to_re "A") (str.to_re "B") (str.to_re "C") (str.to_re "E") (str.to_re "G") (str.to_re "H") (str.to_re "J") (str.to_re "L") (str.to_re "M") (str.to_re "N") (str.to_re "P") (str.to_re "R") (str.to_re "S") (str.to_re "T") (str.to_re "W") (str.to_re "X") (str.to_re "Y"))) (re.++ (str.to_re "R") (re.union (str.to_re "A") (str.to_re "B") (str.to_re "E") (str.to_re "H") (str.to_re "K") (str.to_re "M") (str.to_re "P") (str.to_re "R") (str.to_re "S") (str.to_re "T") (str.to_re "W") (str.to_re "X") (str.to_re "Y") (str.to_re "Z"))) (re.++ (str.to_re "S") (re.union (str.to_re "A") (str.to_re "B") (str.to_re "C") (str.to_re "G") (str.to_re "H") (str.to_re "J") (str.to_re "K") (str.to_re "L") (str.to_re "M") (str.to_re "N") (str.to_re "P") (str.to_re "R") (str.to_re "S") (str.to_re "T") (str.to_re "W") (str.to_re "X") (str.to_re "Y") (str.to_re "Z"))) (re.++ (str.to_re "T") (re.union (str.to_re "A") (str.to_re "B") (str.to_re "E") (str.to_re "H") (str.to_re "K") (str.to_re "L") (str.to_re "M") (str.to_re "P") (str.to_re "R") (str.to_re "S") (str.to_re "T") (str.to_re "W") (str.to_re "X") (str.to_re "Y") (str.to_re "Z"))) (re.++ (str.to_re "W") (re.union (str.to_re "A") (str.to_re "B") (str.to_re "E") (str.to_re "K") (str.to_re "L") (str.to_re "M") (str.to_re "P"))) (re.++ (str.to_re "Y") (re.union (str.to_re "A") (str.to_re "B") (str.to_re "E") (str.to_re "H") (str.to_re "K") (str.to_re "L") (str.to_re "M") (str.to_re "P") (str.to_re "R") (str.to_re "S") (str.to_re "T") (str.to_re "W") (str.to_re "X") (str.to_re "Y") (str.to_re "Z"))) (re.++ (str.to_re "Z") (re.union (str.to_re "A") (str.to_re "B") (str.to_re "E") (str.to_re "H") (str.to_re "K") (str.to_re "L") (str.to_re "M") (str.to_re "P") (str.to_re "R") (str.to_re "S") (str.to_re "T") (str.to_re "W") (str.to_re "X") (str.to_re "Y")))) ((_ re.loop 6 6) (re.range "0" "9")) (re.union (re.range "A" "D") (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}")) (str.to_re "\u{0a}")))))
(check-sat)
