;test regex <\?[(?:php)]{1}.*?t\(["'](.*?)["']\s*,*.*?\).*[\?>]*
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "<") (re.++ (str.to_re "?") (re.++ ((_ re.loop 1 1) (re.union (str.to_re "(") (re.union (str.to_re "?") (re.union (str.to_re ":") (re.union (str.to_re "p") (re.union (str.to_re "h") (re.union (str.to_re "p") (str.to_re ")")))))))) (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "t") (re.++ (str.to_re "(") (re.++ (re.union (str.to_re "\u{22}") (str.to_re "\u{27}")) (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (re.union (str.to_re "\u{22}") (str.to_re "\u{27}")) (re.* (re.union (str.to_re " ") (re.union (str.to_re "\u{0b}") (re.union (str.to_re "\u{0a}") (re.union (str.to_re "\u{0d}") (re.union (str.to_re "\u{09}") (str.to_re "\u{0c}")))))))))))))))) (re.++ (re.* (str.to_re ",")) (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re ")") (re.++ (re.* (re.diff re.allchar (str.to_re "\n"))) (re.* (re.union (str.to_re "?") (str.to_re ">"))))))))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)