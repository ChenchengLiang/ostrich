(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; ^(GB)?(\ )?[0-9]\d{2}(\ )?[0-9]\d{3}(\ )?(0[0-9]|[1-8][0-9]|9[0-6])(\ )?([0-9]\d{2})?|(GB)?(\ )?GD(\ )?([0-4][0-9][0-9])|(GB)?(\ )?HA(\ )?([5-9][0-9][0-9])$
(assert (not (str.in_re X (re.union (re.++ (re.opt (str.to_re "GB")) (re.opt (str.to_re " ")) (re.range "0" "9") ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (str.to_re " ")) (re.range "0" "9") ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (str.to_re " ")) (re.union (re.++ (str.to_re "0") (re.range "0" "9")) (re.++ (re.range "1" "8") (re.range "0" "9")) (re.++ (str.to_re "9") (re.range "0" "6"))) (re.opt (str.to_re " ")) (re.opt (re.++ (re.range "0" "9") ((_ re.loop 2 2) (re.range "0" "9"))))) (re.++ (re.opt (str.to_re "GB")) (re.opt (str.to_re " ")) (str.to_re "GD") (re.opt (str.to_re " ")) (re.range "0" "4") (re.range "0" "9") (re.range "0" "9")) (re.++ (re.opt (str.to_re "GB")) (re.opt (str.to_re " ")) (str.to_re "HA") (re.opt (str.to_re " ")) (str.to_re "\u{0a}") (re.range "5" "9") (re.range "0" "9") (re.range "0" "9"))))))
(check-sat)
