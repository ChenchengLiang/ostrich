;test regex (^\d{20}$)|(^((:[a-fA-F0-9]{1,4}){6}|::)ffff:(25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[0-9]{1,2})(\.(25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[0-9]{1,2})){3}$)|(^((:[a-fA-F0-9]{1,4}){6}|::)ffff(:[a-fA-F0-9]{1,4}){2}$)|(^([a-fA-F0-9]{1,4}) (:[a-fA-F0-9]{1,4}){7}$)|(^:(:[a-fA-F0-9]{1,4}(::)?){1,6}$)|(^((::)?[a-fA-F0-9]{1,4}:){1,6}:$)|(^::$)
(declare-const X String)
(assert (str.in_re X (re.union (re.union (re.union (re.union (re.union (re.union (re.++ (re.++ (str.to_re "") ((_ re.loop 20 20) (re.range "0" "9"))) (str.to_re "")) (re.++ (re.++ (str.to_re "") (re.++ (re.union ((_ re.loop 6 6) (re.++ (str.to_re ":") ((_ re.loop 1 4) (re.union (re.range "a" "f") (re.union (re.range "A" "F") (re.range "0" "9")))))) (re.++ (str.to_re ":") (str.to_re ":"))) (re.++ (str.to_re "f") (re.++ (str.to_re "f") (re.++ (str.to_re "f") (re.++ (str.to_re "f") (re.++ (str.to_re ":") (re.++ (re.union (re.union (re.union (re.++ (str.to_re "25") (re.range "0" "5")) (re.++ (str.to_re "2") (re.++ (re.range "0" "4") (re.range "0" "9")))) (re.++ (str.to_re "1") (re.++ (re.range "0" "9") (re.range "0" "9")))) ((_ re.loop 1 2) (re.range "0" "9"))) ((_ re.loop 3 3) (re.++ (str.to_re ".") (re.union (re.union (re.union (re.++ (str.to_re "25") (re.range "0" "5")) (re.++ (str.to_re "2") (re.++ (re.range "0" "4") (re.range "0" "9")))) (re.++ (str.to_re "1") (re.++ (re.range "0" "9") (re.range "0" "9")))) ((_ re.loop 1 2) (re.range "0" "9"))))))))))))) (str.to_re ""))) (re.++ (re.++ (str.to_re "") (re.++ (re.union ((_ re.loop 6 6) (re.++ (str.to_re ":") ((_ re.loop 1 4) (re.union (re.range "a" "f") (re.union (re.range "A" "F") (re.range "0" "9")))))) (re.++ (str.to_re ":") (str.to_re ":"))) (re.++ (str.to_re "f") (re.++ (str.to_re "f") (re.++ (str.to_re "f") (re.++ (str.to_re "f") ((_ re.loop 2 2) (re.++ (str.to_re ":") ((_ re.loop 1 4) (re.union (re.range "a" "f") (re.union (re.range "A" "F") (re.range "0" "9")))))))))))) (str.to_re ""))) (re.++ (re.++ (str.to_re "") (re.++ ((_ re.loop 1 4) (re.union (re.range "a" "f") (re.union (re.range "A" "F") (re.range "0" "9")))) (re.++ (str.to_re " ") ((_ re.loop 7 7) (re.++ (str.to_re ":") ((_ re.loop 1 4) (re.union (re.range "a" "f") (re.union (re.range "A" "F") (re.range "0" "9"))))))))) (str.to_re ""))) (re.++ (re.++ (str.to_re "") (re.++ (str.to_re ":") ((_ re.loop 1 6) (re.++ (str.to_re ":") (re.++ ((_ re.loop 1 4) (re.union (re.range "a" "f") (re.union (re.range "A" "F") (re.range "0" "9")))) (re.opt (re.++ (str.to_re ":") (str.to_re ":")))))))) (str.to_re ""))) (re.++ (re.++ (str.to_re "") (re.++ ((_ re.loop 1 6) (re.++ (re.opt (re.++ (str.to_re ":") (str.to_re ":"))) (re.++ ((_ re.loop 1 4) (re.union (re.range "a" "f") (re.union (re.range "A" "F") (re.range "0" "9")))) (str.to_re ":")))) (str.to_re ":"))) (str.to_re ""))) (re.++ (re.++ (str.to_re "") (re.++ (str.to_re ":") (str.to_re ":"))) (str.to_re "")))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)