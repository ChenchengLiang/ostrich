(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; /<body[^>]+?style\s*=\s*[\u{22}\u{27}](-ms-)?behavior\s*:.*?<body[^>]+?onreadystatechange\s*=[^>]+?>[\s\t\r\n]*?<\/body/si
(assert (not (str.in_re X (re.++ (str.to_re "/<body") (re.+ (re.comp (str.to_re ">"))) (str.to_re "style") (re.* (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re "=") (re.* (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (re.union (str.to_re "\u{22}") (str.to_re "'")) (re.opt (str.to_re "-ms-")) (str.to_re "behavior") (re.* (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re ":") (re.* re.allchar) (str.to_re "<body") (re.+ (re.comp (str.to_re ">"))) (str.to_re "onreadystatechange") (re.* (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re "=") (re.+ (re.comp (str.to_re ">"))) (str.to_re ">") (re.* (re.union (str.to_re "\u{09}") (str.to_re "\u{0d}") (str.to_re "\u{0a}") (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re "</body/si\u{0a}")))))
; ^[a-zA-Z]{4}[a-zA-Z]{2}[a-zA-Z0-9]{2}[XXX0-9]{0,3}
(assert (str.in_re X (re.++ ((_ re.loop 4 4) (re.union (re.range "a" "z") (re.range "A" "Z"))) ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "A" "Z"))) ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) ((_ re.loop 0 3) (re.union (str.to_re "X") (re.range "0" "9"))) (str.to_re "\u{0a}"))))
; Try2Find\u{23}\u{23}\u{23}\u{23}ToolbarServerUser\x3A
(assert (str.in_re X (str.to_re "Try2Find####ToolbarServerUser:\u{0a}")))
; (SELECT\s[\w\*\)\(\,\s]+\sFROM\s[\w]+)|
(assert (not (str.in_re X (re.union (re.++ (str.to_re "SELECT") (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}")) (re.+ (re.union (str.to_re "*") (str.to_re ")") (str.to_re "(") (str.to_re ",") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_") (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}")) (str.to_re "FROM") (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}")) (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")))) (str.to_re "\u{0a}")))))
; <[aA][ ]{0,}([a-zA-Z0-9"'_,.:;!?@$&()%=/ ]|[-]|[	\f]){0,}>((<(([a-zA-Z0-9"'_,.:;!?@$&()%=/ ]|[-]|[	\f]){0,})>([a-zA-Z0-9"'_,.:;!?@$&()%=/ ]|[-]|[	\f]){0,})|(([a-zA-Z0-9"'_,.:;!?@$&()%=/ ]|[-]|[	\f]){0,})){0,}
(assert (not (str.in_re X (re.++ (str.to_re "<") (re.union (str.to_re "a") (str.to_re "A")) (re.* (str.to_re " ")) (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "\u{22}") (str.to_re "'") (str.to_re "_") (str.to_re ",") (str.to_re ".") (str.to_re ":") (str.to_re ";") (str.to_re "!") (str.to_re "?") (str.to_re "@") (str.to_re "$") (str.to_re "&") (str.to_re "(") (str.to_re ")") (str.to_re "%") (str.to_re "=") (str.to_re "/") (str.to_re " ") (str.to_re "-") (str.to_re "\u{09}") (str.to_re "\u{0c}"))) (str.to_re ">") (re.* (re.union (re.++ (str.to_re "<") (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "\u{22}") (str.to_re "'") (str.to_re "_") (str.to_re ",") (str.to_re ".") (str.to_re ":") (str.to_re ";") (str.to_re "!") (str.to_re "?") (str.to_re "@") (str.to_re "$") (str.to_re "&") (str.to_re "(") (str.to_re ")") (str.to_re "%") (str.to_re "=") (str.to_re "/") (str.to_re " ") (str.to_re "-") (str.to_re "\u{09}") (str.to_re "\u{0c}"))) (str.to_re ">") (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "\u{22}") (str.to_re "'") (str.to_re "_") (str.to_re ",") (str.to_re ".") (str.to_re ":") (str.to_re ";") (str.to_re "!") (str.to_re "?") (str.to_re "@") (str.to_re "$") (str.to_re "&") (str.to_re "(") (str.to_re ")") (str.to_re "%") (str.to_re "=") (str.to_re "/") (str.to_re " ") (str.to_re "-") (str.to_re "\u{09}") (str.to_re "\u{0c}")))) (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "\u{22}") (str.to_re "'") (str.to_re "_") (str.to_re ",") (str.to_re ".") (str.to_re ":") (str.to_re ";") (str.to_re "!") (str.to_re "?") (str.to_re "@") (str.to_re "$") (str.to_re "&") (str.to_re "(") (str.to_re ")") (str.to_re "%") (str.to_re "=") (str.to_re "/") (str.to_re " ") (str.to_re "-") (str.to_re "\u{09}") (str.to_re "\u{0c}"))))) (str.to_re "\u{0a}")))))
(check-sat)
