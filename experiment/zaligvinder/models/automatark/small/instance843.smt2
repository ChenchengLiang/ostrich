(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; [a-z]{3,4}s?:\/\/[-\w.]+(\/[-.\w%&=?]+)*
(assert (str.in_re X (re.++ ((_ re.loop 3 4) (re.range "a" "z")) (re.opt (str.to_re "s")) (str.to_re "://") (re.+ (re.union (str.to_re "-") (str.to_re ".") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.* (re.++ (str.to_re "/") (re.+ (re.union (str.to_re "-") (str.to_re ".") (str.to_re "%") (str.to_re "&") (str.to_re "=") (str.to_re "?") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))))) (str.to_re "\u{0a}"))))
; /Referer\u{3a}\u{20}[\u{20}-\x7E]*?\/wp\u{2d}admin\/[a-z\d\u{2d}]+?\.php\r\n/Hi
(assert (str.in_re X (re.++ (str.to_re "/Referer: ") (re.* (re.range " " "~")) (str.to_re "/wp-admin/") (re.+ (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re "-"))) (str.to_re ".php\u{0d}\u{0a}/Hi\u{0a}"))))
; ^((((0?[13578])|(1[02]))[\/|\-]?((0?[1-9]|[0-2][0-9])|(3[01])))|(((0?[469])|(11))[\/|\-]?((0?[1-9]|[0-2][0-9])|(30)))|(0?[2][\/\-]?(0?[1-9]|[0-2][0-9])))[\/\-]?\d{2,4}$
(assert (str.in_re X (re.++ (re.union (re.++ (re.union (re.++ (re.opt (str.to_re "0")) (re.union (str.to_re "1") (str.to_re "3") (str.to_re "5") (str.to_re "7") (str.to_re "8"))) (re.++ (str.to_re "1") (re.union (str.to_re "0") (str.to_re "2")))) (re.opt (re.union (str.to_re "/") (str.to_re "|") (str.to_re "-"))) (re.union (re.++ (str.to_re "3") (re.union (str.to_re "0") (str.to_re "1"))) (re.++ (re.opt (str.to_re "0")) (re.range "1" "9")) (re.++ (re.range "0" "2") (re.range "0" "9")))) (re.++ (re.union (re.++ (re.opt (str.to_re "0")) (re.union (str.to_re "4") (str.to_re "6") (str.to_re "9"))) (str.to_re "11")) (re.opt (re.union (str.to_re "/") (str.to_re "|") (str.to_re "-"))) (re.union (str.to_re "30") (re.++ (re.opt (str.to_re "0")) (re.range "1" "9")) (re.++ (re.range "0" "2") (re.range "0" "9")))) (re.++ (re.opt (str.to_re "0")) (str.to_re "2") (re.opt (re.union (str.to_re "/") (str.to_re "-"))) (re.union (re.++ (re.opt (str.to_re "0")) (re.range "1" "9")) (re.++ (re.range "0" "2") (re.range "0" "9"))))) (re.opt (re.union (str.to_re "/") (str.to_re "-"))) ((_ re.loop 2 4) (re.range "0" "9")) (str.to_re "\u{0a}"))))
; (refs|references|re|closes|closed|close|see|fixes|fixed|fix|addresses) #(\d+)(( and |, | & | )#(\d+))*
(assert (str.in_re X (re.++ (re.union (str.to_re "refs") (str.to_re "references") (str.to_re "re") (str.to_re "closes") (str.to_re "closed") (str.to_re "close") (str.to_re "see") (str.to_re "fixes") (str.to_re "fixed") (str.to_re "fix") (str.to_re "addresses")) (str.to_re " #") (re.+ (re.range "0" "9")) (re.* (re.++ (re.union (str.to_re " and ") (str.to_re ", ") (str.to_re " & ") (str.to_re " ")) (str.to_re "#") (re.+ (re.range "0" "9")))) (str.to_re "\u{0a}"))))
(check-sat)
