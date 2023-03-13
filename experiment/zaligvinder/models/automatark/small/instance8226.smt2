(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; ^((4\d{3})|(5[1-5]\d{2})|(6011))-?\d{4}-?\d{4}-?\d{4}|3[4,7]\d{13}$
(assert (str.in_re X (re.union (re.++ (re.union (re.++ (str.to_re "4") ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ (str.to_re "5") (re.range "1" "5") ((_ re.loop 2 2) (re.range "0" "9"))) (str.to_re "6011")) (re.opt (str.to_re "-")) ((_ re.loop 4 4) (re.range "0" "9")) (re.opt (str.to_re "-")) ((_ re.loop 4 4) (re.range "0" "9")) (re.opt (str.to_re "-")) ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ (str.to_re "3") (re.union (str.to_re "4") (str.to_re ",") (str.to_re "7")) ((_ re.loop 13 13) (re.range "0" "9")) (str.to_re "\u{0a}")))))
; alert\d+an.*Spyiz=e2give\.comrichfind\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "alert") (re.+ (re.range "0" "9")) (str.to_re "an") (re.* re.allchar) (str.to_re "Spyiz=e2give.comrichfind.com\u{0a}")))))
; (^(((([1-9])|([0][1-9])|([1-2][0-9])|(30))\-([A,a][P,p][R,r]|[J,j][U,u][N,n]|[S,s][E,e][P,p]|[N,n][O,o][V,v]))|((([1-9])|([0][1-9])|([1-2][0-9])|([3][0-1]))\-([J,j][A,a][N,n]|[M,m][A,a][R,r]|[M,m][A,a][Y,y]|[J,j][U,u][L,l]|[A,a][U,u][G,g]|[O,o][C,c][T,t]|[D,d][E,e][C,c])))\-[0-9]{4}$)|(^(([1-9])|([0][1-9])|([1][0-9])|([2][0-8]))\-([F,f][E,e][B,b])\-[0-9]{2}(([02468][1235679])|([13579][01345789]))$)|(^(([1-9])|([0][1-9])|([1][0-9])|([2][0-9]))\-([F,f][E,e][B,b])\-[0-9]{2}(([02468][048])|([13579][26]))$)
(assert (str.in_re X (re.union (re.++ (re.union (re.++ (re.union (re.range "1" "9") (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (re.range "1" "2") (re.range "0" "9")) (str.to_re "30")) (str.to_re "-") (re.union (re.++ (re.union (str.to_re "A") (str.to_re ",") (str.to_re "a")) (re.union (str.to_re "P") (str.to_re ",") (str.to_re "p")) (re.union (str.to_re "R") (str.to_re ",") (str.to_re "r"))) (re.++ (re.union (str.to_re "J") (str.to_re ",") (str.to_re "j")) (re.union (str.to_re "U") (str.to_re ",") (str.to_re "u")) (re.union (str.to_re "N") (str.to_re ",") (str.to_re "n"))) (re.++ (re.union (str.to_re "S") (str.to_re ",") (str.to_re "s")) (re.union (str.to_re "E") (str.to_re ",") (str.to_re "e")) (re.union (str.to_re "P") (str.to_re ",") (str.to_re "p"))) (re.++ (re.union (str.to_re "N") (str.to_re ",") (str.to_re "n")) (re.union (str.to_re "O") (str.to_re ",") (str.to_re "o")) (re.union (str.to_re "V") (str.to_re ",") (str.to_re "v"))))) (re.++ (re.union (re.range "1" "9") (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (re.range "1" "2") (re.range "0" "9")) (re.++ (str.to_re "3") (re.range "0" "1"))) (str.to_re "-") (re.union (re.++ (re.union (str.to_re "J") (str.to_re ",") (str.to_re "j")) (re.union (str.to_re "A") (str.to_re ",") (str.to_re "a")) (re.union (str.to_re "N") (str.to_re ",") (str.to_re "n"))) (re.++ (re.union (str.to_re "M") (str.to_re ",") (str.to_re "m")) (re.union (str.to_re "A") (str.to_re ",") (str.to_re "a")) (re.union (str.to_re "R") (str.to_re ",") (str.to_re "r"))) (re.++ (re.union (str.to_re "M") (str.to_re ",") (str.to_re "m")) (re.union (str.to_re "A") (str.to_re ",") (str.to_re "a")) (re.union (str.to_re "Y") (str.to_re ",") (str.to_re "y"))) (re.++ (re.union (str.to_re "J") (str.to_re ",") (str.to_re "j")) (re.union (str.to_re "U") (str.to_re ",") (str.to_re "u")) (re.union (str.to_re "L") (str.to_re ",") (str.to_re "l"))) (re.++ (re.union (str.to_re "A") (str.to_re ",") (str.to_re "a")) (re.union (str.to_re "U") (str.to_re ",") (str.to_re "u")) (re.union (str.to_re "G") (str.to_re ",") (str.to_re "g"))) (re.++ (re.union (str.to_re "O") (str.to_re ",") (str.to_re "o")) (re.union (str.to_re "C") (str.to_re ",") (str.to_re "c")) (re.union (str.to_re "T") (str.to_re ",") (str.to_re "t"))) (re.++ (re.union (str.to_re "D") (str.to_re ",") (str.to_re "d")) (re.union (str.to_re "E") (str.to_re ",") (str.to_re "e")) (re.union (str.to_re "C") (str.to_re ",") (str.to_re "c")))))) (str.to_re "-") ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ (re.union (re.range "1" "9") (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (str.to_re "1") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "8"))) (str.to_re "--") ((_ re.loop 2 2) (re.range "0" "9")) (re.union (re.++ (re.union (str.to_re "0") (str.to_re "2") (str.to_re "4") (str.to_re "6") (str.to_re "8")) (re.union (str.to_re "1") (str.to_re "2") (str.to_re "3") (str.to_re "5") (str.to_re "6") (str.to_re "7") (str.to_re "9"))) (re.++ (re.union (str.to_re "1") (str.to_re "3") (str.to_re "5") (str.to_re "7") (str.to_re "9")) (re.union (str.to_re "0") (str.to_re "1") (str.to_re "3") (str.to_re "4") (str.to_re "5") (str.to_re "7") (str.to_re "8") (str.to_re "9")))) (re.union (str.to_re "F") (str.to_re ",") (str.to_re "f")) (re.union (str.to_re "E") (str.to_re ",") (str.to_re "e")) (re.union (str.to_re "B") (str.to_re ",") (str.to_re "b"))) (re.++ (str.to_re "\u{0a}") (re.union (re.range "1" "9") (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (str.to_re "1") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "9"))) (str.to_re "--") ((_ re.loop 2 2) (re.range "0" "9")) (re.union (re.++ (re.union (str.to_re "0") (str.to_re "2") (str.to_re "4") (str.to_re "6") (str.to_re "8")) (re.union (str.to_re "0") (str.to_re "4") (str.to_re "8"))) (re.++ (re.union (str.to_re "1") (str.to_re "3") (str.to_re "5") (str.to_re "7") (str.to_re "9")) (re.union (str.to_re "2") (str.to_re "6")))) (re.union (str.to_re "F") (str.to_re ",") (str.to_re "f")) (re.union (str.to_re "E") (str.to_re ",") (str.to_re "e")) (re.union (str.to_re "B") (str.to_re ",") (str.to_re "b"))))))
; \x2Fdss\x2Fcc\.2_0_0\.GoogleHXDownloadasdbiz\x2Ebiz
(assert (str.in_re X (str.to_re "/dss/cc.2_0_0.GoogleHXDownloadasdbiz.biz\u{0a}")))
(check-sat)
