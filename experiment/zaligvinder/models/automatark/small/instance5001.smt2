(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; Toolbar\d+Host\x3A\d+4\u{2e}8\u{2e}4\x7D\x7BTrojan\x3Aare
(assert (not (str.in_re X (re.++ (str.to_re "Toolbar") (re.+ (re.range "0" "9")) (str.to_re "Host:") (re.+ (re.range "0" "9")) (str.to_re "4.8.4}{Trojan:are\u{0a}")))))
; <[aA][ ]{0,}([a-zA-Z0-9"'_,.:;!?@$&()%=/ ]|[-]|[	\f]){0,}>((<(([a-zA-Z0-9"'_,.:;!?@$&()%=/ ]|[-]|[	\f]){0,})>([a-zA-Z0-9"'_,.:;!?@$&()%=/ ]|[-]|[	\f]){0,})|(([a-zA-Z0-9"'_,.:;!?@$&()%=/ ]|[-]|[	\f]){0,})){0,}
(assert (not (str.in_re X (re.++ (str.to_re "<") (re.union (str.to_re "a") (str.to_re "A")) (re.* (str.to_re " ")) (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "\u{22}") (str.to_re "'") (str.to_re "_") (str.to_re ",") (str.to_re ".") (str.to_re ":") (str.to_re ";") (str.to_re "!") (str.to_re "?") (str.to_re "@") (str.to_re "$") (str.to_re "&") (str.to_re "(") (str.to_re ")") (str.to_re "%") (str.to_re "=") (str.to_re "/") (str.to_re " ") (str.to_re "-") (str.to_re "\u{09}") (str.to_re "\u{0c}"))) (str.to_re ">") (re.* (re.union (re.++ (str.to_re "<") (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "\u{22}") (str.to_re "'") (str.to_re "_") (str.to_re ",") (str.to_re ".") (str.to_re ":") (str.to_re ";") (str.to_re "!") (str.to_re "?") (str.to_re "@") (str.to_re "$") (str.to_re "&") (str.to_re "(") (str.to_re ")") (str.to_re "%") (str.to_re "=") (str.to_re "/") (str.to_re " ") (str.to_re "-") (str.to_re "\u{09}") (str.to_re "\u{0c}"))) (str.to_re ">") (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "\u{22}") (str.to_re "'") (str.to_re "_") (str.to_re ",") (str.to_re ".") (str.to_re ":") (str.to_re ";") (str.to_re "!") (str.to_re "?") (str.to_re "@") (str.to_re "$") (str.to_re "&") (str.to_re "(") (str.to_re ")") (str.to_re "%") (str.to_re "=") (str.to_re "/") (str.to_re " ") (str.to_re "-") (str.to_re "\u{09}") (str.to_re "\u{0c}")))) (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "\u{22}") (str.to_re "'") (str.to_re "_") (str.to_re ",") (str.to_re ".") (str.to_re ":") (str.to_re ";") (str.to_re "!") (str.to_re "?") (str.to_re "@") (str.to_re "$") (str.to_re "&") (str.to_re "(") (str.to_re ")") (str.to_re "%") (str.to_re "=") (str.to_re "/") (str.to_re " ") (str.to_re "-") (str.to_re "\u{09}") (str.to_re "\u{0c}"))))) (str.to_re "\u{0a}")))))
; /filename=[a-z]+\.jat/
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.+ (re.range "a" "z")) (str.to_re ".jat/\u{0a}")))))
; <[^>\s]*\bauthor\b[^>]*>
(assert (str.in_re X (re.++ (str.to_re "<") (re.* (re.union (str.to_re ">") (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re "author") (re.* (re.comp (str.to_re ">"))) (str.to_re ">\u{0a}"))))
; ^(s-|S-){0,1}[0-9]{3}\s?[0-9]{2}$
(assert (not (str.in_re X (re.++ (re.opt (re.union (str.to_re "s-") (str.to_re "S-"))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) ((_ re.loop 2 2) (re.range "0" "9")) (str.to_re "\u{0a}")))))
(check-sat)
