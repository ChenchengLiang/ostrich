(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; www\x2Eeblocs\x2Ecomcorep\x2Edmcast\x2Ecom
(assert (str.in_re X (str.to_re "www.eblocs.com\u{1b}corep.dmcast.com\u{0a}")))
; ^(0|\+33)[1-9]([-. ]?[0-9]{2}){4}$
(assert (str.in_re X (re.++ (re.union (str.to_re "0") (str.to_re "+33")) (re.range "1" "9") ((_ re.loop 4 4) (re.++ (re.opt (re.union (str.to_re "-") (str.to_re ".") (str.to_re " "))) ((_ re.loop 2 2) (re.range "0" "9")))) (str.to_re "\u{0a}"))))
; ^[A-Z0-9a-z'&()/]{0,1}[A-Z0-9a-z'&()/]{0,1}(([A-Z0-9a-z'&()/_-])|(\\s)){0,47}[A-Z0-9a-z'&()/]{1}$
(assert (str.in_re X (re.++ (re.opt (re.union (re.range "A" "Z") (re.range "0" "9") (re.range "a" "z") (str.to_re "'") (str.to_re "&") (str.to_re "(") (str.to_re ")") (str.to_re "/"))) (re.opt (re.union (re.range "A" "Z") (re.range "0" "9") (re.range "a" "z") (str.to_re "'") (str.to_re "&") (str.to_re "(") (str.to_re ")") (str.to_re "/"))) ((_ re.loop 0 47) (re.union (str.to_re "\u{5c}s") (re.range "A" "Z") (re.range "0" "9") (re.range "a" "z") (str.to_re "'") (str.to_re "&") (str.to_re "(") (str.to_re ")") (str.to_re "/") (str.to_re "_") (str.to_re "-"))) ((_ re.loop 1 1) (re.union (re.range "A" "Z") (re.range "0" "9") (re.range "a" "z") (str.to_re "'") (str.to_re "&") (str.to_re "(") (str.to_re ")") (str.to_re "/"))) (str.to_re "\u{0a}"))))
; ^(big5|euc(kr|jpms)|binary|greek|tis620|hebrew|ascii|swe7|koi8(r|u)|(u|keyb)cs2|(dec|hp|utf|geostd|armscii)8|gb(k|2312)|cp(8(5(0|2)|66)|932|125(0|1|6|7))|latin(1|2|5|7)|(u|s)jis|mac(ce|roman))$
(assert (not (str.in_re X (re.++ (re.union (str.to_re "big5") (re.++ (str.to_re "euc") (re.union (str.to_re "kr") (str.to_re "jpms"))) (str.to_re "binary") (str.to_re "greek") (str.to_re "tis620") (str.to_re "hebrew") (str.to_re "ascii") (str.to_re "swe7") (re.++ (str.to_re "koi8") (re.union (str.to_re "r") (str.to_re "u"))) (re.++ (re.union (str.to_re "u") (str.to_re "keyb")) (str.to_re "cs2")) (re.++ (re.union (str.to_re "dec") (str.to_re "hp") (str.to_re "utf") (str.to_re "geostd") (str.to_re "armscii")) (str.to_re "8")) (re.++ (str.to_re "gb") (re.union (str.to_re "k") (str.to_re "2312"))) (re.++ (str.to_re "cp") (re.union (re.++ (str.to_re "8") (re.union (re.++ (str.to_re "5") (re.union (str.to_re "0") (str.to_re "2"))) (str.to_re "66"))) (str.to_re "932") (re.++ (str.to_re "125") (re.union (str.to_re "0") (str.to_re "1") (str.to_re "6") (str.to_re "7"))))) (re.++ (str.to_re "latin") (re.union (str.to_re "1") (str.to_re "2") (str.to_re "5") (str.to_re "7"))) (re.++ (re.union (str.to_re "u") (str.to_re "s")) (str.to_re "jis")) (re.++ (str.to_re "mac") (re.union (str.to_re "ce") (str.to_re "roman")))) (str.to_re "\u{0a}")))))
(check-sat)
