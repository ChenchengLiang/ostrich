;test regex "^([^,]+),.*\\t(\\d{1,2}:\\d{2}[PA]M) - (\\d{1,2}:\\d{2}[PA]M)\\t([^\\t]+)\\t([^\\t]+)$"
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (re.++ (str.to_re "\u{22}") (re.++ (str.to_re "") (re.+ (re.diff re.allchar (str.to_re ","))))) (re.++ (str.to_re ",") (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "\\") (re.++ (str.to_re "t") (re.++ (re.++ (str.to_re "\\") (re.++ ((_ re.loop 1 2) (str.to_re "d")) (re.++ (str.to_re ":") (re.++ (str.to_re "\\") (re.++ ((_ re.loop 2 2) (str.to_re "d")) (re.++ (re.union (str.to_re "P") (str.to_re "A")) (str.to_re "M"))))))) (re.++ (str.to_re " ") (re.++ (str.to_re "-") (re.++ (str.to_re " ") (re.++ (re.++ (str.to_re "\\") (re.++ ((_ re.loop 1 2) (str.to_re "d")) (re.++ (str.to_re ":") (re.++ (str.to_re "\\") (re.++ ((_ re.loop 2 2) (str.to_re "d")) (re.++ (re.union (str.to_re "P") (str.to_re "A")) (str.to_re "M"))))))) (re.++ (str.to_re "\\") (re.++ (str.to_re "t") (re.++ (re.+ (re.inter (re.diff re.allchar (str.to_re "\\")) (re.diff re.allchar (str.to_re "t")))) (re.++ (str.to_re "\\") (re.++ (str.to_re "t") (re.+ (re.inter (re.diff re.allchar (str.to_re "\\")) (re.diff re.allchar (str.to_re "t"))))))))))))))))))) (re.++ (str.to_re "") (str.to_re "\u{22}")))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)