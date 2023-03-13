(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; ^((NO)[0-9A-Z]{2}[ ][0-9A-Z]{4}[ ][0-9A-Z]{4}[ ][0-9A-Z]{3}|(NO)[0-9A-Z]{15}|(BE)[0-9A-Z]{2}[ ][0-9A-Z]{4}[ ][0-9A-Z]{4}[ ][0-9A-Z]{4}|(BE)[0-9A-Z]{16}|(DK|FO|FI|GL|NL)[0-9A-Z]{2}[ ][0-9A-Z]{4}[ ][0-9A-Z]{4}[ ][0-9A-Z]{4}[ ][0-9A-Z]{2}|(DK|FO|FI|GL|NL)[0-9A-Z]{18}|(MK|SI)[0-9A-Z]{2}[ ][0-9A-Z]{4}[ ][0-9A-Z]{4}[ ][0-9A-Z]{4}[ ][0-9A-Z]{3}|(MK|SI)[0-9A-Z]{19}|(BA|EE|KZ|LT|LU|AT)[0-9A-Z]{2}[ ][0-9A-Z]{4}[ ][0-9A-Z]{4}[ ][0-9A-Z]{4}[ ][0-9A-Z]{4}|(BA|EE|KZ|LT|LU|AT)[0-9A-Z]{20}|(HR|LI|LV|CH)[0-9A-Z]{2}[ ][0-9A-Z]{4}[ ][0-9A-Z]{4}[ ][0-9A-Z]{4}[ ][0-9A-Z]{4}[ ][0-9A-Z]{1}|(HR|LI|LV|CH)[0-9A-Z]{21}|(BG|DE|IE|ME|RS|GB)[0-9A-Z]{2}[ ][0-9A-Z]{4}[ ][0-9A-Z]{4}[ ][0-9A-Z]{4}[ ][0-9A-Z]{4}[ ][0-9A-Z]{2}|(BG|DE|IE|ME|RS|GB)[0-9A-Z]{22}|(GI|IL)[0-9A-Z]{2}[ ][0-9A-Z]{4}[ ][0-9A-Z]{4}[ ][0-9A-Z]{4}[ ][0-9A-Z]{4}[ ][0-9A-Z]{3}|(GI|IL)[0-9A-Z]{23}|(AD|CZ|SA|RO|SK|ES|SE|TN)[0-9A-Z]{2}[ ][0-9A-Z]{4}[ ][0-9A-Z]{4}[ ][0-9A-Z]{4}[ ][0-9A-Z]{4}[ ][0-9A-Z]{4}|(AD|CZ|SA|RO|SK|ES|SE|TN)[0-9A-Z]{24}|(PT)[0-9A-Z]{2}[ ][0-9A-Z]{4}[ ][0-9A-Z]{4}[ ][0-9A-Z]{4}[ ][0-9A-Z]{4}[ ][0-9A-Z]{4}[ ][0-9A-Z]{1}|(PT)[0-9A-Z]{25}|(IS|TR)[0-9A-Z]{2}[ ][0-9A-Z]{4}[ ][0-9A-Z]{4}[ ][0-9A-Z]{4}[ ][0-9A-Z]{4}[ ][0-9A-Z]{4}[ ][0-9A-Z]{2}|(IS|TR)[0-9A-Z]{26}|(FR|GR|IT|MC|SM)[0-9A-Z]{2}[ ][0-9A-Z]{4}[ ][0-9A-Z]{4}[ ][0-9A-Z]{4}[ ][0-9A-Z]{4}[ ][0-9A-Z]{4}[ ][0-9A-Z]{3}|(FR|GR|IT|MC|SM)[0-9A-Z]{27}|(AL|CY|HU|LB|PL)[0-9A-Z]{2}[ ][0-9A-Z]{4}[ ][0-9A-Z]{4}[ ][0-9A-Z]{4}[ ][0-9A-Z]{4}[ ][0-9A-Z]{4}[ ][0-9A-Z]{4}|(AL|CY|HU|LB|PL)[0-9A-Z]{28}|(MU)[0-9A-Z]{2}[ ][0-9A-Z]{4}[ ][0-9A-Z]{4}[ ][0-9A-Z]{4}[ ][0-9A-Z]{4}[ ][0-9A-Z]{4}[ ][0-9A-Z]{4}[ ][0-9A-Z]{2}|(MU)[0-9A-Z]{30}|(MT)[0-9A-Z]{2}[ ][0-9A-Z]{4}[ ][0-9A-Z]{4}[ ][0-9A-Z]{4}[ ][0-9A-Z]{4}[ ][0-9A-Z]{4}[ ][0-9A-Z]{4}[ ][0-9A-Z]{3}|(MT)[0-9A-Z]{31})$
(assert (str.in_re X (re.++ (re.union (re.++ (str.to_re "NO") ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "A" "Z"))) (str.to_re " ") ((_ re.loop 4 4) (re.union (re.range "0" "9") (re.range "A" "Z"))) (str.to_re " ") ((_ re.loop 4 4) (re.union (re.range "0" "9") (re.range "A" "Z"))) (str.to_re " ") ((_ re.loop 3 3) (re.union (re.range "0" "9") (re.range "A" "Z")))) (re.++ (str.to_re "NO") ((_ re.loop 15 15) (re.union (re.range "0" "9") (re.range "A" "Z")))) (re.++ (str.to_re "BE") ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "A" "Z"))) (str.to_re " ") ((_ re.loop 4 4) (re.union (re.range "0" "9") (re.range "A" "Z"))) (str.to_re " ") ((_ re.loop 4 4) (re.union (re.range "0" "9") (re.range "A" "Z"))) (str.to_re " ") ((_ re.loop 4 4) (re.union (re.range "0" "9") (re.range "A" "Z")))) (re.++ (str.to_re "BE") ((_ re.loop 16 16) (re.union (re.range "0" "9") (re.range "A" "Z")))) (re.++ (re.union (str.to_re "DK") (str.to_re "FO") (str.to_re "FI") (str.to_re "GL") (str.to_re "NL")) ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "A" "Z"))) (str.to_re " ") ((_ re.loop 4 4) (re.union (re.range "0" "9") (re.range "A" "Z"))) (str.to_re " ") ((_ re.loop 4 4) (re.union (re.range "0" "9") (re.range "A" "Z"))) (str.to_re " ") ((_ re.loop 4 4) (re.union (re.range "0" "9") (re.range "A" "Z"))) (str.to_re " ") ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "A" "Z")))) (re.++ (re.union (str.to_re "DK") (str.to_re "FO") (str.to_re "FI") (str.to_re "GL") (str.to_re "NL")) ((_ re.loop 18 18) (re.union (re.range "0" "9") (re.range "A" "Z")))) (re.++ (re.union (str.to_re "MK") (str.to_re "SI")) ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "A" "Z"))) (str.to_re " ") ((_ re.loop 4 4) (re.union (re.range "0" "9") (re.range "A" "Z"))) (str.to_re " ") ((_ re.loop 4 4) (re.union (re.range "0" "9") (re.range "A" "Z"))) (str.to_re " ") ((_ re.loop 4 4) (re.union (re.range "0" "9") (re.range "A" "Z"))) (str.to_re " ") ((_ re.loop 3 3) (re.union (re.range "0" "9") (re.range "A" "Z")))) (re.++ (re.union (str.to_re "MK") (str.to_re "SI")) ((_ re.loop 19 19) (re.union (re.range "0" "9") (re.range "A" "Z")))) (re.++ (re.union (str.to_re "BA") (str.to_re "EE") (str.to_re "KZ") (str.to_re "LT") (str.to_re "LU") (str.to_re "AT")) ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "A" "Z"))) (str.to_re " ") ((_ re.loop 4 4) (re.union (re.range "0" "9") (re.range "A" "Z"))) (str.to_re " ") ((_ re.loop 4 4) (re.union (re.range "0" "9") (re.range "A" "Z"))) (str.to_re " ") ((_ re.loop 4 4) (re.union (re.range "0" "9") (re.range "A" "Z"))) (str.to_re " ") ((_ re.loop 4 4) (re.union (re.range "0" "9") (re.range "A" "Z")))) (re.++ (re.union (str.to_re "BA") (str.to_re "EE") (str.to_re "KZ") (str.to_re "LT") (str.to_re "LU") (str.to_re "AT")) ((_ re.loop 20 20) (re.union (re.range "0" "9") (re.range "A" "Z")))) (re.++ (re.union (str.to_re "HR") (str.to_re "LI") (str.to_re "LV") (str.to_re "CH")) ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "A" "Z"))) (str.to_re " ") ((_ re.loop 4 4) (re.union (re.range "0" "9") (re.range "A" "Z"))) (str.to_re " ") ((_ re.loop 4 4) (re.union (re.range "0" "9") (re.range "A" "Z"))) (str.to_re " ") ((_ re.loop 4 4) (re.union (re.range "0" "9") (re.range "A" "Z"))) (str.to_re " ") ((_ re.loop 4 4) (re.union (re.range "0" "9") (re.range "A" "Z"))) (str.to_re " ") ((_ re.loop 1 1) (re.union (re.range "0" "9") (re.range "A" "Z")))) (re.++ (re.union (str.to_re "HR") (str.to_re "LI") (str.to_re "LV") (str.to_re "CH")) ((_ re.loop 21 21) (re.union (re.range "0" "9") (re.range "A" "Z")))) (re.++ (re.union (str.to_re "BG") (str.to_re "DE") (str.to_re "IE") (str.to_re "ME") (str.to_re "RS") (str.to_re "GB")) ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "A" "Z"))) (str.to_re " ") ((_ re.loop 4 4) (re.union (re.range "0" "9") (re.range "A" "Z"))) (str.to_re " ") ((_ re.loop 4 4) (re.union (re.range "0" "9") (re.range "A" "Z"))) (str.to_re " ") ((_ re.loop 4 4) (re.union (re.range "0" "9") (re.range "A" "Z"))) (str.to_re " ") ((_ re.loop 4 4) (re.union (re.range "0" "9") (re.range "A" "Z"))) (str.to_re " ") ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "A" "Z")))) (re.++ (re.union (str.to_re "BG") (str.to_re "DE") (str.to_re "IE") (str.to_re "ME") (str.to_re "RS") (str.to_re "GB")) ((_ re.loop 22 22) (re.union (re.range "0" "9") (re.range "A" "Z")))) (re.++ (re.union (str.to_re "GI") (str.to_re "IL")) ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "A" "Z"))) (str.to_re " ") ((_ re.loop 4 4) (re.union (re.range "0" "9") (re.range "A" "Z"))) (str.to_re " ") ((_ re.loop 4 4) (re.union (re.range "0" "9") (re.range "A" "Z"))) (str.to_re " ") ((_ re.loop 4 4) (re.union (re.range "0" "9") (re.range "A" "Z"))) (str.to_re " ") ((_ re.loop 4 4) (re.union (re.range "0" "9") (re.range "A" "Z"))) (str.to_re " ") ((_ re.loop 3 3) (re.union (re.range "0" "9") (re.range "A" "Z")))) (re.++ (re.union (str.to_re "GI") (str.to_re "IL")) ((_ re.loop 23 23) (re.union (re.range "0" "9") (re.range "A" "Z")))) (re.++ (re.union (str.to_re "AD") (str.to_re "CZ") (str.to_re "SA") (str.to_re "RO") (str.to_re "SK") (str.to_re "ES") (str.to_re "SE") (str.to_re "TN")) ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "A" "Z"))) (str.to_re " ") ((_ re.loop 4 4) (re.union (re.range "0" "9") (re.range "A" "Z"))) (str.to_re " ") ((_ re.loop 4 4) (re.union (re.range "0" "9") (re.range "A" "Z"))) (str.to_re " ") ((_ re.loop 4 4) (re.union (re.range "0" "9") (re.range "A" "Z"))) (str.to_re " ") ((_ re.loop 4 4) (re.union (re.range "0" "9") (re.range "A" "Z"))) (str.to_re " ") ((_ re.loop 4 4) (re.union (re.range "0" "9") (re.range "A" "Z")))) (re.++ (re.union (str.to_re "AD") (str.to_re "CZ") (str.to_re "SA") (str.to_re "RO") (str.to_re "SK") (str.to_re "ES") (str.to_re "SE") (str.to_re "TN")) ((_ re.loop 24 24) (re.union (re.range "0" "9") (re.range "A" "Z")))) (re.++ (str.to_re "PT") ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "A" "Z"))) (str.to_re " ") ((_ re.loop 4 4) (re.union (re.range "0" "9") (re.range "A" "Z"))) (str.to_re " ") ((_ re.loop 4 4) (re.union (re.range "0" "9") (re.range "A" "Z"))) (str.to_re " ") ((_ re.loop 4 4) (re.union (re.range "0" "9") (re.range "A" "Z"))) (str.to_re " ") ((_ re.loop 4 4) (re.union (re.range "0" "9") (re.range "A" "Z"))) (str.to_re " ") ((_ re.loop 4 4) (re.union (re.range "0" "9") (re.range "A" "Z"))) (str.to_re " ") ((_ re.loop 1 1) (re.union (re.range "0" "9") (re.range "A" "Z")))) (re.++ (str.to_re "PT") ((_ re.loop 25 25) (re.union (re.range "0" "9") (re.range "A" "Z")))) (re.++ (re.union (str.to_re "IS") (str.to_re "TR")) ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "A" "Z"))) (str.to_re " ") ((_ re.loop 4 4) (re.union (re.range "0" "9") (re.range "A" "Z"))) (str.to_re " ") ((_ re.loop 4 4) (re.union (re.range "0" "9") (re.range "A" "Z"))) (str.to_re " ") ((_ re.loop 4 4) (re.union (re.range "0" "9") (re.range "A" "Z"))) (str.to_re " ") ((_ re.loop 4 4) (re.union (re.range "0" "9") (re.range "A" "Z"))) (str.to_re " ") ((_ re.loop 4 4) (re.union (re.range "0" "9") (re.range "A" "Z"))) (str.to_re " ") ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "A" "Z")))) (re.++ (re.union (str.to_re "IS") (str.to_re "TR")) ((_ re.loop 26 26) (re.union (re.range "0" "9") (re.range "A" "Z")))) (re.++ (re.union (str.to_re "FR") (str.to_re "GR") (str.to_re "IT") (str.to_re "MC") (str.to_re "SM")) ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "A" "Z"))) (str.to_re " ") ((_ re.loop 4 4) (re.union (re.range "0" "9") (re.range "A" "Z"))) (str.to_re " ") ((_ re.loop 4 4) (re.union (re.range "0" "9") (re.range "A" "Z"))) (str.to_re " ") ((_ re.loop 4 4) (re.union (re.range "0" "9") (re.range "A" "Z"))) (str.to_re " ") ((_ re.loop 4 4) (re.union (re.range "0" "9") (re.range "A" "Z"))) (str.to_re " ") ((_ re.loop 4 4) (re.union (re.range "0" "9") (re.range "A" "Z"))) (str.to_re " ") ((_ re.loop 3 3) (re.union (re.range "0" "9") (re.range "A" "Z")))) (re.++ (re.union (str.to_re "FR") (str.to_re "GR") (str.to_re "IT") (str.to_re "MC") (str.to_re "SM")) ((_ re.loop 27 27) (re.union (re.range "0" "9") (re.range "A" "Z")))) (re.++ (re.union (str.to_re "AL") (str.to_re "CY") (str.to_re "HU") (str.to_re "LB") (str.to_re "PL")) ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "A" "Z"))) (str.to_re " ") ((_ re.loop 4 4) (re.union (re.range "0" "9") (re.range "A" "Z"))) (str.to_re " ") ((_ re.loop 4 4) (re.union (re.range "0" "9") (re.range "A" "Z"))) (str.to_re " ") ((_ re.loop 4 4) (re.union (re.range "0" "9") (re.range "A" "Z"))) (str.to_re " ") ((_ re.loop 4 4) (re.union (re.range "0" "9") (re.range "A" "Z"))) (str.to_re " ") ((_ re.loop 4 4) (re.union (re.range "0" "9") (re.range "A" "Z"))) (str.to_re " ") ((_ re.loop 4 4) (re.union (re.range "0" "9") (re.range "A" "Z")))) (re.++ (re.union (str.to_re "AL") (str.to_re "CY") (str.to_re "HU") (str.to_re "LB") (str.to_re "PL")) ((_ re.loop 28 28) (re.union (re.range "0" "9") (re.range "A" "Z")))) (re.++ (str.to_re "MU") ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "A" "Z"))) (str.to_re " ") ((_ re.loop 4 4) (re.union (re.range "0" "9") (re.range "A" "Z"))) (str.to_re " ") ((_ re.loop 4 4) (re.union (re.range "0" "9") (re.range "A" "Z"))) (str.to_re " ") ((_ re.loop 4 4) (re.union (re.range "0" "9") (re.range "A" "Z"))) (str.to_re " ") ((_ re.loop 4 4) (re.union (re.range "0" "9") (re.range "A" "Z"))) (str.to_re " ") ((_ re.loop 4 4) (re.union (re.range "0" "9") (re.range "A" "Z"))) (str.to_re " ") ((_ re.loop 4 4) (re.union (re.range "0" "9") (re.range "A" "Z"))) (str.to_re " ") ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "A" "Z")))) (re.++ (str.to_re "MU") ((_ re.loop 30 30) (re.union (re.range "0" "9") (re.range "A" "Z")))) (re.++ (str.to_re "MT") ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "A" "Z"))) (str.to_re " ") ((_ re.loop 4 4) (re.union (re.range "0" "9") (re.range "A" "Z"))) (str.to_re " ") ((_ re.loop 4 4) (re.union (re.range "0" "9") (re.range "A" "Z"))) (str.to_re " ") ((_ re.loop 4 4) (re.union (re.range "0" "9") (re.range "A" "Z"))) (str.to_re " ") ((_ re.loop 4 4) (re.union (re.range "0" "9") (re.range "A" "Z"))) (str.to_re " ") ((_ re.loop 4 4) (re.union (re.range "0" "9") (re.range "A" "Z"))) (str.to_re " ") ((_ re.loop 4 4) (re.union (re.range "0" "9") (re.range "A" "Z"))) (str.to_re " ") ((_ re.loop 3 3) (re.union (re.range "0" "9") (re.range "A" "Z")))) (re.++ (str.to_re "MT") ((_ re.loop 31 31) (re.union (re.range "0" "9") (re.range "A" "Z"))))) (str.to_re "\u{0a}"))))
; \[([\w \.]+)\]\(([\w\.:\/ ]*)\)
(assert (not (str.in_re X (re.++ (str.to_re "[") (re.+ (re.union (str.to_re " ") (str.to_re ".") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "](") (re.* (re.union (str.to_re ".") (str.to_re ":") (str.to_re "/") (str.to_re " ") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re ")\u{0a}")))))
; (077|078|079)\s?\d{2}\s?\d{6}
(assert (not (str.in_re X (re.++ (re.opt (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) ((_ re.loop 6 6) (re.range "0" "9")) (str.to_re "\u{0a}07") (re.union (str.to_re "7") (str.to_re "8") (str.to_re "9"))))))
(check-sat)
