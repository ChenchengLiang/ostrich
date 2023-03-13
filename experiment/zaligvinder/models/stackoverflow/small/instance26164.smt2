;test regex url(r'^myapp/prices/?([X]{1}[A-Z0-9]{3}:[A-Z0-9]{1}[A-Z09.-]{1,4})(\+?[X]{1}[A-Z0-9]{3}:[A-Z0-9]{1}[A-Z09.-]{1,4})*/?([0-9]{0,3})/?$', views.prices, name='prices'),
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "u") (re.++ (str.to_re "r") (re.++ (str.to_re "l") (re.++ (re.++ (re.++ (re.++ (re.++ (str.to_re "r") (str.to_re "\u{27}")) (re.++ (str.to_re "") (re.++ (str.to_re "m") (re.++ (str.to_re "y") (re.++ (str.to_re "a") (re.++ (str.to_re "p") (re.++ (str.to_re "p") (re.++ (str.to_re "/") (re.++ (str.to_re "p") (re.++ (str.to_re "r") (re.++ (str.to_re "i") (re.++ (str.to_re "c") (re.++ (str.to_re "e") (re.++ (str.to_re "s") (re.++ (re.opt (str.to_re "/")) (re.++ (re.++ ((_ re.loop 1 1) (str.to_re "X")) (re.++ ((_ re.loop 3 3) (re.union (re.range "A" "Z") (re.range "0" "9"))) (re.++ (str.to_re ":") (re.++ ((_ re.loop 1 1) (re.union (re.range "A" "Z") (re.range "0" "9"))) ((_ re.loop 1 4) (re.union (re.range "A" "Z") (re.union (str.to_re "09") (re.union (str.to_re ".") (str.to_re "-"))))))))) (re.++ (re.* (re.++ (re.opt (str.to_re "+")) (re.++ ((_ re.loop 1 1) (str.to_re "X")) (re.++ ((_ re.loop 3 3) (re.union (re.range "A" "Z") (re.range "0" "9"))) (re.++ (str.to_re ":") (re.++ ((_ re.loop 1 1) (re.union (re.range "A" "Z") (re.range "0" "9"))) ((_ re.loop 1 4) (re.union (re.range "A" "Z") (re.union (str.to_re "09") (re.union (str.to_re ".") (str.to_re "-"))))))))))) (re.++ (re.opt (str.to_re "/")) (re.++ ((_ re.loop 0 3) (re.range "0" "9")) (re.opt (str.to_re "/"))))))))))))))))))))) (re.++ (str.to_re "") (str.to_re "\u{27}"))) (re.++ (str.to_re ",") (re.++ (str.to_re " ") (re.++ (str.to_re "v") (re.++ (str.to_re "i") (re.++ (str.to_re "e") (re.++ (str.to_re "w") (re.++ (str.to_re "s") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "p") (re.++ (str.to_re "r") (re.++ (str.to_re "i") (re.++ (str.to_re "c") (re.++ (str.to_re "e") (str.to_re "s"))))))))))))))) (re.++ (str.to_re ",") (re.++ (str.to_re " ") (re.++ (str.to_re "n") (re.++ (str.to_re "a") (re.++ (str.to_re "m") (re.++ (str.to_re "e") (re.++ (str.to_re "=") (re.++ (str.to_re "\u{27}") (re.++ (str.to_re "p") (re.++ (str.to_re "r") (re.++ (str.to_re "i") (re.++ (str.to_re "c") (re.++ (str.to_re "e") (re.++ (str.to_re "s") (str.to_re "\u{27}"))))))))))))))))))) (str.to_re ","))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)