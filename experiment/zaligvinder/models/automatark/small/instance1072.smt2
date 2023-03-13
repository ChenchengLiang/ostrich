(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; act=\s+User-Agent\x3AEvilFTPHost\x3A
(assert (not (str.in_re X (re.++ (str.to_re "act=") (re.+ (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re "User-Agent:EvilFTPHost:\u{0a}")))))
; Host\x3AFrom\u{3a}Keylogger
(assert (not (str.in_re X (str.to_re "Host:From:Keylogger\u{0a}"))))
; search\.dropspam\.com.*SupportFiles.*Referer\x3A
(assert (str.in_re X (re.++ (str.to_re "search.dropspam.com") (re.* re.allchar) (str.to_re "SupportFiles\u{13}") (re.* re.allchar) (str.to_re "Referer:\u{0a}"))))
; ^(ftp|https?):\/\/([^:]+:[^@]*@)?([a-zA-Z0-9][-_a-zA-Z0-9]*\.)*([a-zA-Z0-9][-_a-zA-Z0-9]*){1}(:[0-9]+)?\/?(((\/|\[|\]|-|~|_|\.|:|[a-zA-Z0-9]|%[0-9a-fA-F]{2})*)\?((\/|\[|\]|-|~|_|\.|,|:|=||\{|\}|[a-zA-Z0-9]|%[0-9a-fA-F]{2})*\&?)*)?(#([-_.a-zA-Z0-9]|%[a-fA-F0-9]{2})*)?$
(assert (str.in_re X (re.++ (re.union (str.to_re "ftp") (re.++ (str.to_re "http") (re.opt (str.to_re "s")))) (str.to_re "://") (re.opt (re.++ (re.+ (re.comp (str.to_re ":"))) (str.to_re ":") (re.* (re.comp (str.to_re "@"))) (str.to_re "@"))) (re.* (re.++ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9")) (re.* (re.union (str.to_re "-") (str.to_re "_") (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to_re "."))) ((_ re.loop 1 1) (re.++ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9")) (re.* (re.union (str.to_re "-") (str.to_re "_") (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))))) (re.opt (re.++ (str.to_re ":") (re.+ (re.range "0" "9")))) (re.opt (str.to_re "/")) (re.opt (re.++ (re.* (re.union (str.to_re "/") (str.to_re "[") (str.to_re "]") (str.to_re "-") (str.to_re "~") (str.to_re "_") (str.to_re ".") (str.to_re ":") (re.++ (str.to_re "%") ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F")))) (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to_re "?") (re.* (re.++ (re.* (re.union (str.to_re "/") (str.to_re "[") (str.to_re "]") (str.to_re "-") (str.to_re "~") (str.to_re "_") (str.to_re ".") (str.to_re ",") (str.to_re ":") (str.to_re "=") (str.to_re "{") (str.to_re "}") (re.++ (str.to_re "%") ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F")))) (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (re.opt (str.to_re "&")))))) (re.opt (re.++ (str.to_re "#") (re.* (re.union (re.++ (str.to_re "%") ((_ re.loop 2 2) (re.union (re.range "a" "f") (re.range "A" "F") (re.range "0" "9")))) (str.to_re "-") (str.to_re "_") (str.to_re ".") (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))))) (str.to_re "\u{0a}"))))
; jsp\s+pjpoptwql\u{2f}rlnj[^\n\r]*Host\x3A
(assert (not (str.in_re X (re.++ (str.to_re "jsp") (re.+ (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re "pjpoptwql/rlnj") (re.* (re.union (str.to_re "\u{0a}") (str.to_re "\u{0d}"))) (str.to_re "Host:\u{0a}")))))
(check-sat)
