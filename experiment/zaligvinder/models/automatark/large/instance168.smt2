(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; /<rt[^?]*?style\s*=\s*[\u{22}\u{27}]?-ms-hyphens\s*\x3A\s*auto\s*\x3B\s*[\u{27}\u{22}]?\>[\w\W]{680}/smi
(assert (str.in_re X (re.++ (str.to_re "/<rt") (re.* (re.comp (str.to_re "?"))) (str.to_re "style") (re.* (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re "=") (re.* (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (re.opt (re.union (str.to_re "\u{22}") (str.to_re "'"))) (str.to_re "-ms-hyphens") (re.* (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re ":") (re.* (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re "auto") (re.* (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re ";") (re.* (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (re.opt (re.union (str.to_re "'") (str.to_re "\u{22}"))) (str.to_re ">") ((_ re.loop 680 680) (re.union (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "/smi\u{0a}"))))
; (^0[78][2347][0-9]{7})
(assert (str.in_re X (re.++ (str.to_re "\u{0a}0") (re.union (str.to_re "7") (str.to_re "8")) (re.union (str.to_re "2") (str.to_re "3") (str.to_re "4") (str.to_re "7")) ((_ re.loop 7 7) (re.range "0" "9")))))
; /mJKV[^\s\x0D\x0A]+1Q_fQ_fQ_fQ_fQ_fQ_fQ_fQ/U
(assert (str.in_re X (re.++ (str.to_re "/mJKV") (re.+ (re.union (str.to_re "\u{0d}") (str.to_re "\u{0a}") (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re "1Q_fQ_fQ_fQ_fQ_fQ_fQ_fQ/U\u{0a}"))))
; ^([07][1-7]|1[0-6]|2[0-7]|[35][0-9]|[468][0-8]|9[0-589])-?\d{7}$
(assert (not (str.in_re X (re.++ (re.union (re.++ (re.union (str.to_re "0") (str.to_re "7")) (re.range "1" "7")) (re.++ (str.to_re "1") (re.range "0" "6")) (re.++ (str.to_re "2") (re.range "0" "7")) (re.++ (re.union (str.to_re "3") (str.to_re "5")) (re.range "0" "9")) (re.++ (re.union (str.to_re "4") (str.to_re "6") (str.to_re "8")) (re.range "0" "8")) (re.++ (str.to_re "9") (re.union (re.range "0" "5") (str.to_re "8") (str.to_re "9")))) (re.opt (str.to_re "-")) ((_ re.loop 7 7) (re.range "0" "9")) (str.to_re "\u{0a}")))))
(check-sat)
