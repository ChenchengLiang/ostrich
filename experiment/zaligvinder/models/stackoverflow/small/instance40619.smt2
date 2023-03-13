;test regex @"^[0-9a-f]{8}-([0-9a-f]{4}-){3}[0-9a-f]{12}$"
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (re.++ (str.to_re "@") (str.to_re "\u{22}")) (re.++ (str.to_re "") (re.++ ((_ re.loop 8 8) (re.union (re.range "0" "9") (re.range "a" "f"))) (re.++ (str.to_re "-") (re.++ ((_ re.loop 3 3) (re.++ ((_ re.loop 4 4) (re.union (re.range "0" "9") (re.range "a" "f"))) (str.to_re "-"))) ((_ re.loop 12 12) (re.union (re.range "0" "9") (re.range "a" "f")))))))) (re.++ (str.to_re "") (str.to_re "\u{22}")))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)