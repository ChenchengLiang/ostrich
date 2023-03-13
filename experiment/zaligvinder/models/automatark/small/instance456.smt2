(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; /User-Agent\u{3a}\u{20}[^\n]*?WinHttp\u{2e}WinHttpRequest.*?\n/H
(assert (not (str.in_re X (re.++ (str.to_re "/User-Agent: ") (re.* (re.comp (str.to_re "\u{0a}"))) (str.to_re "WinHttp.WinHttpRequest") (re.* re.allchar) (str.to_re "\u{0a}/H\u{0a}")))))
; ^[^ ,0]*$
(assert (not (str.in_re X (re.++ (re.* (re.union (str.to_re " ") (str.to_re ",") (str.to_re "0"))) (str.to_re "\u{0a}")))))
; ^[\d]{1,}?\.[\d]{2}$
(assert (not (str.in_re X (re.++ (re.+ (re.range "0" "9")) (str.to_re ".") ((_ re.loop 2 2) (re.range "0" "9")) (str.to_re "\u{0a}")))))
; ^(.{0,}(([a-zA-Z][^a-zA-Z])|([^a-zA-Z][a-zA-Z])).{4,})|(.{1,}(([a-zA-Z][^a-zA-Z])|([^a-zA-Z][a-zA-Z])).{3,})|(.{2,}(([a-zA-Z][^a-zA-Z])|([^a-zA-Z][a-zA-Z])).{2,})|(.{3,}(([a-zA-Z][^a-zA-Z])|([^a-zA-Z][a-zA-Z])).{1,})|(.{4,}(([a-zA-Z][^a-zA-Z])|([^a-zA-Z][a-zA-Z])).{0,})$
(assert (not (str.in_re X (re.union (re.++ (re.* re.allchar) (re.union (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (re.union (re.range "a" "z") (re.range "A" "Z")))) ((_ re.loop 4 4) re.allchar) (re.* re.allchar)) (re.++ (re.+ re.allchar) (re.union (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (re.union (re.range "a" "z") (re.range "A" "Z")))) ((_ re.loop 3 3) re.allchar) (re.* re.allchar)) (re.++ (re.union (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (re.union (re.range "a" "z") (re.range "A" "Z")))) ((_ re.loop 2 2) re.allchar) (re.* re.allchar) ((_ re.loop 2 2) re.allchar) (re.* re.allchar)) (re.++ (re.union (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (re.union (re.range "a" "z") (re.range "A" "Z")))) (re.+ re.allchar) ((_ re.loop 3 3) re.allchar) (re.* re.allchar)) (re.++ (str.to_re "\u{0a}") (re.union (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (re.union (re.range "a" "z") (re.range "A" "Z")))) (re.* re.allchar) ((_ re.loop 4 4) re.allchar) (re.* re.allchar))))))
(check-sat)
