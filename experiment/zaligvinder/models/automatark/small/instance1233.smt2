(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; ^((((0?[13578]|1[02])\/([0-2]?[1-9]|20|3[0-1]))|((0?[469]|11)\/([0-2]?[1-9]|20|30))|(0?2\/([0-1]?[1-9]|2[0-8])))\/((19|20)?\d{2}))|(0?2\/29\/((19|20)?(04|08|12|16|20|24|28|32|36|40|44|48|52|56|60|64|68|72|76|80|84|88|92|96)|2000))$
(assert (str.in_re X (re.union (re.++ (re.union (re.++ (re.union (re.++ (re.opt (str.to_re "0")) (re.union (str.to_re "1") (str.to_re "3") (str.to_re "5") (str.to_re "7") (str.to_re "8"))) (re.++ (str.to_re "1") (re.union (str.to_re "0") (str.to_re "2")))) (str.to_re "/") (re.union (re.++ (re.opt (re.range "0" "2")) (re.range "1" "9")) (str.to_re "20") (re.++ (str.to_re "3") (re.range "0" "1")))) (re.++ (re.union (re.++ (re.opt (str.to_re "0")) (re.union (str.to_re "4") (str.to_re "6") (str.to_re "9"))) (str.to_re "11")) (str.to_re "/") (re.union (re.++ (re.opt (re.range "0" "2")) (re.range "1" "9")) (str.to_re "20") (str.to_re "30"))) (re.++ (re.opt (str.to_re "0")) (str.to_re "2/") (re.union (re.++ (re.opt (re.range "0" "1")) (re.range "1" "9")) (re.++ (str.to_re "2") (re.range "0" "8"))))) (str.to_re "/") (re.opt (re.union (str.to_re "19") (str.to_re "20"))) ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (str.to_re "\u{0a}") (re.opt (str.to_re "0")) (str.to_re "2/29/") (re.union (re.++ (re.opt (re.union (str.to_re "19") (str.to_re "20"))) (re.union (str.to_re "04") (str.to_re "08") (str.to_re "12") (str.to_re "16") (str.to_re "20") (str.to_re "24") (str.to_re "28") (str.to_re "32") (str.to_re "36") (str.to_re "40") (str.to_re "44") (str.to_re "48") (str.to_re "52") (str.to_re "56") (str.to_re "60") (str.to_re "64") (str.to_re "68") (str.to_re "72") (str.to_re "76") (str.to_re "80") (str.to_re "84") (str.to_re "88") (str.to_re "92") (str.to_re "96"))) (str.to_re "2000"))))))
; www\u{2e}urlblaze\u{2e}netCurrentHost\x3A
(assert (not (str.in_re X (str.to_re "www.urlblaze.netCurrentHost:\u{0a}"))))
; Spywww\x2Elookquick\x2Ecom
(assert (str.in_re X (str.to_re "Spywww.lookquick.com\u{0a}")))
; /^\u{02}\d+ cfA/smi
(assert (str.in_re X (re.++ (str.to_re "/\u{02}") (re.+ (re.range "0" "9")) (str.to_re " cfA/smi\u{0a}"))))
; Host\x3A\w+User-Agent\x3A\sTeomaBarHost\x3AHoursHost\x3AHost\x3A
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "User-Agent:") (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}")) (str.to_re "TeomaBarHost:HoursHost:Host:\u{0a}"))))
(check-sat)
