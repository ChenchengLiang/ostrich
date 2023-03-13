(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; /filename\=[a-z0-9]{24}\.exe/H
(assert (str.in_re X (re.++ (str.to_re "/filename=") ((_ re.loop 24 24) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to_re ".exe/H\u{0a}"))))
; /filename=[^\n]*\u{2e}wal/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{0a}"))) (str.to_re ".wal/i\u{0a}"))))
; ^((([0-9A-Fa-f]{1,4}:){7}[0-9A-Fa-f]{1,4})|(([0-9A-Fa-f]{1,4}:){6}:[0-9A-Fa-f]{1,4})|(([0-9A-Fa-f]{1,4}:){5}:([0-9A-Fa-f]{1,4}:)?[0-9A-Fa-f]{1,4})|(([0-9A-Fa-f]{1,4}:){4}:([0-9A-Fa-f]{1,4}:){0,2}[0-9A-Fa-f]{1,4})|(([0-9A-Fa-f]{1,4}:){3}:([0-9A-Fa-f]{1,4}:){0,3}[0-9A-Fa-f]{1,4})|(([0-9A-Fa-f]{1,4}:){2}:([0-9A-Fa-f]{1,4}:){0,4}[0-9A-Fa-f]{1,4})|(([0-9A-Fa-f]{1,4}:){6}((\b((25[0-5])|(1\d{2})|(2[0-4]\d)|(\d{1,2}))\b)\.){3}(\b((25[0-5])|(1\d{2})|(2[0-4]\d)|(\d{1,2}))\b))|(([0-9A-Fa-f]{1,4}:){0,5}:((\b((25[0-5])|(1\d{2})|(2[0-4]\d)|(\d{1,2}))\b)\.){3}(\b((25[0-5])|(1\d{2})|(2[0-4]\d)|(\d{1,2}))\b))|(::([0-9A-Fa-f]{1,4}:){0,5}((\b((25[0-5])|(1\d{2})|(2[0-4]\d)|(\d{1,2}))\b)\.){3}(\b((25[0-5])|(1\d{2})|(2[0-4]\d)|(\d{1,2}))\b))|([0-9A-Fa-f]{1,4}::([0-9A-Fa-f]{1,4}:){0,5}[0-9A-Fa-f]{1,4})|(::([0-9A-Fa-f]{1,4}:){0,6}[0-9A-Fa-f]{1,4})|(([0-9A-Fa-f]{1,4}:){1,7}:))$
(assert (not (str.in_re X (re.++ (re.union (re.++ ((_ re.loop 7 7) (re.++ ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.range "A" "F") (re.range "a" "f"))) (str.to_re ":"))) ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.range "A" "F") (re.range "a" "f")))) (re.++ ((_ re.loop 6 6) (re.++ ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.range "A" "F") (re.range "a" "f"))) (str.to_re ":"))) (str.to_re ":") ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.range "A" "F") (re.range "a" "f")))) (re.++ ((_ re.loop 5 5) (re.++ ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.range "A" "F") (re.range "a" "f"))) (str.to_re ":"))) (str.to_re ":") (re.opt (re.++ ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.range "A" "F") (re.range "a" "f"))) (str.to_re ":"))) ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.range "A" "F") (re.range "a" "f")))) (re.++ ((_ re.loop 4 4) (re.++ ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.range "A" "F") (re.range "a" "f"))) (str.to_re ":"))) (str.to_re ":") ((_ re.loop 0 2) (re.++ ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.range "A" "F") (re.range "a" "f"))) (str.to_re ":"))) ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.range "A" "F") (re.range "a" "f")))) (re.++ ((_ re.loop 3 3) (re.++ ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.range "A" "F") (re.range "a" "f"))) (str.to_re ":"))) (str.to_re ":") ((_ re.loop 0 3) (re.++ ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.range "A" "F") (re.range "a" "f"))) (str.to_re ":"))) ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.range "A" "F") (re.range "a" "f")))) (re.++ ((_ re.loop 2 2) (re.++ ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.range "A" "F") (re.range "a" "f"))) (str.to_re ":"))) (str.to_re ":") ((_ re.loop 0 4) (re.++ ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.range "A" "F") (re.range "a" "f"))) (str.to_re ":"))) ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.range "A" "F") (re.range "a" "f")))) (re.++ ((_ re.loop 6 6) (re.++ ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.range "A" "F") (re.range "a" "f"))) (str.to_re ":"))) ((_ re.loop 3 3) (re.++ (re.union (re.++ (str.to_re "25") (re.range "0" "5")) (re.++ (str.to_re "1") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (str.to_re "2") (re.range "0" "4") (re.range "0" "9")) ((_ re.loop 1 2) (re.range "0" "9"))) (str.to_re "."))) (re.union (re.++ (str.to_re "25") (re.range "0" "5")) (re.++ (str.to_re "1") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (str.to_re "2") (re.range "0" "4") (re.range "0" "9")) ((_ re.loop 1 2) (re.range "0" "9")))) (re.++ ((_ re.loop 0 5) (re.++ ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.range "A" "F") (re.range "a" "f"))) (str.to_re ":"))) (str.to_re ":") ((_ re.loop 3 3) (re.++ (re.union (re.++ (str.to_re "25") (re.range "0" "5")) (re.++ (str.to_re "1") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (str.to_re "2") (re.range "0" "4") (re.range "0" "9")) ((_ re.loop 1 2) (re.range "0" "9"))) (str.to_re "."))) (re.union (re.++ (str.to_re "25") (re.range "0" "5")) (re.++ (str.to_re "1") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (str.to_re "2") (re.range "0" "4") (re.range "0" "9")) ((_ re.loop 1 2) (re.range "0" "9")))) (re.++ (str.to_re "::") ((_ re.loop 0 5) (re.++ ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.range "A" "F") (re.range "a" "f"))) (str.to_re ":"))) ((_ re.loop 3 3) (re.++ (re.union (re.++ (str.to_re "25") (re.range "0" "5")) (re.++ (str.to_re "1") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (str.to_re "2") (re.range "0" "4") (re.range "0" "9")) ((_ re.loop 1 2) (re.range "0" "9"))) (str.to_re "."))) (re.union (re.++ (str.to_re "25") (re.range "0" "5")) (re.++ (str.to_re "1") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (str.to_re "2") (re.range "0" "4") (re.range "0" "9")) ((_ re.loop 1 2) (re.range "0" "9")))) (re.++ ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.range "A" "F") (re.range "a" "f"))) (str.to_re "::") ((_ re.loop 0 5) (re.++ ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.range "A" "F") (re.range "a" "f"))) (str.to_re ":"))) ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.range "A" "F") (re.range "a" "f")))) (re.++ (str.to_re "::") ((_ re.loop 0 6) (re.++ ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.range "A" "F") (re.range "a" "f"))) (str.to_re ":"))) ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.range "A" "F") (re.range "a" "f")))) (re.++ ((_ re.loop 1 7) (re.++ ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.range "A" "F") (re.range "a" "f"))) (str.to_re ":"))) (str.to_re ":"))) (str.to_re "\u{0a}")))))
; [+-](^0.*)
(assert (str.in_re X (re.++ (re.union (str.to_re "+") (str.to_re "-")) (str.to_re "\u{0a}0") (re.* re.allchar))))
(check-sat)
