(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; Norton customer service is a type of method used to care your personal or business computer system from any virus or spyware.
(assert (not (str.in_re X (re.++ (str.to_re "Norton customer service is a type of method used to care your personal or business computer system from any virus or spyware") re.allchar (str.to_re "\u{0a}")))))
; ([0]{1}[6]{1}[-\s]*([1-9]{1}[\s]*){8})|([0]{1}[1-9]{1}[0-9]{1}[0-9]{1}[-\s]*([1-9]{1}[\s]*){6})|([0]{1}[1-9]{1}[0-9]{1}[-\s]*([1-9]{1}[\s]*){7})
(assert (str.in_re X (re.union (re.++ ((_ re.loop 1 1) (str.to_re "0")) ((_ re.loop 1 1) (str.to_re "6")) (re.* (re.union (str.to_re "-") (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) ((_ re.loop 8 8) (re.++ ((_ re.loop 1 1) (re.range "1" "9")) (re.* (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}")))))) (re.++ ((_ re.loop 1 1) (str.to_re "0")) ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 1 1) (re.range "0" "9")) ((_ re.loop 1 1) (re.range "0" "9")) (re.* (re.union (str.to_re "-") (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) ((_ re.loop 6 6) (re.++ ((_ re.loop 1 1) (re.range "1" "9")) (re.* (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}")))))) (re.++ (str.to_re "\u{0a}") ((_ re.loop 1 1) (str.to_re "0")) ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 1 1) (re.range "0" "9")) (re.* (re.union (str.to_re "-") (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) ((_ re.loop 7 7) (re.++ ((_ re.loop 1 1) (re.range "1" "9")) (re.* (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}")))))))))
; for.*www\x2Eeblocs\x2Ecom\d\x2Fiis2ebs\.asp\d\<title\>Actual\x2Fpagead\x2Fads\?search2\.ad\.shopnav\.com\x2F9899\x2Fsearch\x2Fresults\.php
(assert (not (str.in_re X (re.++ (str.to_re "for") (re.* re.allchar) (str.to_re "www.eblocs.com\u{1b}") (re.range "0" "9") (str.to_re "/iis2ebs.asp") (re.range "0" "9") (str.to_re "<title>Actual/pagead/ads?search2.ad.shopnav.com/9899/search/results.php\u{0a}")))))
; ^[AaWaKkNn][a-zA-Z]?[0-9][a-zA-Z]{1,3}$
(assert (not (str.in_re X (re.++ (re.union (str.to_re "A") (str.to_re "a") (str.to_re "W") (str.to_re "K") (str.to_re "k") (str.to_re "N") (str.to_re "n")) (re.opt (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.range "0" "9") ((_ re.loop 1 3) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to_re "\u{0a}")))))
(check-sat)
