(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; /css\s*?\u{28}\s*?[\u{22}\u{27}]margin[^\u{29}]*?[\u{22}\u{27}]\s*?\u{2c}\s*?[\u{22}\u{27}]\d{12,}\s*?px/smi
(assert (not (str.in_re X (re.++ (str.to_re "/css") (re.* (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re "(") (re.* (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (re.union (str.to_re "\u{22}") (str.to_re "'")) (str.to_re "margin") (re.* (re.comp (str.to_re ")"))) (re.union (str.to_re "\u{22}") (str.to_re "'")) (re.* (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re ",") (re.* (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (re.union (str.to_re "\u{22}") (str.to_re "'")) (re.* (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re "px/smi\u{0a}") ((_ re.loop 12 12) (re.range "0" "9")) (re.* (re.range "0" "9"))))))
; ^[a-zA-Z0-9\s.\-_']+$
(assert (str.in_re X (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re ".") (str.to_re "-") (str.to_re "_") (str.to_re "'") (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re "\u{0a}"))))
; (((ht|f)tp(s?):\/\/)|(www\.[^ \[\]\(\)\n\r\t]+)|(([012]?[0-9]{1,2}\.){3}[012]?[0-9]{1,2})\/)([^ \[\]\(\),;"'<>\n\r\t]+)([^\. \[\]\(\),;"'<>\n\r\t])|(([012]?[0-9]{1,2}\.){3}[012]?[0-9]{1,2})
(assert (not (str.in_re X (re.union (re.++ (re.union (re.++ (re.union (str.to_re "ht") (str.to_re "f")) (str.to_re "tp") (re.opt (str.to_re "s")) (str.to_re "://")) (re.++ (str.to_re "www.") (re.+ (re.union (str.to_re " ") (str.to_re "[") (str.to_re "]") (str.to_re "(") (str.to_re ")") (str.to_re "\u{0a}") (str.to_re "\u{0d}") (str.to_re "\u{09}")))) (re.++ (str.to_re "/") ((_ re.loop 3 3) (re.++ (re.opt (re.union (str.to_re "0") (str.to_re "1") (str.to_re "2"))) ((_ re.loop 1 2) (re.range "0" "9")) (str.to_re "."))) (re.opt (re.union (str.to_re "0") (str.to_re "1") (str.to_re "2"))) ((_ re.loop 1 2) (re.range "0" "9")))) (re.+ (re.union (str.to_re " ") (str.to_re "[") (str.to_re "]") (str.to_re "(") (str.to_re ")") (str.to_re ",") (str.to_re ";") (str.to_re "\u{22}") (str.to_re "'") (str.to_re "<") (str.to_re ">") (str.to_re "\u{0a}") (str.to_re "\u{0d}") (str.to_re "\u{09}"))) (re.union (str.to_re ".") (str.to_re " ") (str.to_re "[") (str.to_re "]") (str.to_re "(") (str.to_re ")") (str.to_re ",") (str.to_re ";") (str.to_re "\u{22}") (str.to_re "'") (str.to_re "<") (str.to_re ">") (str.to_re "\u{0a}") (str.to_re "\u{0d}") (str.to_re "\u{09}"))) (re.++ (str.to_re "\u{0a}") ((_ re.loop 3 3) (re.++ (re.opt (re.union (str.to_re "0") (str.to_re "1") (str.to_re "2"))) ((_ re.loop 1 2) (re.range "0" "9")) (str.to_re "."))) (re.opt (re.union (str.to_re "0") (str.to_re "1") (str.to_re "2"))) ((_ re.loop 1 2) (re.range "0" "9")))))))
; ^\d*\.?((25)|(50)|(5)|(75)|(0)|(00))?$
(assert (str.in_re X (re.++ (re.* (re.range "0" "9")) (re.opt (str.to_re ".")) (re.opt (re.union (str.to_re "25") (str.to_re "50") (str.to_re "5") (str.to_re "75") (str.to_re "0") (str.to_re "00"))) (str.to_re "\u{0a}"))))
(check-sat)
