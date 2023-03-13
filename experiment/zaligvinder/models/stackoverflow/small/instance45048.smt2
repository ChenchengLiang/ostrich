;test regex Regex.Replace(Convert.ToString(properties.AfterProperties["Description"]), @"<a href='/Pages\/\d{1,}\/\d{3,}[.]aspx'>", "TEST", RegexOptions.IgnoreCase);
(declare-const X String)
(assert (str.in_re X (re.++ (str.to_re "R") (re.++ (str.to_re "e") (re.++ (str.to_re "g") (re.++ (str.to_re "e") (re.++ (str.to_re "x") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "R") (re.++ (str.to_re "e") (re.++ (str.to_re "p") (re.++ (str.to_re "l") (re.++ (str.to_re "a") (re.++ (str.to_re "c") (re.++ (str.to_re "e") (re.++ (re.++ (re.++ (re.++ (re.++ (str.to_re "C") (re.++ (str.to_re "o") (re.++ (str.to_re "n") (re.++ (str.to_re "v") (re.++ (str.to_re "e") (re.++ (str.to_re "r") (re.++ (str.to_re "t") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "T") (re.++ (str.to_re "o") (re.++ (str.to_re "S") (re.++ (str.to_re "t") (re.++ (str.to_re "r") (re.++ (str.to_re "i") (re.++ (str.to_re "n") (re.++ (str.to_re "g") (re.++ (str.to_re "p") (re.++ (str.to_re "r") (re.++ (str.to_re "o") (re.++ (str.to_re "p") (re.++ (str.to_re "e") (re.++ (str.to_re "r") (re.++ (str.to_re "t") (re.++ (str.to_re "i") (re.++ (str.to_re "e") (re.++ (str.to_re "s") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "A") (re.++ (str.to_re "f") (re.++ (str.to_re "t") (re.++ (str.to_re "e") (re.++ (str.to_re "r") (re.++ (str.to_re "P") (re.++ (str.to_re "r") (re.++ (str.to_re "o") (re.++ (str.to_re "p") (re.++ (str.to_re "e") (re.++ (str.to_re "r") (re.++ (str.to_re "t") (re.++ (str.to_re "i") (re.++ (str.to_re "e") (re.++ (str.to_re "s") (re.union (str.to_re "\u{22}") (re.union (str.to_re "D") (re.union (str.to_re "e") (re.union (str.to_re "s") (re.union (str.to_re "c") (re.union (str.to_re "r") (re.union (str.to_re "i") (re.union (str.to_re "p") (re.union (str.to_re "t") (re.union (str.to_re "i") (re.union (str.to_re "o") (re.union (str.to_re "n") (str.to_re "\u{22}"))))))))))))))))))))))))))))))))))))))))))))))))))))))) (re.++ (str.to_re ",") (re.++ (str.to_re " ") (re.++ (str.to_re "@") (re.++ (str.to_re "\u{22}") (re.++ (str.to_re "<") (re.++ (str.to_re "a") (re.++ (str.to_re " ") (re.++ (str.to_re "h") (re.++ (str.to_re "r") (re.++ (str.to_re "e") (re.++ (str.to_re "f") (re.++ (str.to_re "=") (re.++ (str.to_re "\u{27}") (re.++ (str.to_re "/") (re.++ (str.to_re "P") (re.++ (str.to_re "a") (re.++ (str.to_re "g") (re.++ (str.to_re "e") (re.++ (str.to_re "s") (re.++ (str.to_re "/") (re.++ (re.++ (re.* (re.range "0" "9")) ((_ re.loop 1 1) (re.range "0" "9"))) (re.++ (str.to_re "/") (re.++ (re.++ (re.* (re.range "0" "9")) ((_ re.loop 3 3) (re.range "0" "9"))) (re.++ (str.to_re ".") (re.++ (str.to_re "a") (re.++ (str.to_re "s") (re.++ (str.to_re "p") (re.++ (str.to_re "x") (re.++ (str.to_re "\u{27}") (re.++ (str.to_re ">") (str.to_re "\u{22}")))))))))))))))))))))))))))))))) (re.++ (str.to_re ",") (re.++ (str.to_re " ") (re.++ (str.to_re "\u{22}") (re.++ (str.to_re "T") (re.++ (str.to_re "E") (re.++ (str.to_re "S") (re.++ (str.to_re "T") (str.to_re "\u{22}"))))))))) (re.++ (str.to_re ",") (re.++ (str.to_re " ") (re.++ (str.to_re "R") (re.++ (str.to_re "e") (re.++ (str.to_re "g") (re.++ (str.to_re "e") (re.++ (str.to_re "x") (re.++ (str.to_re "O") (re.++ (str.to_re "p") (re.++ (str.to_re "t") (re.++ (str.to_re "i") (re.++ (str.to_re "o") (re.++ (str.to_re "n") (re.++ (str.to_re "s") (re.++ (re.diff re.allchar (str.to_re "\n")) (re.++ (str.to_re "I") (re.++ (str.to_re "g") (re.++ (str.to_re "n") (re.++ (str.to_re "o") (re.++ (str.to_re "r") (re.++ (str.to_re "e") (re.++ (str.to_re "C") (re.++ (str.to_re "a") (re.++ (str.to_re "s") (str.to_re "e")))))))))))))))))))))))))) (str.to_re ";")))))))))))))))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)