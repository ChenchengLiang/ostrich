(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; (::|(([a-fA-F0-9]{1,4}):){7}(([a-fA-F0-9]{1,4}))|(:(:([a-fA-F0-9]{1,4})){1,6})|((([a-fA-F0-9]{1,4}):){1,6}:)|((([a-fA-F0-9]{1,4}):)(:([a-fA-F0-9]{1,4})){1,6})|((([a-fA-F0-9]{1,4}):){2}(:([a-fA-F0-9]{1,4})){1,5})|((([a-fA-F0-9]{1,4}):){3}(:([a-fA-F0-9]{1,4})){1,4})|((([a-fA-F0-9]{1,4}):){4}(:([a-fA-F0-9]{1,4})){1,3})|((([a-fA-F0-9]{1,4}):){5}(:([a-fA-F0-9]{1,4})){1,2}))
(assert (not (str.in_re X (re.++ (re.union (str.to_re "::") (re.++ ((_ re.loop 7 7) (re.++ ((_ re.loop 1 4) (re.union (re.range "a" "f") (re.range "A" "F") (re.range "0" "9"))) (str.to_re ":"))) ((_ re.loop 1 4) (re.union (re.range "a" "f") (re.range "A" "F") (re.range "0" "9")))) (re.++ (str.to_re ":") ((_ re.loop 1 6) (re.++ (str.to_re ":") ((_ re.loop 1 4) (re.union (re.range "a" "f") (re.range "A" "F") (re.range "0" "9")))))) (re.++ ((_ re.loop 1 6) (re.++ ((_ re.loop 1 4) (re.union (re.range "a" "f") (re.range "A" "F") (re.range "0" "9"))) (str.to_re ":"))) (str.to_re ":")) (re.++ ((_ re.loop 1 6) (re.++ (str.to_re ":") ((_ re.loop 1 4) (re.union (re.range "a" "f") (re.range "A" "F") (re.range "0" "9"))))) ((_ re.loop 1 4) (re.union (re.range "a" "f") (re.range "A" "F") (re.range "0" "9"))) (str.to_re ":")) (re.++ ((_ re.loop 2 2) (re.++ ((_ re.loop 1 4) (re.union (re.range "a" "f") (re.range "A" "F") (re.range "0" "9"))) (str.to_re ":"))) ((_ re.loop 1 5) (re.++ (str.to_re ":") ((_ re.loop 1 4) (re.union (re.range "a" "f") (re.range "A" "F") (re.range "0" "9")))))) (re.++ ((_ re.loop 3 3) (re.++ ((_ re.loop 1 4) (re.union (re.range "a" "f") (re.range "A" "F") (re.range "0" "9"))) (str.to_re ":"))) ((_ re.loop 1 4) (re.++ (str.to_re ":") ((_ re.loop 1 4) (re.union (re.range "a" "f") (re.range "A" "F") (re.range "0" "9")))))) (re.++ ((_ re.loop 4 4) (re.++ ((_ re.loop 1 4) (re.union (re.range "a" "f") (re.range "A" "F") (re.range "0" "9"))) (str.to_re ":"))) ((_ re.loop 1 3) (re.++ (str.to_re ":") ((_ re.loop 1 4) (re.union (re.range "a" "f") (re.range "A" "F") (re.range "0" "9")))))) (re.++ ((_ re.loop 5 5) (re.++ ((_ re.loop 1 4) (re.union (re.range "a" "f") (re.range "A" "F") (re.range "0" "9"))) (str.to_re ":"))) ((_ re.loop 1 2) (re.++ (str.to_re ":") ((_ re.loop 1 4) (re.union (re.range "a" "f") (re.range "A" "F") (re.range "0" "9"))))))) (str.to_re "\u{0a}")))))
(check-sat)
