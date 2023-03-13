(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; /\/stat_u\/$/U
(assert (not (str.in_re X (str.to_re "//stat_u//U\u{0a}"))))
; (^[Bb][Ff][Pp][Oo]\s*[0-9]{1,4})|(^[Gg][Ii][Rr]\s*0[Aa][Aa]$)|([Aa][Ss][Cc][Nn]|[Bb][Bb][Nn][Dd]|[Bb][Ii][Qq][Qq]|[Ff][Ii][Qq][Qq]|[Pp][Cc][Rr][Nn]|[Ss][Ii][Qq][Qq]|[Ss][Tt][Hh][Ll]|[Tt][Dd][Cc][Uu]\s*1[Zz][Zz])|(^([Aa][BLbl]|[Bb][ABDHLNRSTabdhlnrst]?|[Cc][ABFHMORTVWabfhmortvw]|[Dd][ADEGHLNTYadeghlnty]|[Ee][CHNXchnx]?|[Ff][KYky]|[Gg][LUYluy]?|[Hh][ADGPRSUXadgprsux]|[Ii][GMPVgmpv]|[JE]|[je]|[Kk][ATWYatwy]|[Ll][ADELNSUadelnsu]?|[Mm][EKLekl]?|[Nn][EGNPRWegnprw]?|[Oo][LXlx]|[Pp][AEHLORaehlor]|[Rr][GHMghm]|[Ss][AEGK-PRSTWYaegk-prstwy]?|[Tt][ADFNQRSWadfnqrsw]|[UB]|[ub]|[Ww][A-DFGHJKMNR-Wa-dfghjkmnr-w]?|[YO]|[yo]|[ZE]|[ze])[1-9][0-9]?[ABEHMNPRVWXYabehmnprvwxy]?\s*[0-9][ABD-HJLNP-UW-Zabd-hjlnp-uw-z]{2}$)
(assert (str.in_re X (re.union (re.++ (re.union (str.to_re "B") (str.to_re "b")) (re.union (str.to_re "F") (str.to_re "f")) (re.union (str.to_re "P") (str.to_re "p")) (re.union (str.to_re "O") (str.to_re "o")) (re.* (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) ((_ re.loop 1 4) (re.range "0" "9"))) (re.++ (re.union (str.to_re "G") (str.to_re "g")) (re.union (str.to_re "I") (str.to_re "i")) (re.union (str.to_re "R") (str.to_re "r")) (re.* (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re "0") (re.union (str.to_re "A") (str.to_re "a")) (re.union (str.to_re "A") (str.to_re "a"))) (re.++ (str.to_re "\u{0a}") (re.union (re.++ (re.union (str.to_re "A") (str.to_re "a")) (re.union (str.to_re "B") (str.to_re "L") (str.to_re "b") (str.to_re "l"))) (re.++ (re.union (str.to_re "B") (str.to_re "b")) (re.opt (re.union (str.to_re "A") (str.to_re "B") (str.to_re "D") (str.to_re "H") (str.to_re "L") (str.to_re "N") (str.to_re "R") (str.to_re "S") (str.to_re "T") (str.to_re "a") (str.to_re "b") (str.to_re "d") (str.to_re "h") (str.to_re "l") (str.to_re "n") (str.to_re "r") (str.to_re "s") (str.to_re "t")))) (re.++ (re.union (str.to_re "C") (str.to_re "c")) (re.union (str.to_re "A") (str.to_re "B") (str.to_re "F") (str.to_re "H") (str.to_re "M") (str.to_re "O") (str.to_re "R") (str.to_re "T") (str.to_re "V") (str.to_re "W") (str.to_re "a") (str.to_re "b") (str.to_re "f") (str.to_re "h") (str.to_re "m") (str.to_re "o") (str.to_re "r") (str.to_re "t") (str.to_re "v") (str.to_re "w"))) (re.++ (re.union (str.to_re "D") (str.to_re "d")) (re.union (str.to_re "A") (str.to_re "D") (str.to_re "E") (str.to_re "G") (str.to_re "H") (str.to_re "L") (str.to_re "N") (str.to_re "T") (str.to_re "Y") (str.to_re "a") (str.to_re "d") (str.to_re "e") (str.to_re "g") (str.to_re "h") (str.to_re "l") (str.to_re "n") (str.to_re "t") (str.to_re "y"))) (re.++ (re.union (str.to_re "E") (str.to_re "e")) (re.opt (re.union (str.to_re "C") (str.to_re "H") (str.to_re "N") (str.to_re "X") (str.to_re "c") (str.to_re "h") (str.to_re "n") (str.to_re "x")))) (re.++ (re.union (str.to_re "F") (str.to_re "f")) (re.union (str.to_re "K") (str.to_re "Y") (str.to_re "k") (str.to_re "y"))) (re.++ (re.union (str.to_re "G") (str.to_re "g")) (re.opt (re.union (str.to_re "L") (str.to_re "U") (str.to_re "Y") (str.to_re "l") (str.to_re "u") (str.to_re "y")))) (re.++ (re.union (str.to_re "H") (str.to_re "h")) (re.union (str.to_re "A") (str.to_re "D") (str.to_re "G") (str.to_re "P") (str.to_re "R") (str.to_re "S") (str.to_re "U") (str.to_re "X") (str.to_re "a") (str.to_re "d") (str.to_re "g") (str.to_re "p") (str.to_re "r") (str.to_re "s") (str.to_re "u") (str.to_re "x"))) (re.++ (re.union (str.to_re "I") (str.to_re "i")) (re.union (str.to_re "G") (str.to_re "M") (str.to_re "P") (str.to_re "V") (str.to_re "g") (str.to_re "m") (str.to_re "p") (str.to_re "v"))) (re.++ (re.union (str.to_re "K") (str.to_re "k")) (re.union (str.to_re "A") (str.to_re "T") (str.to_re "W") (str.to_re "Y") (str.to_re "a") (str.to_re "t") (str.to_re "w") (str.to_re "y"))) (re.++ (re.union (str.to_re "L") (str.to_re "l")) (re.opt (re.union (str.to_re "A") (str.to_re "D") (str.to_re "E") (str.to_re "L") (str.to_re "N") (str.to_re "S") (str.to_re "U") (str.to_re "a") (str.to_re "d") (str.to_re "e") (str.to_re "l") (str.to_re "n") (str.to_re "s") (str.to_re "u")))) (re.++ (re.union (str.to_re "M") (str.to_re "m")) (re.opt (re.union (str.to_re "E") (str.to_re "K") (str.to_re "L") (str.to_re "e") (str.to_re "k") (str.to_re "l")))) (re.++ (re.union (str.to_re "N") (str.to_re "n")) (re.opt (re.union (str.to_re "E") (str.to_re "G") (str.to_re "N") (str.to_re "P") (str.to_re "R") (str.to_re "W") (str.to_re "e") (str.to_re "g") (str.to_re "n") (str.to_re "p") (str.to_re "r") (str.to_re "w")))) (re.++ (re.union (str.to_re "O") (str.to_re "o")) (re.union (str.to_re "L") (str.to_re "X") (str.to_re "l") (str.to_re "x"))) (re.++ (re.union (str.to_re "P") (str.to_re "p")) (re.union (str.to_re "A") (str.to_re "E") (str.to_re "H") (str.to_re "L") (str.to_re "O") (str.to_re "R") (str.to_re "a") (str.to_re "e") (str.to_re "h") (str.to_re "l") (str.to_re "o") (str.to_re "r"))) (re.++ (re.union (str.to_re "R") (str.to_re "r")) (re.union (str.to_re "G") (str.to_re "H") (str.to_re "M") (str.to_re "g") (str.to_re "h") (str.to_re "m"))) (re.++ (re.union (str.to_re "S") (str.to_re "s")) (re.opt (re.union (str.to_re "A") (str.to_re "E") (str.to_re "G") (re.range "K" "P") (str.to_re "R") (str.to_re "S") (str.to_re "T") (str.to_re "W") (str.to_re "Y") (str.to_re "a") (str.to_re "e") (str.to_re "g") (re.range "k" "p") (str.to_re "r") (str.to_re "s") (str.to_re "t") (str.to_re "w") (str.to_re "y")))) (re.++ (re.union (str.to_re "T") (str.to_re "t")) (re.union (str.to_re "A") (str.to_re "D") (str.to_re "F") (str.to_re "N") (str.to_re "Q") (str.to_re "R") (str.to_re "S") (str.to_re "W") (str.to_re "a") (str.to_re "d") (str.to_re "f") (str.to_re "n") (str.to_re "q") (str.to_re "r") (str.to_re "s") (str.to_re "w"))) (re.++ (re.union (str.to_re "W") (str.to_re "w")) (re.opt (re.union (re.range "A" "D") (str.to_re "F") (str.to_re "G") (str.to_re "H") (str.to_re "J") (str.to_re "K") (str.to_re "M") (str.to_re "N") (re.range "R" "W") (re.range "a" "d") (str.to_re "f") (str.to_re "g") (str.to_re "h") (str.to_re "j") (str.to_re "k") (str.to_re "m") (str.to_re "n") (re.range "r" "w")))) (str.to_re "J") (str.to_re "E") (str.to_re "j") (str.to_re "e") (str.to_re "U") (str.to_re "B") (str.to_re "u") (str.to_re "b") (str.to_re "Y") (str.to_re "O") (str.to_re "y") (str.to_re "o") (str.to_re "Z") (str.to_re "E") (str.to_re "z") (str.to_re "e")) (re.range "1" "9") (re.opt (re.range "0" "9")) (re.opt (re.union (str.to_re "A") (str.to_re "B") (str.to_re "E") (str.to_re "H") (str.to_re "M") (str.to_re "N") (str.to_re "P") (str.to_re "R") (str.to_re "V") (str.to_re "W") (str.to_re "X") (str.to_re "Y") (str.to_re "a") (str.to_re "b") (str.to_re "e") (str.to_re "h") (str.to_re "m") (str.to_re "n") (str.to_re "p") (str.to_re "r") (str.to_re "v") (str.to_re "w") (str.to_re "x") (str.to_re "y"))) (re.* (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (re.range "0" "9") ((_ re.loop 2 2) (re.union (str.to_re "A") (str.to_re "B") (re.range "D" "H") (str.to_re "J") (str.to_re "L") (str.to_re "N") (re.range "P" "U") (re.range "W" "Z") (str.to_re "a") (str.to_re "b") (re.range "d" "h") (str.to_re "j") (str.to_re "l") (str.to_re "n") (re.range "p" "u") (re.range "w" "z")))) (re.++ (re.union (str.to_re "A") (str.to_re "a")) (re.union (str.to_re "S") (str.to_re "s")) (re.union (str.to_re "C") (str.to_re "c")) (re.union (str.to_re "N") (str.to_re "n"))) (re.++ (re.union (str.to_re "B") (str.to_re "b")) (re.union (str.to_re "B") (str.to_re "b")) (re.union (str.to_re "N") (str.to_re "n")) (re.union (str.to_re "D") (str.to_re "d"))) (re.++ (re.union (str.to_re "B") (str.to_re "b")) (re.union (str.to_re "I") (str.to_re "i")) (re.union (str.to_re "Q") (str.to_re "q")) (re.union (str.to_re "Q") (str.to_re "q"))) (re.++ (re.union (str.to_re "F") (str.to_re "f")) (re.union (str.to_re "I") (str.to_re "i")) (re.union (str.to_re "Q") (str.to_re "q")) (re.union (str.to_re "Q") (str.to_re "q"))) (re.++ (re.union (str.to_re "P") (str.to_re "p")) (re.union (str.to_re "C") (str.to_re "c")) (re.union (str.to_re "R") (str.to_re "r")) (re.union (str.to_re "N") (str.to_re "n"))) (re.++ (re.union (str.to_re "S") (str.to_re "s")) (re.union (str.to_re "I") (str.to_re "i")) (re.union (str.to_re "Q") (str.to_re "q")) (re.union (str.to_re "Q") (str.to_re "q"))) (re.++ (re.union (str.to_re "S") (str.to_re "s")) (re.union (str.to_re "T") (str.to_re "t")) (re.union (str.to_re "H") (str.to_re "h")) (re.union (str.to_re "L") (str.to_re "l"))) (re.++ (re.union (str.to_re "T") (str.to_re "t")) (re.union (str.to_re "D") (str.to_re "d")) (re.union (str.to_re "C") (str.to_re "c")) (re.union (str.to_re "U") (str.to_re "u")) (re.* (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re "1") (re.union (str.to_re "Z") (str.to_re "z")) (re.union (str.to_re "Z") (str.to_re "z"))))))
; url=Referer\x3AHost\x3AWelcome\x2FcommunicatortbGateCrasher4\u{2e}8\u{2e}4\x7D\x7BTrojan\x3AareSubject\u{3a}
(assert (str.in_re X (str.to_re "url=Referer:Host:Welcome/communicatortbGateCrasher4.8.4}{Trojan:areSubject:\u{0a}")))
(check-sat)
