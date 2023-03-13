;test regex (?:[\u2700-\u27bf]|(?:\ud83c[\udde6-\uddff]){2}|[\ud800-\udbff][\udc00-\udfff])[\ufe0e\ufe0f]?(?:[\u0300-\u036f\ufe20-\ufe23\u20d0-\u20f0]|\ud83c[\udffb-\udfff])?(?:\u200d(?:[^\ud800-\udfff]|(?:\ud83c[\udde6-\uddff]){2}|[\ud800-\udbff][\udc00-\udfff])[\ufe0e\ufe0f]?(?:[\u0300-\u036f\ufe20-\ufe23\u20d0-\u20f0]|\ud83c[\udffb-\udfff])?)*
(declare-const X String)
(assert (str.in_re X (re.++ (re.union (re.union (re.range "\u{2700}" "\u{27bf}") ((_ re.loop 2 2) (re.++ (str.to_re "\u{d83c}") (re.range "\u{dde6}" "\u{ddff}")))) (re.++ (re.range "\u{d800}" "\u{dbff}") (re.range "\u{dc00}" "\u{dfff}"))) (re.++ (re.opt (re.union (str.to_re "\u{fe0e}") (str.to_re "\u{fe0f}"))) (re.++ (re.opt (re.union (re.union (re.range "\u{0300}" "\u{036f}") (re.union (re.range "\u{fe20}" "\u{fe23}") (re.range "\u{20d0}" "\u{20f0}"))) (re.++ (str.to_re "\u{d83c}") (re.range "\u{dffb}" "\u{dfff}")))) (re.* (re.++ (str.to_re "\u{200d}") (re.++ (re.union (re.union (re.diff re.allchar (re.range "\u{d800}" "\u{dfff}")) ((_ re.loop 2 2) (re.++ (str.to_re "\u{d83c}") (re.range "\u{dde6}" "\u{ddff}")))) (re.++ (re.range "\u{d800}" "\u{dbff}") (re.range "\u{dc00}" "\u{dfff}"))) (re.++ (re.opt (re.union (str.to_re "\u{fe0e}") (str.to_re "\u{fe0f}"))) (re.opt (re.union (re.union (re.range "\u{0300}" "\u{036f}") (re.union (re.range "\u{fe20}" "\u{fe23}") (re.range "\u{20d0}" "\u{20f0}"))) (re.++ (str.to_re "\u{d83c}") (re.range "\u{dffb}" "\u{dfff}")))))))))))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)