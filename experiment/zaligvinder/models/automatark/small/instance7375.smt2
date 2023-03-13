(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; (0[0-9]{7}|(AC|BR|FC|GE|GN|GS|IC|IP|LP|NA|NF|NI|NL|NO|NP|NR|NZ|OC|RC|SA|SC|SF|SI|SL|SO|SP|SR|SZ|ZC|R)[0-9]{6})
(assert (str.in_re X (re.++ (re.union (re.++ (str.to_re "0") ((_ re.loop 7 7) (re.range "0" "9"))) (re.++ (re.union (str.to_re "AC") (str.to_re "BR") (str.to_re "FC") (str.to_re "GE") (str.to_re "GN") (str.to_re "GS") (str.to_re "IC") (str.to_re "IP") (str.to_re "LP") (str.to_re "NA") (str.to_re "NF") (str.to_re "NI") (str.to_re "NL") (str.to_re "NO") (str.to_re "NP") (str.to_re "NR") (str.to_re "NZ") (str.to_re "OC") (str.to_re "RC") (str.to_re "SA") (str.to_re "SC") (str.to_re "SF") (str.to_re "SI") (str.to_re "SL") (str.to_re "SO") (str.to_re "SP") (str.to_re "SR") (str.to_re "SZ") (str.to_re "ZC") (str.to_re "R")) ((_ re.loop 6 6) (re.range "0" "9")))) (str.to_re "\u{0a}"))))
; \x7D\x7BSysuptime\x3A\d+\x2Fcommunicatortb
(assert (str.in_re X (re.++ (str.to_re "}{Sysuptime:") (re.+ (re.range "0" "9")) (str.to_re "/communicatortb\u{0a}"))))
(check-sat)
