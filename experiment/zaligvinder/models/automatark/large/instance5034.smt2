(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; /filename=[^\n]*\u{2e}por/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{0a}"))) (str.to_re ".por/i\u{0a}"))))
; (http(s?)://|[a-zA-Z0-9\-]+\.)[a-zA-Z0-9/~\-]+\.[a-zA-Z0-9/~\-_,&\?\.;]+[^\.,\s<]
(assert (str.in_re X (re.++ (re.union (re.++ (str.to_re "http") (re.opt (str.to_re "s")) (str.to_re "://")) (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "-"))) (str.to_re "."))) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "/") (str.to_re "~") (str.to_re "-"))) (str.to_re ".") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "/") (str.to_re "~") (str.to_re "-") (str.to_re "_") (str.to_re ",") (str.to_re "&") (str.to_re "?") (str.to_re ".") (str.to_re ";"))) (re.union (str.to_re ".") (str.to_re ",") (str.to_re "<") (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}")) (str.to_re "\u{0a}"))))
; ^[/]*([^/\\ \:\*\?"\<\>\|\.][^/\\\:\*\?\"\<\>\|]{0,63}/)*[^/\\ \:\*\?"\<\>\|\.][^/\\\:\*\?\"\<\>\|]{0,63}$
(assert (str.in_re X (re.++ (re.* (str.to_re "/")) (re.* (re.++ (re.union (str.to_re "/") (str.to_re "\u{5c}") (str.to_re " ") (str.to_re ":") (str.to_re "*") (str.to_re "?") (str.to_re "\u{22}") (str.to_re "<") (str.to_re ">") (str.to_re "|") (str.to_re ".")) ((_ re.loop 0 63) (re.union (str.to_re "/") (str.to_re "\u{5c}") (str.to_re ":") (str.to_re "*") (str.to_re "?") (str.to_re "\u{22}") (str.to_re "<") (str.to_re ">") (str.to_re "|"))) (str.to_re "/"))) (re.union (str.to_re "/") (str.to_re "\u{5c}") (str.to_re " ") (str.to_re ":") (str.to_re "*") (str.to_re "?") (str.to_re "\u{22}") (str.to_re "<") (str.to_re ">") (str.to_re "|") (str.to_re ".")) ((_ re.loop 0 63) (re.union (str.to_re "/") (str.to_re "\u{5c}") (str.to_re ":") (str.to_re "*") (str.to_re "?") (str.to_re "\u{22}") (str.to_re "<") (str.to_re ">") (str.to_re "|"))) (str.to_re "\u{0a}"))))
(check-sat)
