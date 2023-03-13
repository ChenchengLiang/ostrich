(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; ^(ac|AC|al|AL|am|AM|ap|AP|ba|BA|ce|CE|df|DF|es|ES|go|GO|ma|MA|mg|MG|ms|MS|mt|MT|pa|PA|pb|PB|pe|PE|pi|PI|pr|PR|rj|RJ|rn|RN|ro|RO|rr|RR|rs|RS|sc|SC|se|SE|sp|SP|to|TO)$
(assert (not (str.in_re X (re.++ (re.union (str.to_re "ac") (str.to_re "AC") (str.to_re "al") (str.to_re "AL") (str.to_re "am") (str.to_re "AM") (str.to_re "ap") (str.to_re "AP") (str.to_re "ba") (str.to_re "BA") (str.to_re "ce") (str.to_re "CE") (str.to_re "df") (str.to_re "DF") (str.to_re "es") (str.to_re "ES") (str.to_re "go") (str.to_re "GO") (str.to_re "ma") (str.to_re "MA") (str.to_re "mg") (str.to_re "MG") (str.to_re "ms") (str.to_re "MS") (str.to_re "mt") (str.to_re "MT") (str.to_re "pa") (str.to_re "PA") (str.to_re "pb") (str.to_re "PB") (str.to_re "pe") (str.to_re "PE") (str.to_re "pi") (str.to_re "PI") (str.to_re "pr") (str.to_re "PR") (str.to_re "rj") (str.to_re "RJ") (str.to_re "rn") (str.to_re "RN") (str.to_re "ro") (str.to_re "RO") (str.to_re "rr") (str.to_re "RR") (str.to_re "rs") (str.to_re "RS") (str.to_re "sc") (str.to_re "SC") (str.to_re "se") (str.to_re "SE") (str.to_re "sp") (str.to_re "SP") (str.to_re "to") (str.to_re "TO")) (str.to_re "\u{0a}")))))
; ^(19|20)[0-9]{2}-((01|03|05|07|08|10|12)-(0[1-9]|[12][0-9]|3[01]))|(02-(0[1-9]|[12][0-9]))|((04|06|09|11)-(0[1-9]|[12][0-9]|30))$
(assert (not (str.in_re X (re.union (re.++ (re.union (str.to_re "19") (str.to_re "20")) ((_ re.loop 2 2) (re.range "0" "9")) (str.to_re "-") (re.union (str.to_re "01") (str.to_re "03") (str.to_re "05") (str.to_re "07") (str.to_re "08") (str.to_re "10") (str.to_re "12")) (str.to_re "-") (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (re.union (str.to_re "1") (str.to_re "2")) (re.range "0" "9")) (re.++ (str.to_re "3") (re.union (str.to_re "0") (str.to_re "1"))))) (re.++ (str.to_re "02-") (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (re.union (str.to_re "1") (str.to_re "2")) (re.range "0" "9")))) (re.++ (str.to_re "\u{0a}") (re.union (str.to_re "04") (str.to_re "06") (str.to_re "09") (str.to_re "11")) (str.to_re "-") (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (re.union (str.to_re "1") (str.to_re "2")) (re.range "0" "9")) (str.to_re "30")))))))
; Host\x3A[^\n\r]*\x2Fbar_pl\x2Fshdoclc\.fcgi
(assert (not (str.in_re X (re.++ (str.to_re "Host:") (re.* (re.union (str.to_re "\u{0a}") (str.to_re "\u{0d}"))) (str.to_re "/bar_pl/shdoclc.fcgi\u{0a}")))))
; /^<!--\s+[\w]{52,}\s+-->\r\n/smi
(assert (not (str.in_re X (re.++ (str.to_re "/<!--") (re.+ (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (re.+ (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re "-->\u{0d}\u{0a}/smi\u{0a}") ((_ re.loop 52 52) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (re.* (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")))))))
(check-sat)
