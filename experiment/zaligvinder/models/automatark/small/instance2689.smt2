(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; (<(!--.*|script)(.|\n[^<])*(--|script)>)|(<|<)(/?[\w!?]+)\s?[^<]*(>|>)|(\&[\w]+\;)
(assert (not (str.in_re X (re.union (re.++ (str.to_re "<") (re.union (re.++ (str.to_re "!--") (re.* re.allchar)) (str.to_re "script")) (re.* (re.union re.allchar (re.++ (str.to_re "\u{0a}") (re.comp (str.to_re "<"))))) (re.union (str.to_re "--") (str.to_re "script")) (str.to_re ">")) (re.++ (str.to_re "<") (re.opt (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (re.* (re.comp (str.to_re "<"))) (str.to_re ">") (re.opt (str.to_re "/")) (re.+ (re.union (str.to_re "!") (str.to_re "?") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")))) (re.++ (str.to_re "\u{0a}&") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re ";"))))))
; sponsor2\.ucmore\.com\s+informationHost\x3A\x2Fezsb
(assert (not (str.in_re X (re.++ (str.to_re "sponsor2.ucmore.com") (re.+ (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re "informationHost:/ezsb\u{0a}")))))
; AdTools\d+rprpgbnrppb\u{2f}ciExplorer\x2Fsto=notificationfindwww\x2Emakemesearch\x2Ecom
(assert (not (str.in_re X (re.++ (str.to_re "AdTools") (re.+ (re.range "0" "9")) (str.to_re "rprpgbnrppb/ciExplorer/sto=notification\u{13}findwww.makemesearch.com\u{0a}")))))
; ^(B(A|B|C|J|L|N|R|S|Y)|CA|D(K|S|T)|G(A|L)|H(C|E)|IL|K(A|I|E|K|M|N|S)|L(E|C|M|V)|M(A|I|L|T|Y)|N(I|O|M|R|Z)|P(B|D|E|O|K|N|P|T|U|V)|R(A|K|S|V)|S(A|B|C|E|I|K|L|O|N|P|V)|T(A|C|N|O|R|S|T|V)|V(K|T)|Z(A|C|H|I|M|V))([ ]{0,1})([0-9]{3})([A-Z]{2})$
(assert (str.in_re X (re.++ (re.union (re.++ (str.to_re "B") (re.union (str.to_re "A") (str.to_re "B") (str.to_re "C") (str.to_re "J") (str.to_re "L") (str.to_re "N") (str.to_re "R") (str.to_re "S") (str.to_re "Y"))) (str.to_re "CA") (re.++ (str.to_re "D") (re.union (str.to_re "K") (str.to_re "S") (str.to_re "T"))) (re.++ (str.to_re "G") (re.union (str.to_re "A") (str.to_re "L"))) (re.++ (str.to_re "H") (re.union (str.to_re "C") (str.to_re "E"))) (str.to_re "IL") (re.++ (str.to_re "K") (re.union (str.to_re "A") (str.to_re "I") (str.to_re "E") (str.to_re "K") (str.to_re "M") (str.to_re "N") (str.to_re "S"))) (re.++ (str.to_re "L") (re.union (str.to_re "E") (str.to_re "C") (str.to_re "M") (str.to_re "V"))) (re.++ (str.to_re "M") (re.union (str.to_re "A") (str.to_re "I") (str.to_re "L") (str.to_re "T") (str.to_re "Y"))) (re.++ (str.to_re "N") (re.union (str.to_re "I") (str.to_re "O") (str.to_re "M") (str.to_re "R") (str.to_re "Z"))) (re.++ (str.to_re "P") (re.union (str.to_re "B") (str.to_re "D") (str.to_re "E") (str.to_re "O") (str.to_re "K") (str.to_re "N") (str.to_re "P") (str.to_re "T") (str.to_re "U") (str.to_re "V"))) (re.++ (str.to_re "R") (re.union (str.to_re "A") (str.to_re "K") (str.to_re "S") (str.to_re "V"))) (re.++ (str.to_re "S") (re.union (str.to_re "A") (str.to_re "B") (str.to_re "C") (str.to_re "E") (str.to_re "I") (str.to_re "K") (str.to_re "L") (str.to_re "O") (str.to_re "N") (str.to_re "P") (str.to_re "V"))) (re.++ (str.to_re "T") (re.union (str.to_re "A") (str.to_re "C") (str.to_re "N") (str.to_re "O") (str.to_re "R") (str.to_re "S") (str.to_re "T") (str.to_re "V"))) (re.++ (str.to_re "V") (re.union (str.to_re "K") (str.to_re "T"))) (re.++ (str.to_re "Z") (re.union (str.to_re "A") (str.to_re "C") (str.to_re "H") (str.to_re "I") (str.to_re "M") (str.to_re "V")))) (re.opt (str.to_re " ")) ((_ re.loop 3 3) (re.range "0" "9")) ((_ re.loop 2 2) (re.range "A" "Z")) (str.to_re "\u{0a}"))))
(check-sat)
