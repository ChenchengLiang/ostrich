;test regex ^([a-zA-Z][a-zA-Z0-9+-.]*):((\/\/(((([a-zA-Z0-9\-._~!$&&#39;()*+,;=&#39;:]|(%[0-9a-fA-F]{2}))*)@)?((\[((((([0-9a-fA-F]{1,4}:){6}|(::([0-9a-fA-F]{1,4}:){5})|(([0-9a-fA-F]{1,4})?::([0-9a-fA-F]{1,4}:){4})|((([0-9a-fA-F]{1,4}:)?[0-9a-fA-F]{1,4})?::([0-9a-fA-F]{1,4}:){3})|((([0-9a-fA-F]{1,4}:){0,2}[0-9a-fA-F]{1,4})?::([0-9a-fA-F]{1,4}:){2})|((([0-9a-fA-F]{1,4}:){0,3}[0-9a-fA-F]{1,4})?::[0-9a-fA-F]{1,4}:)|((([0-9a-fA-F]{1,4}:){0,4}[0-9a-fA-F]{1,4})?::))((([0-9a-fA-F]{1,4}):([0-9a-fA-F]{1,4}))|(([0-9]|(1[0-9]{2})|(2[0-4][0-9])|(25[0-5]))\.([0-9]|(1[0-9]{2})|(2[0-4][0-9])|(25[0-5]))\.([0-9]|(1[0-9]{2})|(2[0-4][0-9])|(25[0-5]))\.([0-9]|(1[0-9]{2})|(2[0-4][0-9])|(25[0-5])))))|((([0-9a-fA-F]{1,4}:){0,5}[0-9a-fA-F]{1,4})?::[0-9a-fA-F]{1,4})|((([0-9a-fA-F]{1,4}:){0,5}[0-9a-fA-F]{1,4})?::))|(v[0-9a-fA-F]+\.[a-zA-Z0-9\-._~!$&&#39;()*+,;=&#39;:]+))\])|(([0-9]|(1[0-9]{2})|(2[0-4][0-9])|(25[0-5]))\.([0-9]|(1[0-9]{2})|(2[0-4][0-9])|(25[0-5]))\.([0-9]|(1[0-9]{2})|(2[0-4][0-9])|(25[0-5]))\.([0-9]|(1[0-9]{2})|(2[0-4][0-9])|(25[0-5])))|(([a-zA-Z0-9\-._~!$&&#39;()*+,;=&#39;]|(%[0-9a-fA-F]{2}))*))(:[0-9]*)?)((\/([a-zA-Z0-9\-._~!$&&#39;()*+,;=&#39;:@]|(%[0-9a-fA-F]{2}))*)*))|(\/?(([a-zA-Z0-9\-._~!$&&#39;()*+,;=&#39;:@]|(%[0-9a-fA-F]{2}))+(\/([a-zA-Z0-9\-._~!$&&#39;()*+,;=&#39;:@]|(%[0-9a-fA-F]{2}))*)*)?))(\?(([a-zA-Z0-9\-._~!$&&#39;()*+,;=&#39;:@\/?]|(%[0-9a-fA-F]{2}))*))?((#(([a-zA-Z0-9\-._~!$&&#39;()*+,;=&#39;:@\/?]|(%[0-9a-fA-F]{2}))*)))?$
(declare-const X String)
(assert (str.in_re X (re.++ (re.++ (str.to_re "") (re.++ (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (re.* (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (re.union (str.to_re "+") (re.union (str.to_re "-") (str.to_re ".")))))))) (re.++ (str.to_re ":") (re.++ (re.union (re.++ (str.to_re "/") (re.++ (str.to_re "/") (re.++ (re.++ (re.opt (re.++ (re.* (re.union (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (re.union (str.to_re "-") (re.union (str.to_re ".") (re.union (str.to_re "_") (re.union (str.to_re "~") (re.union (str.to_re "!") (re.union (str.to_re "$") (re.union (str.to_re "&") (re.union (str.to_re "&") (re.union (str.to_re "#") (re.union (str.to_re "39") (re.union (str.to_re ";") (re.union (str.to_re "(") (re.union (str.to_re ")") (re.union (str.to_re "*") (re.union (str.to_re "+") (re.union (str.to_re ",") (re.union (str.to_re ";") (re.union (str.to_re "=") (re.union (str.to_re "&") (re.union (str.to_re "#") (re.union (str.to_re "39") (re.union (str.to_re ";") (str.to_re ":")))))))))))))))))))))))))) (re.++ (str.to_re "%") ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.union (re.range "a" "f") (re.range "A" "F"))))))) (str.to_re "@"))) (re.++ (re.union (re.union (re.++ (str.to_re "[") (re.++ (re.union (re.union (re.union (re.++ (re.union (re.union (re.union (re.union (re.union (re.union ((_ re.loop 6 6) (re.++ ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.union (re.range "a" "f") (re.range "A" "F")))) (str.to_re ":"))) (re.++ (str.to_re ":") (re.++ (str.to_re ":") ((_ re.loop 5 5) (re.++ ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.union (re.range "a" "f") (re.range "A" "F")))) (str.to_re ":")))))) (re.++ (re.opt ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.union (re.range "a" "f") (re.range "A" "F"))))) (re.++ (str.to_re ":") (re.++ (str.to_re ":") ((_ re.loop 4 4) (re.++ ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.union (re.range "a" "f") (re.range "A" "F")))) (str.to_re ":"))))))) (re.++ (re.opt (re.++ (re.opt (re.++ ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.union (re.range "a" "f") (re.range "A" "F")))) (str.to_re ":"))) ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.union (re.range "a" "f") (re.range "A" "F")))))) (re.++ (str.to_re ":") (re.++ (str.to_re ":") ((_ re.loop 3 3) (re.++ ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.union (re.range "a" "f") (re.range "A" "F")))) (str.to_re ":"))))))) (re.++ (re.opt (re.++ ((_ re.loop 0 2) (re.++ ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.union (re.range "a" "f") (re.range "A" "F")))) (str.to_re ":"))) ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.union (re.range "a" "f") (re.range "A" "F")))))) (re.++ (str.to_re ":") (re.++ (str.to_re ":") ((_ re.loop 2 2) (re.++ ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.union (re.range "a" "f") (re.range "A" "F")))) (str.to_re ":"))))))) (re.++ (re.opt (re.++ ((_ re.loop 0 3) (re.++ ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.union (re.range "a" "f") (re.range "A" "F")))) (str.to_re ":"))) ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.union (re.range "a" "f") (re.range "A" "F")))))) (re.++ (str.to_re ":") (re.++ (str.to_re ":") (re.++ ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.union (re.range "a" "f") (re.range "A" "F")))) (str.to_re ":")))))) (re.++ (re.opt (re.++ ((_ re.loop 0 4) (re.++ ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.union (re.range "a" "f") (re.range "A" "F")))) (str.to_re ":"))) ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.union (re.range "a" "f") (re.range "A" "F")))))) (re.++ (str.to_re ":") (str.to_re ":")))) (re.union (re.++ ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.union (re.range "a" "f") (re.range "A" "F")))) (re.++ (str.to_re ":") ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.union (re.range "a" "f") (re.range "A" "F")))))) (re.++ (re.union (re.union (re.union (re.range "0" "9") (re.++ (str.to_re "1") ((_ re.loop 2 2) (re.range "0" "9")))) (re.++ (str.to_re "2") (re.++ (re.range "0" "4") (re.range "0" "9")))) (re.++ (str.to_re "25") (re.range "0" "5"))) (re.++ (str.to_re ".") (re.++ (re.union (re.union (re.union (re.range "0" "9") (re.++ (str.to_re "1") ((_ re.loop 2 2) (re.range "0" "9")))) (re.++ (str.to_re "2") (re.++ (re.range "0" "4") (re.range "0" "9")))) (re.++ (str.to_re "25") (re.range "0" "5"))) (re.++ (str.to_re ".") (re.++ (re.union (re.union (re.union (re.range "0" "9") (re.++ (str.to_re "1") ((_ re.loop 2 2) (re.range "0" "9")))) (re.++ (str.to_re "2") (re.++ (re.range "0" "4") (re.range "0" "9")))) (re.++ (str.to_re "25") (re.range "0" "5"))) (re.++ (str.to_re ".") (re.union (re.union (re.union (re.range "0" "9") (re.++ (str.to_re "1") ((_ re.loop 2 2) (re.range "0" "9")))) (re.++ (str.to_re "2") (re.++ (re.range "0" "4") (re.range "0" "9")))) (re.++ (str.to_re "25") (re.range "0" "5"))))))))))) (re.++ (re.opt (re.++ ((_ re.loop 0 5) (re.++ ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.union (re.range "a" "f") (re.range "A" "F")))) (str.to_re ":"))) ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.union (re.range "a" "f") (re.range "A" "F")))))) (re.++ (str.to_re ":") (re.++ (str.to_re ":") ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.union (re.range "a" "f") (re.range "A" "F")))))))) (re.++ (re.opt (re.++ ((_ re.loop 0 5) (re.++ ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.union (re.range "a" "f") (re.range "A" "F")))) (str.to_re ":"))) ((_ re.loop 1 4) (re.union (re.range "0" "9") (re.union (re.range "a" "f") (re.range "A" "F")))))) (re.++ (str.to_re ":") (str.to_re ":")))) (re.++ (str.to_re "v") (re.++ (re.+ (re.union (re.range "0" "9") (re.union (re.range "a" "f") (re.range "A" "F")))) (re.++ (str.to_re ".") (re.+ (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (re.union (str.to_re "-") (re.union (str.to_re ".") (re.union (str.to_re "_") (re.union (str.to_re "~") (re.union (str.to_re "!") (re.union (str.to_re "$") (re.union (str.to_re "&") (re.union (str.to_re "&") (re.union (str.to_re "#") (re.union (str.to_re "39") (re.union (str.to_re ";") (re.union (str.to_re "(") (re.union (str.to_re ")") (re.union (str.to_re "*") (re.union (str.to_re "+") (re.union (str.to_re ",") (re.union (str.to_re ";") (re.union (str.to_re "=") (re.union (str.to_re "&") (re.union (str.to_re "#") (re.union (str.to_re "39") (re.union (str.to_re ";") (str.to_re ":"))))))))))))))))))))))))))))))) (str.to_re "]"))) (re.++ (re.union (re.union (re.union (re.range "0" "9") (re.++ (str.to_re "1") ((_ re.loop 2 2) (re.range "0" "9")))) (re.++ (str.to_re "2") (re.++ (re.range "0" "4") (re.range "0" "9")))) (re.++ (str.to_re "25") (re.range "0" "5"))) (re.++ (str.to_re ".") (re.++ (re.union (re.union (re.union (re.range "0" "9") (re.++ (str.to_re "1") ((_ re.loop 2 2) (re.range "0" "9")))) (re.++ (str.to_re "2") (re.++ (re.range "0" "4") (re.range "0" "9")))) (re.++ (str.to_re "25") (re.range "0" "5"))) (re.++ (str.to_re ".") (re.++ (re.union (re.union (re.union (re.range "0" "9") (re.++ (str.to_re "1") ((_ re.loop 2 2) (re.range "0" "9")))) (re.++ (str.to_re "2") (re.++ (re.range "0" "4") (re.range "0" "9")))) (re.++ (str.to_re "25") (re.range "0" "5"))) (re.++ (str.to_re ".") (re.union (re.union (re.union (re.range "0" "9") (re.++ (str.to_re "1") ((_ re.loop 2 2) (re.range "0" "9")))) (re.++ (str.to_re "2") (re.++ (re.range "0" "4") (re.range "0" "9")))) (re.++ (str.to_re "25") (re.range "0" "5")))))))))) (re.* (re.union (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (re.union (str.to_re "-") (re.union (str.to_re ".") (re.union (str.to_re "_") (re.union (str.to_re "~") (re.union (str.to_re "!") (re.union (str.to_re "$") (re.union (str.to_re "&") (re.union (str.to_re "&") (re.union (str.to_re "#") (re.union (str.to_re "39") (re.union (str.to_re ";") (re.union (str.to_re "(") (re.union (str.to_re ")") (re.union (str.to_re "*") (re.union (str.to_re "+") (re.union (str.to_re ",") (re.union (str.to_re ";") (re.union (str.to_re "=") (re.union (str.to_re "&") (re.union (str.to_re "#") (re.union (str.to_re "39") (str.to_re ";"))))))))))))))))))))))))) (re.++ (str.to_re "%") ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.union (re.range "a" "f") (re.range "A" "F")))))))) (re.opt (re.++ (str.to_re ":") (re.* (re.range "0" "9")))))) (re.* (re.++ (str.to_re "/") (re.* (re.union (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (re.union (str.to_re "-") (re.union (str.to_re ".") (re.union (str.to_re "_") (re.union (str.to_re "~") (re.union (str.to_re "!") (re.union (str.to_re "$") (re.union (str.to_re "&") (re.union (str.to_re "&") (re.union (str.to_re "#") (re.union (str.to_re "39") (re.union (str.to_re ";") (re.union (str.to_re "(") (re.union (str.to_re ")") (re.union (str.to_re "*") (re.union (str.to_re "+") (re.union (str.to_re ",") (re.union (str.to_re ";") (re.union (str.to_re "=") (re.union (str.to_re "&") (re.union (str.to_re "#") (re.union (str.to_re "39") (re.union (str.to_re ";") (re.union (str.to_re ":") (str.to_re "@"))))))))))))))))))))))))))) (re.++ (str.to_re "%") ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.union (re.range "a" "f") (re.range "A" "F")))))))))))) (re.++ (re.opt (str.to_re "/")) (re.opt (re.++ (re.+ (re.union (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (re.union (str.to_re "-") (re.union (str.to_re ".") (re.union (str.to_re "_") (re.union (str.to_re "~") (re.union (str.to_re "!") (re.union (str.to_re "$") (re.union (str.to_re "&") (re.union (str.to_re "&") (re.union (str.to_re "#") (re.union (str.to_re "39") (re.union (str.to_re ";") (re.union (str.to_re "(") (re.union (str.to_re ")") (re.union (str.to_re "*") (re.union (str.to_re "+") (re.union (str.to_re ",") (re.union (str.to_re ";") (re.union (str.to_re "=") (re.union (str.to_re "&") (re.union (str.to_re "#") (re.union (str.to_re "39") (re.union (str.to_re ";") (re.union (str.to_re ":") (str.to_re "@"))))))))))))))))))))))))))) (re.++ (str.to_re "%") ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.union (re.range "a" "f") (re.range "A" "F"))))))) (re.* (re.++ (str.to_re "/") (re.* (re.union (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (re.union (str.to_re "-") (re.union (str.to_re ".") (re.union (str.to_re "_") (re.union (str.to_re "~") (re.union (str.to_re "!") (re.union (str.to_re "$") (re.union (str.to_re "&") (re.union (str.to_re "&") (re.union (str.to_re "#") (re.union (str.to_re "39") (re.union (str.to_re ";") (re.union (str.to_re "(") (re.union (str.to_re ")") (re.union (str.to_re "*") (re.union (str.to_re "+") (re.union (str.to_re ",") (re.union (str.to_re ";") (re.union (str.to_re "=") (re.union (str.to_re "&") (re.union (str.to_re "#") (re.union (str.to_re "39") (re.union (str.to_re ";") (re.union (str.to_re ":") (str.to_re "@"))))))))))))))))))))))))))) (re.++ (str.to_re "%") ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.union (re.range "a" "f") (re.range "A" "F"))))))))))))) (re.++ (re.opt (re.++ (str.to_re "?") (re.* (re.union (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (re.union (str.to_re "-") (re.union (str.to_re ".") (re.union (str.to_re "_") (re.union (str.to_re "~") (re.union (str.to_re "!") (re.union (str.to_re "$") (re.union (str.to_re "&") (re.union (str.to_re "&") (re.union (str.to_re "#") (re.union (str.to_re "39") (re.union (str.to_re ";") (re.union (str.to_re "(") (re.union (str.to_re ")") (re.union (str.to_re "*") (re.union (str.to_re "+") (re.union (str.to_re ",") (re.union (str.to_re ";") (re.union (str.to_re "=") (re.union (str.to_re "&") (re.union (str.to_re "#") (re.union (str.to_re "39") (re.union (str.to_re ";") (re.union (str.to_re ":") (re.union (str.to_re "@") (re.union (str.to_re "/") (str.to_re "?"))))))))))))))))))))))))))))) (re.++ (str.to_re "%") ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.union (re.range "a" "f") (re.range "A" "F"))))))))) (re.opt (re.++ (str.to_re "#") (re.* (re.union (re.union (re.range "a" "z") (re.union (re.range "A" "Z") (re.union (re.range "0" "9") (re.union (str.to_re "-") (re.union (str.to_re ".") (re.union (str.to_re "_") (re.union (str.to_re "~") (re.union (str.to_re "!") (re.union (str.to_re "$") (re.union (str.to_re "&") (re.union (str.to_re "&") (re.union (str.to_re "#") (re.union (str.to_re "39") (re.union (str.to_re ";") (re.union (str.to_re "(") (re.union (str.to_re ")") (re.union (str.to_re "*") (re.union (str.to_re "+") (re.union (str.to_re ",") (re.union (str.to_re ";") (re.union (str.to_re "=") (re.union (str.to_re "&") (re.union (str.to_re "#") (re.union (str.to_re "39") (re.union (str.to_re ";") (re.union (str.to_re ":") (re.union (str.to_re "@") (re.union (str.to_re "/") (str.to_re "?"))))))))))))))))))))))))))))) (re.++ (str.to_re "%") ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.union (re.range "a" "f") (re.range "A" "F")))))))))))))) (str.to_re ""))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)