;test regex $google_meta_regex = '/\\<meta\\shttp-equiv.+?refresh.+?(http\\:\\/\\/[^\\\'^\\"^\\>]+?)(\\\'){0,1}(\\"){0,1}\\>/i';
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "") (re.++ (str.to_re "g") (re.++ (str.to_re "o") (re.++ (str.to_re "o") (re.++ (str.to_re "g") (re.++ (str.to_re "l") (re.++ (str.to_re "e") (re.++ (str.to_re "_") (re.++ (str.to_re "m") (re.++ (str.to_re "e") (re.++ (str.to_re "t") (re.++ (str.to_re "a") (re.++ (str.to_re "_") (re.++ (str.to_re "r") (re.++ (str.to_re "e") (re.++ (str.to_re "g") (re.++ (str.to_re "e") (re.++ (str.to_re "x") (re.++ (str.to_re " ") (re.++ (str.to_re "=") (re.++ (str.to_re " ") (re.++ (str.to_re "\u{27}") (re.++ (str.to_re "/") (re.++ (str.to_re "\\") (re.++ (str.to_re "<") (re.++ (str.to_re "m") (re.++ (str.to_re "e") (re.++ (str.to_re "t") (re.++ (str.to_re "a") (re.++ (str.to_re "\\") (re.++ (str.to_re "s") (re.++ (str.to_re "h") (re.++ (str.to_re "t") (re.++ (str.to_re "t") (re.++ (str.to_re "p") (re.++ (str.to_re "-") (re.++ (str.to_re "e") (re.++ (str.to_re "q") (re.++ (str.to_re "u") (re.++ (str.to_re "i") (re.++ (str.to_re "v") (re.++ (re.+ (re.diff re.allchar (str.to_re "\n"))) (re.++ (str.to_re "r") (re.++ (str.to_re "e") (re.++ (str.to_re "f") (re.++ (str.to_re "r") (re.++ (str.to_re "e") (re.++ (str.to_re "s") (re.++ (str.to_re "h") (re.++ (re.+ (re.diff re.allchar (str.to_re "\n"))) (re.++ (re.++ (str.to_re "h") (re.++ (str.to_re "t") (re.++ (str.to_re "t") (re.++ (str.to_re "p") (re.++ (str.to_re "\\") (re.++ (str.to_re ":") (re.++ (str.to_re "\\") (re.++ (str.to_re "/") (re.++ (str.to_re "\\") (re.++ (str.to_re "/") (re.+ (re.inter (re.diff re.allchar (str.to_re "\\")) (re.inter (re.diff re.allchar (str.to_re "\u{27}")) (re.inter (re.diff re.allchar (str.to_re "^")) (re.inter (re.diff re.allchar (str.to_re "\\")) (re.inter (re.diff re.allchar (str.to_re "\u{22}")) (re.inter (re.diff re.allchar (str.to_re "^")) (re.inter (re.diff re.allchar (str.to_re "\\")) (re.diff re.allchar (str.to_re ">")))))))))))))))))))) (re.++ ((_ re.loop 0 1) (re.++ (str.to_re "\\") (str.to_re "\u{27}"))) (re.++ ((_ re.loop 0 1) (re.++ (str.to_re "\\") (str.to_re "\u{22}"))) (re.++ (str.to_re "\\") (re.++ (str.to_re ">") (re.++ (str.to_re "/") (re.++ (str.to_re "i") (re.++ (str.to_re "\u{27}") (str.to_re ";")))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)