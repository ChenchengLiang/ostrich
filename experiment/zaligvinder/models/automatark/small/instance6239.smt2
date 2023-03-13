(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; www\.take5bingo\.com\d+Host\x3AHost\x3A
(assert (not (str.in_re X (re.++ (str.to_re "www.take5bingo.com\u{1b}") (re.+ (re.range "0" "9")) (str.to_re "Host:Host:\u{0a}")))))
; \d{2,4}
(assert (str.in_re X (re.++ ((_ re.loop 2 4) (re.range "0" "9")) (str.to_re "\u{0a}"))))
; /\u{2e}wmf([\?\u{5c}\u{2f}]|$)/smiU
(assert (not (str.in_re X (re.++ (str.to_re "/.wmf") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{0a}")))))
; EMA|QCY|SQZ|ORM|NQT|WTN|CBG|QFO|BEQ|LKZ|LTN|KNF|MHZ|NWI|CLF|QUY|SEN|STN|BEQ|BQH|LHR|NHT|LCY|MME|NCL|BWF|BLK|CAX|LPL|MAN|BBP|BEX|BZZ|LGW|SOU|FAB|OXF|ESH|QLA|LYX|KRH|ODH|RCS|QUC|BBS|GLO|EXT|FFD|BOH|LYE|NQY|LEQ|ISC|UPV|BRS|YEO|CVT|BHX|DSA|HUY|LBA|HRT|BFS|BHD|LDY|ENK|ABZ|OBN|BEB|BRR|CAL|COL|CSA|NRL|INV|SCS|DND|LSI|EOI|EDI|FIE|FOA|ILY|FSS|NDY|ADX|LMO|OUK|PSV|PPW|PIK|GLA|KOI|PSL|SYY|SKL|SOY|LWK|TRE|WRY|WHS|WIC|HAW|CEG|VLY|SWS|CWL|DGX|ACI|GCI|IOM|JER
(assert (str.in_re X (re.union (str.to_re "EMA") (str.to_re "QCY") (str.to_re "SQZ") (str.to_re "ORM") (str.to_re "NQT") (str.to_re "WTN") (str.to_re "CBG") (str.to_re "QFO") (str.to_re "BEQ") (str.to_re "LKZ") (str.to_re "LTN") (str.to_re "KNF") (str.to_re "MHZ") (str.to_re "NWI") (str.to_re "CLF") (str.to_re "QUY") (str.to_re "SEN") (str.to_re "STN") (str.to_re "BEQ") (str.to_re "BQH") (str.to_re "LHR") (str.to_re "NHT") (str.to_re "LCY") (str.to_re "MME") (str.to_re "NCL") (str.to_re "BWF") (str.to_re "BLK") (str.to_re "CAX") (str.to_re "LPL") (str.to_re "MAN") (str.to_re "BBP") (str.to_re "BEX") (str.to_re "BZZ") (str.to_re "LGW") (str.to_re "SOU") (str.to_re "FAB") (str.to_re "OXF") (str.to_re "ESH") (str.to_re "QLA") (str.to_re "LYX") (str.to_re "KRH") (str.to_re "ODH") (str.to_re "RCS") (str.to_re "QUC") (str.to_re "BBS") (str.to_re "GLO") (str.to_re "EXT") (str.to_re "FFD") (str.to_re "BOH") (str.to_re "LYE") (str.to_re "NQY") (str.to_re "LEQ") (str.to_re "ISC") (str.to_re "UPV") (str.to_re "BRS") (str.to_re "YEO") (str.to_re "CVT") (str.to_re "BHX") (str.to_re "DSA") (str.to_re "HUY") (str.to_re "LBA") (str.to_re "HRT") (str.to_re "BFS") (str.to_re "BHD") (str.to_re "LDY") (str.to_re "ENK") (str.to_re "ABZ") (str.to_re "OBN") (str.to_re "BEB") (str.to_re "BRR") (str.to_re "CAL") (str.to_re "COL") (str.to_re "CSA") (str.to_re "NRL") (str.to_re "INV") (str.to_re "SCS") (str.to_re "DND") (str.to_re "LSI") (str.to_re "EOI") (str.to_re "EDI") (str.to_re "FIE") (str.to_re "FOA") (str.to_re "ILY") (str.to_re "FSS") (str.to_re "NDY") (str.to_re "ADX") (str.to_re "LMO") (str.to_re "OUK") (str.to_re "PSV") (str.to_re "PPW") (str.to_re "PIK") (str.to_re "GLA") (str.to_re "KOI") (str.to_re "PSL") (str.to_re "SYY") (str.to_re "SKL") (str.to_re "SOY") (str.to_re "LWK") (str.to_re "TRE") (str.to_re "WRY") (str.to_re "WHS") (str.to_re "WIC") (str.to_re "HAW") (str.to_re "CEG") (str.to_re "VLY") (str.to_re "SWS") (str.to_re "CWL") (str.to_re "DGX") (str.to_re "ACI") (str.to_re "GCI") (str.to_re "IOM") (str.to_re "JER\u{0a}"))))
(check-sat)
