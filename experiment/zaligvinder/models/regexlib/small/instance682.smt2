;test regex ^(((Ctrl\+Shift\+Alt\+|Ctrl\+Shift\+|Ctrl\+Alt\+|Shift\+Alt\+|Ctrl\+|Alt\+){1}(F1[0-2]|F[1-9]|[A-Za-z0-9\-\=\[\]\\\;\&#39;\,\.\/]){1}){1}|(Shift\+)?(F1[0-2]|F[1-9]){1})$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.union ((_ re.loop 1 1) (re.++ ((_ re.loop 1 1) (re.union (re.union (re.union (re.union (re.union (re.++ (str.to_re "C") (re.++ (str.to_re "t") (re.++ (str.to_re "r") (re.++ (str.to_re "l") (re.++ (str.to_re "+") (re.++ (str.to_re "S") (re.++ (str.to_re "h") (re.++ (str.to_re "i") (re.++ (str.to_re "f") (re.++ (str.to_re "t") (re.++ (str.to_re "+") (re.++ (str.to_re "A") (re.++ (str.to_re "l") (re.++ (str.to_re "t") (str.to_re "+"))))))))))))))) (re.++ (str.to_re "C") (re.++ (str.to_re "t") (re.++ (str.to_re "r") (re.++ (str.to_re "l") (re.++ (str.to_re "+") (re.++ (str.to_re "S") (re.++ (str.to_re "h") (re.++ (str.to_re "i") (re.++ (str.to_re "f") (re.++ (str.to_re "t") (str.to_re "+")))))))))))) (re.++ (str.to_re "C") (re.++ (str.to_re "t") (re.++ (str.to_re "r") (re.++ (str.to_re "l") (re.++ (str.to_re "+") (re.++ (str.to_re "A") (re.++ (str.to_re "l") (re.++ (str.to_re "t") (str.to_re "+")))))))))) (re.++ (str.to_re "S") (re.++ (str.to_re "h") (re.++ (str.to_re "i") (re.++ (str.to_re "f") (re.++ (str.to_re "t") (re.++ (str.to_re "+") (re.++ (str.to_re "A") (re.++ (str.to_re "l") (re.++ (str.to_re "t") (str.to_re "+"))))))))))) (re.++ (str.to_re "C") (re.++ (str.to_re "t") (re.++ (str.to_re "r") (re.++ (str.to_re "l") (str.to_re "+")))))) (re.++ (str.to_re "A") (re.++ (str.to_re "l") (re.++ (str.to_re "t") (str.to_re "+")))))) ((_ re.loop 1 1) (re.union (re.union (re.++ (str.to_re "F") (re.++ (str.to_re "1") (re.range "0" "2"))) (re.++ (str.to_re "F") (re.range "1" "9"))) (re.union (re.range "A" "Z") (re.union (re.range "a" "z") (re.union (re.range "0" "9") (re.union (str.to_re "-") (re.union (str.to_re "=") (re.union (str.to_re "[") (re.union (str.to_re "]") (re.union (str.to_re "\\") (re.union (str.to_re ";") (re.union (str.to_re "&") (re.union (str.to_re "#") (re.union (str.to_re "39") (re.union (str.to_re ";") (re.union (str.to_re ",") (re.union (str.to_re ".") (str.to_re "/")))))))))))))))))))) (re.++ (re.opt (re.++ (str.to_re "S") (re.++ (str.to_re "h") (re.++ (str.to_re "i") (re.++ (str.to_re "f") (re.++ (str.to_re "t") (str.to_re "+"))))))) ((_ re.loop 1 1) (re.union (re.++ (str.to_re "F") (re.++ (str.to_re "1") (re.range "0" "2"))) (re.++ (str.to_re "F") (re.range "1" "9"))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)