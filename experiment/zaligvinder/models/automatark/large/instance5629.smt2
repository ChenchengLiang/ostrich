(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; <textarea(.|\n)*?>((.|\n)*?)</textarea>
(assert (str.in_re X (re.++ (str.to_re "<textarea") (re.* (re.union re.allchar (str.to_re "\u{0a}"))) (str.to_re ">") (re.* (re.union re.allchar (str.to_re "\u{0a}"))) (str.to_re "</textarea>\u{0a}"))))
; EvilFTP\s+%3f[^\n\r]*\.bmpfilename\x3D\u{22}
(assert (not (str.in_re X (re.++ (str.to_re "EvilFTP") (re.+ (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re "%3f") (re.* (re.union (str.to_re "\u{0a}") (str.to_re "\u{0d}"))) (str.to_re ".bmpfilename=\u{22}\u{0a}")))))
; \x7D\x7BTrojan\x3A\w+Host\x3Arprpgbnrppb\u{2f}ci
(assert (str.in_re X (re.++ (str.to_re "}{Trojan:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "Host:rprpgbnrppb/ci\u{0a}"))))
; ^(AT ?U[0-9]{7}|BE ?[0-9]{10}|BG ?[0-9]{9,10}|CY ?[0-9]{8}[A-Z]{1}|CZ ?[0-9]{8,10}|DE ?[0-9]{9}|DK ?[0-9]{8}|EE ?[0-9]{9}|EL ?[0-9]{9}|ES ?[0-9A-Z]{9}|FI ?[0-9]{8}|FR ?[0-9A-Z]{11}|HU ?[0-9]{8}|IE ?[0-9A-Z]{8}|IT ?[0-9]{11}|LT ?([0-9]{9}|[0-9]{12})|LU ?[0-9]{8}|LV ?[0-9]{11}|MT ?[0-9]{8}|NL ?[0-9B]{12}|PL ?[0-9]{10}|PT ?[0-9]{9}|RO ?[0-9]{2,10}|SE ?[0-9]{12}|SI ?[0-9]{8}|SK ?[0-9]{10})$
(assert (str.in_re X (re.++ (re.union (re.++ (str.to_re "AT") (re.opt (str.to_re " ")) (str.to_re "U") ((_ re.loop 7 7) (re.range "0" "9"))) (re.++ (str.to_re "BE") (re.opt (str.to_re " ")) ((_ re.loop 10 10) (re.range "0" "9"))) (re.++ (str.to_re "BG") (re.opt (str.to_re " ")) ((_ re.loop 9 10) (re.range "0" "9"))) (re.++ (str.to_re "CY") (re.opt (str.to_re " ")) ((_ re.loop 8 8) (re.range "0" "9")) ((_ re.loop 1 1) (re.range "A" "Z"))) (re.++ (str.to_re "CZ") (re.opt (str.to_re " ")) ((_ re.loop 8 10) (re.range "0" "9"))) (re.++ (str.to_re "DE") (re.opt (str.to_re " ")) ((_ re.loop 9 9) (re.range "0" "9"))) (re.++ (str.to_re "DK") (re.opt (str.to_re " ")) ((_ re.loop 8 8) (re.range "0" "9"))) (re.++ (str.to_re "EE") (re.opt (str.to_re " ")) ((_ re.loop 9 9) (re.range "0" "9"))) (re.++ (str.to_re "EL") (re.opt (str.to_re " ")) ((_ re.loop 9 9) (re.range "0" "9"))) (re.++ (str.to_re "ES") (re.opt (str.to_re " ")) ((_ re.loop 9 9) (re.union (re.range "0" "9") (re.range "A" "Z")))) (re.++ (str.to_re "FI") (re.opt (str.to_re " ")) ((_ re.loop 8 8) (re.range "0" "9"))) (re.++ (str.to_re "FR") (re.opt (str.to_re " ")) ((_ re.loop 11 11) (re.union (re.range "0" "9") (re.range "A" "Z")))) (re.++ (str.to_re "HU") (re.opt (str.to_re " ")) ((_ re.loop 8 8) (re.range "0" "9"))) (re.++ (str.to_re "IE") (re.opt (str.to_re " ")) ((_ re.loop 8 8) (re.union (re.range "0" "9") (re.range "A" "Z")))) (re.++ (str.to_re "IT") (re.opt (str.to_re " ")) ((_ re.loop 11 11) (re.range "0" "9"))) (re.++ (str.to_re "LT") (re.opt (str.to_re " ")) (re.union ((_ re.loop 9 9) (re.range "0" "9")) ((_ re.loop 12 12) (re.range "0" "9")))) (re.++ (str.to_re "LU") (re.opt (str.to_re " ")) ((_ re.loop 8 8) (re.range "0" "9"))) (re.++ (str.to_re "LV") (re.opt (str.to_re " ")) ((_ re.loop 11 11) (re.range "0" "9"))) (re.++ (str.to_re "MT") (re.opt (str.to_re " ")) ((_ re.loop 8 8) (re.range "0" "9"))) (re.++ (str.to_re "NL") (re.opt (str.to_re " ")) ((_ re.loop 12 12) (re.union (re.range "0" "9") (str.to_re "B")))) (re.++ (str.to_re "PL") (re.opt (str.to_re " ")) ((_ re.loop 10 10) (re.range "0" "9"))) (re.++ (str.to_re "PT") (re.opt (str.to_re " ")) ((_ re.loop 9 9) (re.range "0" "9"))) (re.++ (str.to_re "RO") (re.opt (str.to_re " ")) ((_ re.loop 2 10) (re.range "0" "9"))) (re.++ (str.to_re "SE") (re.opt (str.to_re " ")) ((_ re.loop 12 12) (re.range "0" "9"))) (re.++ (str.to_re "SI") (re.opt (str.to_re " ")) ((_ re.loop 8 8) (re.range "0" "9"))) (re.++ (str.to_re "SK") (re.opt (str.to_re " ")) ((_ re.loop 10 10) (re.range "0" "9")))) (str.to_re "\u{0a}"))))
(check-sat)
