;test regex <([a-z][a-z0-9]*)(?:[^>]*?((?:\s(?:src|href|style)=['\"][^'\"]*['\"]){0,3}))[^>]*?(\/?)>
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "<") (re.++ (re.++ (re.range "a" "z") (re.* (re.union (re.range "a" "z") (re.range "0" "9")))) (re.++ (re.++ (re.* (re.diff re.allchar (str.to_re ">"))) ((_ re.loop 0 3) (re.++ (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}")))))) (re.++ (re.union (re.union (re.++ (str.to_re "s") (re.++ (str.to_re "r") (str.to_re "c"))) (re.++ (str.to_re "h") (re.++ (str.to_re "r") (re.++ (str.to_re "e") (str.to_re "f"))))) (re.++ (str.to_re "s") (re.++ (str.to_re "t") (re.++ (str.to_re "y") (re.++ (str.to_re "l") (str.to_re "e")))))) (re.++ (str.to_re "=") (re.++ (re.union (str.to_re "\u{27}") (str.to_re "\u{22}")) (re.++ (re.* (re.inter (re.diff re.allchar (str.to_re "\u{27}")) (re.diff re.allchar (str.to_re "\u{22}")))) (re.union (str.to_re "\u{27}") (str.to_re "\u{22}"))))))))) (re.++ (re.* (re.diff re.allchar (str.to_re ">"))) (re.++ (re.opt (str.to_re "/")) (str.to_re ">"))))))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)