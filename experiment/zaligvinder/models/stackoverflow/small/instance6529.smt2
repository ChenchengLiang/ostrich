;test regex lec0s[0-9a-z]|lec0[t-z][0-9a-z]{1}|lec[1-9a-z][0-9a-z]{2}|le[d-z][0-9a-z]{3}|l[f-v][0-9a-z]{4}|lw[0-9a-g][0-9a-z]{3}|lwh[0-9a-u][0-9a-z]{2}|lwhv[0-9a-p][0-9a-z]{1}|lwhvq[0-9a-g]
(declare-const X String)
(assert (str.in_re X (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.union (re.++ (str.to_re "l") (re.++ (str.to_re "e") (re.++ (str.to_re "c") (re.++ (str.to_re "0") (re.++ (str.to_re "s") (re.union (re.range "0" "9") (re.range "a" "z"))))))) (re.++ (str.to_re "l") (re.++ (str.to_re "e") (re.++ (str.to_re "c") (re.++ (str.to_re "0") (re.++ (re.range "t" "z") ((_ re.loop 1 1) (re.union (re.range "0" "9") (re.range "a" "z"))))))))) (re.++ (str.to_re "l") (re.++ (str.to_re "e") (re.++ (str.to_re "c") (re.++ (re.union (re.range "1" "9") (re.range "a" "z")) ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "a" "z")))))))) (re.++ (str.to_re "l") (re.++ (str.to_re "e") (re.++ (re.range "d" "z") ((_ re.loop 3 3) (re.union (re.range "0" "9") (re.range "a" "z"))))))) (re.++ (str.to_re "l") (re.++ (re.range "f" "v") ((_ re.loop 4 4) (re.union (re.range "0" "9") (re.range "a" "z")))))) (re.++ (str.to_re "l") (re.++ (str.to_re "w") (re.++ (re.union (re.range "0" "9") (re.range "a" "g")) ((_ re.loop 3 3) (re.union (re.range "0" "9") (re.range "a" "z"))))))) (re.++ (str.to_re "l") (re.++ (str.to_re "w") (re.++ (str.to_re "h") (re.++ (re.union (re.range "0" "9") (re.range "a" "u")) ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "a" "z")))))))) (re.++ (str.to_re "l") (re.++ (str.to_re "w") (re.++ (str.to_re "h") (re.++ (str.to_re "v") (re.++ (re.union (re.range "0" "9") (re.range "a" "p")) ((_ re.loop 1 1) (re.union (re.range "0" "9") (re.range "a" "z"))))))))) (re.++ (str.to_re "l") (re.++ (str.to_re "w") (re.++ (str.to_re "h") (re.++ (str.to_re "v") (re.++ (str.to_re "q") (re.union (re.range "0" "9") (re.range "a" "g"))))))))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)