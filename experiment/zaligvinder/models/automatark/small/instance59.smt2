(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; ((v|[\\/])\W*[i1]\W*[a@]\W*g\W*r\W*[a@]|v\W*[i1]\W*[c]\W*[o0]\W*d\W*[i1]\W*n)
(assert (not (str.in_re X (re.++ (re.union (re.++ (re.union (str.to_re "v") (str.to_re "\u{5c}") (str.to_re "/")) (re.* (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")))) (re.union (str.to_re "i") (str.to_re "1")) (re.* (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")))) (re.union (str.to_re "a") (str.to_re "@")) (re.* (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")))) (str.to_re "g") (re.* (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")))) (str.to_re "r") (re.* (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")))) (re.union (str.to_re "a") (str.to_re "@"))) (re.++ (str.to_re "v") (re.* (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")))) (re.union (str.to_re "i") (str.to_re "1")) (re.* (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")))) (str.to_re "c") (re.* (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")))) (re.union (str.to_re "o") (str.to_re "0")) (re.* (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")))) (str.to_re "d") (re.* (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")))) (re.union (str.to_re "i") (str.to_re "1")) (re.* (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")))) (str.to_re "n"))) (str.to_re "\u{0a}")))))
; /\u{2e}rp([\?\u{5c}\u{2f}]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.rp") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{0a}"))))
; \\s\\d{2}[-]\\w{3}-\\d{4}
(assert (not (str.in_re X (re.++ (str.to_re "\u{5c}s\u{5c}") ((_ re.loop 2 2) (str.to_re "d")) (str.to_re "-\u{5c}") ((_ re.loop 3 3) (str.to_re "w")) (str.to_re "-\u{5c}") ((_ re.loop 4 4) (str.to_re "d")) (str.to_re "\u{0a}")))))
(check-sat)
