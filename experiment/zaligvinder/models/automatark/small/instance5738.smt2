(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; /^[^\u{00}][^\u{00}\u{01}]+$/
(assert (not (str.in_re X (re.++ (str.to_re "/") (re.comp (str.to_re "\u{00}")) (re.+ (re.union (str.to_re "\u{00}") (str.to_re "\u{01}"))) (str.to_re "/\u{0a}")))))
; /filename=[^\n]*\u{2e}por/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{0a}"))) (str.to_re ".por/i\u{0a}")))))
; (?i)^(((\\\\(\?\\(UNC\\)?)?)([A-Z]:\\|([^\\\/\:\*\?\"\<\>\|\.\s][^\\\/\:\*\?\"\<\>\|]+[^\\\/\:\*\?\"\<\>\|\.\s]\\){2}))|[A-Z]:\\)([^\\\/\:\*\?\"\<\>\|\s][^\\\/\:\*\?\"\<\>\|]+[^\\\/\:\*\?\"\<\>\|\s]\\)*([^\\\/\:\*\?\"\<\>\|\.\s][^\\\/\:\*\?\"\<\>\|\.]+[^\\\/\:\*\?\"\<\>\|\.\s])(\.[^\\\/\:\*\?\"\<\>\|\.\s]+)*?$
(assert (str.in_re X (re.++ (re.union (re.++ (re.union (re.++ (re.range "A" "Z") (str.to_re ":\u{5c}")) ((_ re.loop 2 2) (re.++ (re.union (str.to_re "\u{5c}") (str.to_re "/") (str.to_re ":") (str.to_re "*") (str.to_re "?") (str.to_re "\u{22}") (str.to_re "<") (str.to_re ">") (str.to_re "|") (str.to_re ".") (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}")) (re.+ (re.union (str.to_re "\u{5c}") (str.to_re "/") (str.to_re ":") (str.to_re "*") (str.to_re "?") (str.to_re "\u{22}") (str.to_re "<") (str.to_re ">") (str.to_re "|"))) (re.union (str.to_re "\u{5c}") (str.to_re "/") (str.to_re ":") (str.to_re "*") (str.to_re "?") (str.to_re "\u{22}") (str.to_re "<") (str.to_re ">") (str.to_re "|") (str.to_re ".") (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}")) (str.to_re "\u{5c}")))) (str.to_re "\u{5c}\u{5c}") (re.opt (re.++ (str.to_re "?\u{5c}") (re.opt (str.to_re "UNC\u{5c}"))))) (re.++ (re.range "A" "Z") (str.to_re ":\u{5c}"))) (re.* (re.++ (re.union (str.to_re "\u{5c}") (str.to_re "/") (str.to_re ":") (str.to_re "*") (str.to_re "?") (str.to_re "\u{22}") (str.to_re "<") (str.to_re ">") (str.to_re "|") (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}")) (re.+ (re.union (str.to_re "\u{5c}") (str.to_re "/") (str.to_re ":") (str.to_re "*") (str.to_re "?") (str.to_re "\u{22}") (str.to_re "<") (str.to_re ">") (str.to_re "|"))) (re.union (str.to_re "\u{5c}") (str.to_re "/") (str.to_re ":") (str.to_re "*") (str.to_re "?") (str.to_re "\u{22}") (str.to_re "<") (str.to_re ">") (str.to_re "|") (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}")) (str.to_re "\u{5c}"))) (re.* (re.++ (str.to_re ".") (re.+ (re.union (str.to_re "\u{5c}") (str.to_re "/") (str.to_re ":") (str.to_re "*") (str.to_re "?") (str.to_re "\u{22}") (str.to_re "<") (str.to_re ">") (str.to_re "|") (str.to_re ".") (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))))) (str.to_re "\u{0a}") (re.union (str.to_re "\u{5c}") (str.to_re "/") (str.to_re ":") (str.to_re "*") (str.to_re "?") (str.to_re "\u{22}") (str.to_re "<") (str.to_re ">") (str.to_re "|") (str.to_re ".") (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}")) (re.+ (re.union (str.to_re "\u{5c}") (str.to_re "/") (str.to_re ":") (str.to_re "*") (str.to_re "?") (str.to_re "\u{22}") (str.to_re "<") (str.to_re ">") (str.to_re "|") (str.to_re "."))) (re.union (str.to_re "\u{5c}") (str.to_re "/") (str.to_re ":") (str.to_re "*") (str.to_re "?") (str.to_re "\u{22}") (str.to_re "<") (str.to_re ">") (str.to_re "|") (str.to_re ".") (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}")))))
; FTP.*www\x2Ewordiq\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "FTP") (re.* re.allchar) (str.to_re "www.wordiq.com\u{1b}\u{0a}")))))
(check-sat)
