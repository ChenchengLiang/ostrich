(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; Id\u{3d}\u{5b}\s+Host\x3A\s+www\x2Eyoogee\x2EcomHost\x3A\<title\>Actual
(assert (not (str.in_re X (re.++ (str.to_re "Id=[") (re.+ (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}"))) (str.to_re "www.yoogee.com\u{13}Host:<title>Actual\u{0a}")))))
; ^((11|12|13|14|15|21|22|23|31|32|33|34|35|36|37|41|42|43|44|45|46|50|51|52|53|54|61|62|63|64|65|71|81|82|91)\d{4})((((((19|20)(([02468][048])|([13579][26]))0229))|((20[0-9][0-9])|(19[0-9][0-9]))((((0[1-9])|(1[0-2]))((0[1-9])|(1\d)|(2[0-8])))|((((0[1,3-9])|(1[0-2]))(29|30))|(((0[13578])|(1[02]))31))))((\d{3}(x|X))|(\d{4})))|((((([02468][048])|([13579][26]))0229)|(\d{2}((((0[1-9])|(1[0-2]))((0[1-9])|(1\d)|(2[0-8])))|(((0[1,3-9])|(1[0-2]))(29|30))|(((0[13578])|(1[02]))31))))\d{3}))$
(assert (str.in_re X (re.++ (re.union (re.++ (re.union (re.++ (re.union (str.to_re "19") (str.to_re "20")) (re.union (re.++ (re.union (str.to_re "0") (str.to_re "2") (str.to_re "4") (str.to_re "6") (str.to_re "8")) (re.union (str.to_re "0") (str.to_re "4") (str.to_re "8"))) (re.++ (re.union (str.to_re "1") (str.to_re "3") (str.to_re "5") (str.to_re "7") (str.to_re "9")) (re.union (str.to_re "2") (str.to_re "6")))) (str.to_re "0229")) (re.++ (re.union (re.++ (str.to_re "20") (re.range "0" "9") (re.range "0" "9")) (re.++ (str.to_re "19") (re.range "0" "9") (re.range "0" "9"))) (re.union (re.++ (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (str.to_re "1") (re.range "0" "2"))) (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (str.to_re "1") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "8")))) (re.++ (re.union (re.++ (str.to_re "0") (re.union (str.to_re "1") (str.to_re ",") (re.range "3" "9"))) (re.++ (str.to_re "1") (re.range "0" "2"))) (re.union (str.to_re "29") (str.to_re "30"))) (re.++ (re.union (re.++ (str.to_re "0") (re.union (str.to_re "1") (str.to_re "3") (str.to_re "5") (str.to_re "7") (str.to_re "8"))) (re.++ (str.to_re "1") (re.union (str.to_re "0") (str.to_re "2")))) (str.to_re "31"))))) (re.union (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.union (str.to_re "x") (str.to_re "X"))) ((_ re.loop 4 4) (re.range "0" "9")))) (re.++ (re.union (re.++ (re.union (re.++ (re.union (str.to_re "0") (str.to_re "2") (str.to_re "4") (str.to_re "6") (str.to_re "8")) (re.union (str.to_re "0") (str.to_re "4") (str.to_re "8"))) (re.++ (re.union (str.to_re "1") (str.to_re "3") (str.to_re "5") (str.to_re "7") (str.to_re "9")) (re.union (str.to_re "2") (str.to_re "6")))) (str.to_re "0229")) (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.union (re.++ (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (str.to_re "1") (re.range "0" "2"))) (re.union (re.++ (str.to_re "0") (re.range "1" "9")) (re.++ (str.to_re "1") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "8")))) (re.++ (re.union (re.++ (str.to_re "0") (re.union (str.to_re "1") (str.to_re ",") (re.range "3" "9"))) (re.++ (str.to_re "1") (re.range "0" "2"))) (re.union (str.to_re "29") (str.to_re "30"))) (re.++ (re.union (re.++ (str.to_re "0") (re.union (str.to_re "1") (str.to_re "3") (str.to_re "5") (str.to_re "7") (str.to_re "8"))) (re.++ (str.to_re "1") (re.union (str.to_re "0") (str.to_re "2")))) (str.to_re "31"))))) ((_ re.loop 3 3) (re.range "0" "9")))) (str.to_re "\u{0a}") (re.union (str.to_re "11") (str.to_re "12") (str.to_re "13") (str.to_re "14") (str.to_re "15") (str.to_re "21") (str.to_re "22") (str.to_re "23") (str.to_re "31") (str.to_re "32") (str.to_re "33") (str.to_re "34") (str.to_re "35") (str.to_re "36") (str.to_re "37") (str.to_re "41") (str.to_re "42") (str.to_re "43") (str.to_re "44") (str.to_re "45") (str.to_re "46") (str.to_re "50") (str.to_re "51") (str.to_re "52") (str.to_re "53") (str.to_re "54") (str.to_re "61") (str.to_re "62") (str.to_re "63") (str.to_re "64") (str.to_re "65") (str.to_re "71") (str.to_re "81") (str.to_re "82") (str.to_re "91")) ((_ re.loop 4 4) (re.range "0" "9")))))
; ^[a-z]+([a-z0-9-]*[a-z0-9]+)?(\.([a-z]+([a-z0-9-]*[a-z0-9]+)?)+)*$
(assert (not (str.in_re X (re.++ (re.+ (re.range "a" "z")) (re.opt (re.++ (re.* (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re "-"))) (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))))) (re.* (re.++ (str.to_re ".") (re.+ (re.++ (re.+ (re.range "a" "z")) (re.opt (re.++ (re.* (re.union (re.range "a" "z") (re.range "0" "9") (str.to_re "-"))) (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))))))))) (str.to_re "\u{0a}")))))
; [^(\&)](\w*)+(\=)[\w\d ]*
(assert (not (str.in_re X (re.++ (re.union (str.to_re "(") (str.to_re "&") (str.to_re ")")) (re.+ (re.* (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_")))) (str.to_re "=") (re.* (re.union (re.range "0" "9") (str.to_re " ") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "\u{0a}")))))
; /filename=[^\n]*\u{2e}wmx/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{0a}"))) (str.to_re ".wmx/i\u{0a}"))))
(check-sat)
