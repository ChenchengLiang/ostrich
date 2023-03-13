(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; <img\s((width|height|alt|align|style)="[^"]*"\s)*src="(\/?[a-z0-9_-]\/?)+\.(png|jpg|jpeg|gif)"(\s(width|height|alt|align|style)="[^"]*")*\s*\/>
(assert (str.in_re X (re.++ (str.to_re "<img") (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}")) (re.* (re.++ (re.union (str.to_re "width") (str.to_re "height") (str.to_re "alt") (str.to_re "align") (str.to_re "style")) (str.to_re "=\u{22}") (re.* (re.comp (str.to_re "\u{22}"))) (str.to_re "\u{22}") (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}")))) (str.to_re "src=\u{22}") (re.+ (re.++ (re.opt (str.to_re "/")) (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re "_") (str.to_re "-")) (re.opt (str.to_re "/")))) (str.to_re ".") (re.union (str.to_re "png") (str.to_re "jpg") (str.to_re "jpeg") (str.to_re "gif")) (str.to_re "\u{22}") (re.* (re.++ (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}")) (re.union (str.to_re "width") (str.to_re "height") (str.to_re "alt") (str.to_re "align") (str.to_re "style")) (str.to_re "=\u{22}") (re.* (re.comp (str.to_re "\u{22}"))) (str.to_re "\u{22}"))) (re.* (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re "/>\u{0a}"))))
; ^[ISBN]{4}[ ]{0,1}[0-9]{1}[-]{1}[0-9]{3}[-]{1}[0-9]{5}[-]{1}[0-9]{0,1}$
(assert (str.in_re X (re.++ ((_ re.loop 4 4) (re.union (str.to_re "I") (str.to_re "S") (str.to_re "B") (str.to_re "N"))) (re.opt (str.to_re " ")) ((_ re.loop 1 1) (re.range "0" "9")) ((_ re.loop 1 1) (str.to_re "-")) ((_ re.loop 3 3) (re.range "0" "9")) ((_ re.loop 1 1) (str.to_re "-")) ((_ re.loop 5 5) (re.range "0" "9")) ((_ re.loop 1 1) (str.to_re "-")) (re.opt (re.range "0" "9")) (str.to_re "\u{0a}"))))
(check-sat)
