(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; ^([a-zA-Z]+)://([a-zA-Z0-9_\-]+)((\.[a-zA-Z0-9_\-]+|[0-9]{1,3})+)\.([a-zA-Z]{2,6}|[0-9]{1,3})((:[0-9]+)?)((/[a-zA-Z0-9_\-,.;=%]*)*)((\?[a-zA-Z0-9_\-,.;=&%]*)?)$
(assert (not (str.in_re X (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to_re "://") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "_") (str.to_re "-"))) (re.+ (re.union (re.++ (str.to_re ".") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "_") (str.to_re "-")))) ((_ re.loop 1 3) (re.range "0" "9")))) (str.to_re ".") (re.union ((_ re.loop 2 6) (re.union (re.range "a" "z") (re.range "A" "Z"))) ((_ re.loop 1 3) (re.range "0" "9"))) (re.opt (re.++ (str.to_re ":") (re.+ (re.range "0" "9")))) (re.* (re.++ (str.to_re "/") (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "_") (str.to_re "-") (str.to_re ",") (str.to_re ".") (str.to_re ";") (str.to_re "=") (str.to_re "%"))))) (re.opt (re.++ (str.to_re "?") (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "_") (str.to_re "-") (str.to_re ",") (str.to_re ".") (str.to_re ";") (str.to_re "=") (str.to_re "&") (str.to_re "%"))))) (str.to_re "\u{0a}")))))
; /\/ddd\/[a-z]{2}.gif/iU
(assert (str.in_re X (re.++ (str.to_re "//ddd/") ((_ re.loop 2 2) (re.range "a" "z")) re.allchar (str.to_re "gif/iU\u{0a}"))))
(check-sat)
