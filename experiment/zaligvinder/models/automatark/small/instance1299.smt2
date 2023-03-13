(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; Host\x3A\x2Fta\x2FNEWS\x2Fyayad\x2Ecom
(assert (str.in_re X (str.to_re "Host:/ta/NEWS/yayad.com\u{13}\u{0a}")))
; /filename=[^\n]*\u{2e}f4a/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{0a}"))) (str.to_re ".f4a/i\u{0a}"))))
; ^(.{0,}(([a-zA-Z][^a-zA-Z])|([^a-zA-Z][a-zA-Z])).{4,})|(.{1,}(([a-zA-Z][^a-zA-Z])|([^a-zA-Z][a-zA-Z])).{3,})|(.{2,}(([a-zA-Z][^a-zA-Z])|([^a-zA-Z][a-zA-Z])).{2,})|(.{3,}(([a-zA-Z][^a-zA-Z])|([^a-zA-Z][a-zA-Z])).{1,})|(.{4,}(([a-zA-Z][^a-zA-Z])|([^a-zA-Z][a-zA-Z])).{0,})$
(assert (not (str.in_re X (re.union (re.++ (re.* re.allchar) (re.union (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (re.union (re.range "a" "z") (re.range "A" "Z")))) ((_ re.loop 4 4) re.allchar) (re.* re.allchar)) (re.++ (re.+ re.allchar) (re.union (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (re.union (re.range "a" "z") (re.range "A" "Z")))) ((_ re.loop 3 3) re.allchar) (re.* re.allchar)) (re.++ (re.union (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (re.union (re.range "a" "z") (re.range "A" "Z")))) ((_ re.loop 2 2) re.allchar) (re.* re.allchar) ((_ re.loop 2 2) re.allchar) (re.* re.allchar)) (re.++ (re.union (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (re.union (re.range "a" "z") (re.range "A" "Z")))) (re.+ re.allchar) ((_ re.loop 3 3) re.allchar) (re.* re.allchar)) (re.++ (str.to_re "\u{0a}") (re.union (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (re.union (re.range "a" "z") (re.range "A" "Z")))) (re.* re.allchar) ((_ re.loop 4 4) re.allchar) (re.* re.allchar))))))
(check-sat)
