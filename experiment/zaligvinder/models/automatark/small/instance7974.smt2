(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; to\d+User-Agent\x3AFiltered
(assert (str.in_re X (re.++ (str.to_re "to") (re.+ (re.range "0" "9")) (str.to_re "User-Agent:Filtered\u{0a}"))))
; /filename=[^\n]*\u{2e}gif/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{0a}"))) (str.to_re ".gif/i\u{0a}")))))
; (((ht|f)tp(s?):\/\/)|(([\w]{1,})\.[^ \[\]\(\)\n\r\t]+)|(([012]?[0-9]{1,2}\.){3}[012]?[0-9]{1,2})\/)([^ \[\]\(\),;"'<>\n\r\t]+)([^\. \[\]\(\),;"'<>\n\r\t])|(([012]?[0-9]{1,2}\.){3}[012]?[0-9]{1,2})
(assert (not (str.in_re X (re.union (re.++ (re.union (re.++ (re.union (str.to_re "ht") (str.to_re "f")) (str.to_re "tp") (re.opt (str.to_re "s")) (str.to_re "://")) (re.++ (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re ".") (re.+ (re.union (str.to_re " ") (str.to_re "[") (str.to_re "]") (str.to_re "(") (str.to_re ")") (str.to_re "\u{0a}") (str.to_re "\u{0d}") (str.to_re "\u{09}")))) (re.++ (str.to_re "/") ((_ re.loop 3 3) (re.++ (re.opt (re.union (str.to_re "0") (str.to_re "1") (str.to_re "2"))) ((_ re.loop 1 2) (re.range "0" "9")) (str.to_re "."))) (re.opt (re.union (str.to_re "0") (str.to_re "1") (str.to_re "2"))) ((_ re.loop 1 2) (re.range "0" "9")))) (re.+ (re.union (str.to_re " ") (str.to_re "[") (str.to_re "]") (str.to_re "(") (str.to_re ")") (str.to_re ",") (str.to_re ";") (str.to_re "\u{22}") (str.to_re "'") (str.to_re "<") (str.to_re ">") (str.to_re "\u{0a}") (str.to_re "\u{0d}") (str.to_re "\u{09}"))) (re.union (str.to_re ".") (str.to_re " ") (str.to_re "[") (str.to_re "]") (str.to_re "(") (str.to_re ")") (str.to_re ",") (str.to_re ";") (str.to_re "\u{22}") (str.to_re "'") (str.to_re "<") (str.to_re ">") (str.to_re "\u{0a}") (str.to_re "\u{0d}") (str.to_re "\u{09}"))) (re.++ (str.to_re "\u{0a}") ((_ re.loop 3 3) (re.++ (re.opt (re.union (str.to_re "0") (str.to_re "1") (str.to_re "2"))) ((_ re.loop 1 2) (re.range "0" "9")) (str.to_re "."))) (re.opt (re.union (str.to_re "0") (str.to_re "1") (str.to_re "2"))) ((_ re.loop 1 2) (re.range "0" "9")))))))
; toolbarplace\x2Ecom[^\n\r]*Server[^\n\r]*X-Mailer\u{3a}\sUser-Agent\u{3a}Host\x3ABar\x2Fnewsurfer4\x2F
(assert (str.in_re X (re.++ (str.to_re "toolbarplace.com") (re.* (re.union (str.to_re "\u{0a}") (str.to_re "\u{0d}"))) (str.to_re "Server") (re.* (re.union (str.to_re "\u{0a}") (str.to_re "\u{0d}"))) (str.to_re "X-Mailer:\u{13}") (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}")) (str.to_re "User-Agent:Host:Bar/newsurfer4/\u{0a}"))))
(check-sat)
