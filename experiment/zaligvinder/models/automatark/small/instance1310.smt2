(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; ([0]{1}[6]{1}[-\s]*([1-9]{1}[\s]*){8})|([0]{1}[1-9]{1}[0-9]{1}[0-9]{1}[-\s]*([1-9]{1}[\s]*){6})|([0]{1}[1-9]{1}[0-9]{1}[-\s]*([1-9]{1}[\s]*){7})
(assert (not (str.in_re X (re.union (re.++ ((_ re.loop 1 1) (str.to_re "0")) ((_ re.loop 1 1) (str.to_re "6")) (re.* (re.union (str.to_re "-") (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) ((_ re.loop 8 8) (re.++ ((_ re.loop 1 1) (re.range "1" "9")) (re.* (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}")))))) (re.++ ((_ re.loop 1 1) (str.to_re "0")) ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 1 1) (re.range "0" "9")) ((_ re.loop 1 1) (re.range "0" "9")) (re.* (re.union (str.to_re "-") (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) ((_ re.loop 6 6) (re.++ ((_ re.loop 1 1) (re.range "1" "9")) (re.* (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}")))))) (re.++ (str.to_re "\u{0a}") ((_ re.loop 1 1) (str.to_re "0")) ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 1 1) (re.range "0" "9")) (re.* (re.union (str.to_re "-") (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) ((_ re.loop 7 7) (re.++ ((_ re.loop 1 1) (re.range "1" "9")) (re.* (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))))))))))
; ^(\+97[\s]{0,1}[\-]{0,1}[\s]{0,1}1|0)50[\s]{0,1}[\-]{0,1}[\s]{0,1}[1-9]{1}[0-9]{6}$
(assert (not (str.in_re X (re.++ (re.union (re.++ (str.to_re "+97") (re.opt (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (re.opt (str.to_re "-")) (re.opt (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re "1")) (str.to_re "0")) (str.to_re "50") (re.opt (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (re.opt (str.to_re "-")) (re.opt (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 6 6) (re.range "0" "9")) (str.to_re "\u{0a}")))))
; /\x2Edocument\x2EinsertBefore\s*\u{28}[^\x2C]+\u{29}/smi
(assert (not (str.in_re X (re.++ (str.to_re "/.document.insertBefore") (re.* (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re "(") (re.+ (re.comp (str.to_re ","))) (str.to_re ")/smi\u{0a}")))))
; search2\.ad\.shopnav\.com\x2F9899\x2Fsearch\x2Fresults\.php.*Logger.*Subject\u{3a}\s+Host\x3AHost\x3A
(assert (str.in_re X (re.++ (str.to_re "search2.ad.shopnav.com/9899/search/results.php") (re.* re.allchar) (str.to_re "Logger") (re.* re.allchar) (str.to_re "Subject:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re "Host:Host:\u{0a}"))))
(check-sat)
