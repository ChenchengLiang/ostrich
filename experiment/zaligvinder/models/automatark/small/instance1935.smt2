(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; ^((((0[1-9]|[1-2][0-9]|3[0-1])[./-](0[13578]|10|12))|((0[1-9]|[1-2][0-9])[./-](02))|(((0[1-9])|([1-2][0-9])|(30))[./-](0[469]|11)))[./-]((19\d{2})|(2[012]\d{2})))$
(assert (str.in_re X (re.++ (str.to_re "\u{0a}") (re.union (re.++ (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (re.range "1" "2") (re.range "0" "9")) (re.++ (str.to_re "3") (re.range "0" "1"))) (re.union (str.to_re ".") (str.to_re "/") (str.to_re "-")) (re.union (re.++ (str.to_re "0") (re.union (str.to_re "1") (str.to_re "3") (str.to_re "5") (str.to_re "7") (str.to_re "8"))) (str.to_re "10") (str.to_re "12"))) (re.++ (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (re.range "1" "2") (re.range "0" "9"))) (re.union (str.to_re ".") (str.to_re "/") (str.to_re "-")) (str.to_re "02")) (re.++ (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (re.range "1" "2") (re.range "0" "9")) (str.to_re "30")) (re.union (str.to_re ".") (str.to_re "/") (str.to_re "-")) (re.union (re.++ (str.to_re "0") (re.union (str.to_re "4") (str.to_re "6") (str.to_re "9"))) (str.to_re "11")))) (re.union (str.to_re ".") (str.to_re "/") (str.to_re "-")) (re.union (re.++ (str.to_re "19") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (str.to_re "2") (re.union (str.to_re "0") (str.to_re "1") (str.to_re "2")) ((_ re.loop 2 2) (re.range "0" "9")))))))
; ((A[FGIKLMNPRSUZ]S?X?|DAL?L?A?E?S?|DE|DE[LNRST]L?A?E?H?I?O?S?|DI[AE]?|DOS?|DU|EIT?N?E?|ELS?|EN|ETT?|HAI?|HE[NT]|HIN?A?I?N?R?|HOI|IL|IM|ISA|KA|KE|LAS|LES?|LH?IS?|LOS?|LO?U|MA?C|N[AIY]|O[IP]|SI|T[AEO]N?R?|U[MN][AEOS]?|VAN|VE[LR]|VO[MN]|Y[ENR]|ZU[MR]?) )?((LAS?|LOS?|DEN?R?|ZU) )?[A-Z0/'\.-]+( |$)(SR|JR|II+V?|VI+|[1-9][STRDH]+)?
(assert (not (str.in_re X (re.++ (re.opt (re.++ (re.union (re.++ (str.to_re "A") (re.union (str.to_re "F") (str.to_re "G") (str.to_re "I") (str.to_re "K") (str.to_re "L") (str.to_re "M") (str.to_re "N") (str.to_re "P") (str.to_re "R") (str.to_re "S") (str.to_re "U") (str.to_re "Z")) (re.opt (str.to_re "S")) (re.opt (str.to_re "X"))) (re.++ (str.to_re "DA") (re.opt (str.to_re "L")) (re.opt (str.to_re "L")) (re.opt (str.to_re "A")) (re.opt (str.to_re "E")) (re.opt (str.to_re "S"))) (str.to_re "DE") (re.++ (str.to_re "DE") (re.union (str.to_re "L") (str.to_re "N") (str.to_re "R") (str.to_re "S") (str.to_re "T")) (re.opt (str.to_re "L")) (re.opt (str.to_re "A")) (re.opt (str.to_re "E")) (re.opt (str.to_re "H")) (re.opt (str.to_re "I")) (re.opt (str.to_re "O")) (re.opt (str.to_re "S"))) (re.++ (str.to_re "DI") (re.opt (re.union (str.to_re "A") (str.to_re "E")))) (re.++ (str.to_re "DO") (re.opt (str.to_re "S"))) (str.to_re "DU") (re.++ (str.to_re "EI") (re.opt (str.to_re "T")) (re.opt (str.to_re "N")) (re.opt (str.to_re "E"))) (re.++ (str.to_re "EL") (re.opt (str.to_re "S"))) (str.to_re "EN") (re.++ (str.to_re "ET") (re.opt (str.to_re "T"))) (re.++ (str.to_re "HA") (re.opt (str.to_re "I"))) (re.++ (str.to_re "HE") (re.union (str.to_re "N") (str.to_re "T"))) (re.++ (str.to_re "HI") (re.opt (str.to_re "N")) (re.opt (str.to_re "A")) (re.opt (str.to_re "I")) (re.opt (str.to_re "N")) (re.opt (str.to_re "R"))) (str.to_re "HOI") (str.to_re "IL") (str.to_re "IM") (str.to_re "ISA") (str.to_re "KA") (str.to_re "KE") (str.to_re "LAS") (re.++ (str.to_re "LE") (re.opt (str.to_re "S"))) (re.++ (str.to_re "L") (re.opt (str.to_re "H")) (str.to_re "I") (re.opt (str.to_re "S"))) (re.++ (str.to_re "LO") (re.opt (str.to_re "S"))) (re.++ (str.to_re "L") (re.opt (str.to_re "O")) (str.to_re "U")) (re.++ (str.to_re "M") (re.opt (str.to_re "A")) (str.to_re "C")) (re.++ (str.to_re "N") (re.union (str.to_re "A") (str.to_re "I") (str.to_re "Y"))) (re.++ (str.to_re "O") (re.union (str.to_re "I") (str.to_re "P"))) (str.to_re "SI") (re.++ (str.to_re "T") (re.union (str.to_re "A") (str.to_re "E") (str.to_re "O")) (re.opt (str.to_re "N")) (re.opt (str.to_re "R"))) (re.++ (str.to_re "U") (re.union (str.to_re "M") (str.to_re "N")) (re.opt (re.union (str.to_re "A") (str.to_re "E") (str.to_re "O") (str.to_re "S")))) (str.to_re "VAN") (re.++ (str.to_re "VE") (re.union (str.to_re "L") (str.to_re "R"))) (re.++ (str.to_re "VO") (re.union (str.to_re "M") (str.to_re "N"))) (re.++ (str.to_re "Y") (re.union (str.to_re "E") (str.to_re "N") (str.to_re "R"))) (re.++ (str.to_re "ZU") (re.opt (re.union (str.to_re "M") (str.to_re "R"))))) (str.to_re " "))) (re.opt (re.++ (re.union (re.++ (str.to_re "LA") (re.opt (str.to_re "S"))) (re.++ (str.to_re "LO") (re.opt (str.to_re "S"))) (re.++ (str.to_re "DE") (re.opt (str.to_re "N")) (re.opt (str.to_re "R"))) (str.to_re "ZU")) (str.to_re " "))) (re.+ (re.union (re.range "A" "Z") (str.to_re "0") (str.to_re "/") (str.to_re "'") (str.to_re ".") (str.to_re "-"))) (str.to_re " ") (re.opt (re.union (str.to_re "SR") (str.to_re "JR") (re.++ (str.to_re "I") (re.+ (str.to_re "I")) (re.opt (str.to_re "V"))) (re.++ (str.to_re "V") (re.+ (str.to_re "I"))) (re.++ (re.range "1" "9") (re.+ (re.union (str.to_re "S") (str.to_re "T") (str.to_re "R") (str.to_re "D") (str.to_re "H")))))) (str.to_re "\u{0a}")))))
; (http(s?)://|[a-zA-Z0-9\-]+\.)[a-zA-Z0-9/~\-]+\.[a-zA-Z0-9/~\-_,&\?\.;]+[^\.,\s<]
(assert (str.in_re X (re.++ (re.union (re.++ (str.to_re "http") (re.opt (str.to_re "s")) (str.to_re "://")) (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "-"))) (str.to_re "."))) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "/") (str.to_re "~") (str.to_re "-"))) (str.to_re ".") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "/") (str.to_re "~") (str.to_re "-") (str.to_re "_") (str.to_re ",") (str.to_re "&") (str.to_re "?") (str.to_re ".") (str.to_re ";"))) (re.union (str.to_re ".") (str.to_re ",") (str.to_re "<") (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}")) (str.to_re "\u{0a}"))))
; User-Agent\x3AUser-Agent\x3Awp-includes\x2Ftheme\x2Ephp\x3Fframe_ver2
(assert (str.in_re X (str.to_re "User-Agent:User-Agent:wp-includes/theme.php?frame_ver2\u{0a}")))
(check-sat)
