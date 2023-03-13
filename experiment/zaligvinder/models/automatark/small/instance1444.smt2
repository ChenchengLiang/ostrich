(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; ^(([1-9]{1}\d{0,2},(\d{3},)*\d{3})|([1-9]{1}\d{0,}))$
(assert (not (str.in_re X (re.++ (re.union (re.++ ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 0 2) (re.range "0" "9")) (str.to_re ",") (re.* (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re ","))) ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ ((_ re.loop 1 1) (re.range "1" "9")) (re.* (re.range "0" "9")))) (str.to_re "\u{0a}")))))
; ^09(73|74|05|06|15|16|17|26|27|35|36|37|79|38|07|08|09|10|12|18|19|20|21|28|29|30|38|39|89|99|22|23|32|33)\d{3}\s?\d{4}
(assert (str.in_re X (re.++ (str.to_re "09") (re.union (str.to_re "73") (str.to_re "74") (str.to_re "05") (str.to_re "06") (str.to_re "15") (str.to_re "16") (str.to_re "17") (str.to_re "26") (str.to_re "27") (str.to_re "35") (str.to_re "36") (str.to_re "37") (str.to_re "79") (str.to_re "38") (str.to_re "07") (str.to_re "08") (str.to_re "09") (str.to_re "10") (str.to_re "12") (str.to_re "18") (str.to_re "19") (str.to_re "20") (str.to_re "21") (str.to_re "28") (str.to_re "29") (str.to_re "30") (str.to_re "38") (str.to_re "39") (str.to_re "89") (str.to_re "99") (str.to_re "22") (str.to_re "23") (str.to_re "32") (str.to_re "33")) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) ((_ re.loop 4 4) (re.range "0" "9")) (str.to_re "\u{0a}"))))
; Keylogger-Pro\s+isUser-Agent\x3A
(assert (str.in_re X (re.++ (str.to_re "Keylogger-Pro") (re.+ (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re "isUser-Agent:\u{0a}"))))
; findX-Mailer\u{3a}User-Agent\x3Awww\.take5bingo\.comX-Mailer\u{3a}\u{04}\u{00}
(assert (str.in_re X (str.to_re "findX-Mailer:\u{13}User-Agent:www.take5bingo.com\u{1b}X-Mailer:\u{13}\u{04}\u{00}\u{0a}")))
; Referer\x3A\s+HXDownload.*Referer\x3AGREATDripline
(assert (str.in_re X (re.++ (str.to_re "Referer:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re "HXDownload") (re.* re.allchar) (str.to_re "Referer:GREATDripline\u{0a}"))))
(check-sat)
