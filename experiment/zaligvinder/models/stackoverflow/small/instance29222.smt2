;test regex ((([mM]{1,4})([\/]{1})([dD]{1,4})([\/]{1})([yY]{1,4}))|(([mM]{1,4})([\-]{1})([dD]{1,4})([\-]{1})([yY]{1,4}))|(([mM]{1,4})([\:]{1})([dD]{1,4})([\:]{1})([yY]{1,4})))|((([dD]{1,4})([\/]{1})([mM]{1,4})([\/]{1})([yY]{1,4}))|(([dD]{1,4})([\-]{1})([mM]{1,4})([\-]{1})([yY]{1,4}))|(([dD]{1,4})([\:]{1})([mM]{1,4})([\:]{1})([yY]{1,4})))|((([yY]{1,4})([\/]{1})([mM]{1,4})([\/]{1})([dD]{1,4}))|(([yY]{1,4})([\-]{1})([mM]{1,4})([\-]{1})([dD]{1,4}))|(([yY]{1,4})([\:]{1})([mM]{1,4})([\:]{1})([dD]{1,4})))|((([yY]{1,4})([\/]{1})([dD]{1,4})([\/]{1})([mM]{1,4}))|(([yY]{1,4})([\-]{1})([dD]{1,4})([\-]{1})([mM]{1,4}))|(([yY]{1,4})([\:]{1})([dD]{1,4})([\:]{1})([mM]{1,4})))
(declare-const X String)
(assert (str.in_re X (re.union (re.union (re.union (re.union (re.union (re.++ ((_ re.loop 1 4) (re.union (str.to_re "m") (str.to_re "M"))) (re.++ ((_ re.loop 1 1) (str.to_re "/")) (re.++ ((_ re.loop 1 4) (re.union (str.to_re "d") (str.to_re "D"))) (re.++ ((_ re.loop 1 1) (str.to_re "/")) ((_ re.loop 1 4) (re.union (str.to_re "y") (str.to_re "Y"))))))) (re.++ ((_ re.loop 1 4) (re.union (str.to_re "m") (str.to_re "M"))) (re.++ ((_ re.loop 1 1) (str.to_re "-")) (re.++ ((_ re.loop 1 4) (re.union (str.to_re "d") (str.to_re "D"))) (re.++ ((_ re.loop 1 1) (str.to_re "-")) ((_ re.loop 1 4) (re.union (str.to_re "y") (str.to_re "Y")))))))) (re.++ ((_ re.loop 1 4) (re.union (str.to_re "m") (str.to_re "M"))) (re.++ ((_ re.loop 1 1) (str.to_re ":")) (re.++ ((_ re.loop 1 4) (re.union (str.to_re "d") (str.to_re "D"))) (re.++ ((_ re.loop 1 1) (str.to_re ":")) ((_ re.loop 1 4) (re.union (str.to_re "y") (str.to_re "Y")))))))) (re.union (re.union (re.++ ((_ re.loop 1 4) (re.union (str.to_re "d") (str.to_re "D"))) (re.++ ((_ re.loop 1 1) (str.to_re "/")) (re.++ ((_ re.loop 1 4) (re.union (str.to_re "m") (str.to_re "M"))) (re.++ ((_ re.loop 1 1) (str.to_re "/")) ((_ re.loop 1 4) (re.union (str.to_re "y") (str.to_re "Y"))))))) (re.++ ((_ re.loop 1 4) (re.union (str.to_re "d") (str.to_re "D"))) (re.++ ((_ re.loop 1 1) (str.to_re "-")) (re.++ ((_ re.loop 1 4) (re.union (str.to_re "m") (str.to_re "M"))) (re.++ ((_ re.loop 1 1) (str.to_re "-")) ((_ re.loop 1 4) (re.union (str.to_re "y") (str.to_re "Y")))))))) (re.++ ((_ re.loop 1 4) (re.union (str.to_re "d") (str.to_re "D"))) (re.++ ((_ re.loop 1 1) (str.to_re ":")) (re.++ ((_ re.loop 1 4) (re.union (str.to_re "m") (str.to_re "M"))) (re.++ ((_ re.loop 1 1) (str.to_re ":")) ((_ re.loop 1 4) (re.union (str.to_re "y") (str.to_re "Y"))))))))) (re.union (re.union (re.++ ((_ re.loop 1 4) (re.union (str.to_re "y") (str.to_re "Y"))) (re.++ ((_ re.loop 1 1) (str.to_re "/")) (re.++ ((_ re.loop 1 4) (re.union (str.to_re "m") (str.to_re "M"))) (re.++ ((_ re.loop 1 1) (str.to_re "/")) ((_ re.loop 1 4) (re.union (str.to_re "d") (str.to_re "D"))))))) (re.++ ((_ re.loop 1 4) (re.union (str.to_re "y") (str.to_re "Y"))) (re.++ ((_ re.loop 1 1) (str.to_re "-")) (re.++ ((_ re.loop 1 4) (re.union (str.to_re "m") (str.to_re "M"))) (re.++ ((_ re.loop 1 1) (str.to_re "-")) ((_ re.loop 1 4) (re.union (str.to_re "d") (str.to_re "D")))))))) (re.++ ((_ re.loop 1 4) (re.union (str.to_re "y") (str.to_re "Y"))) (re.++ ((_ re.loop 1 1) (str.to_re ":")) (re.++ ((_ re.loop 1 4) (re.union (str.to_re "m") (str.to_re "M"))) (re.++ ((_ re.loop 1 1) (str.to_re ":")) ((_ re.loop 1 4) (re.union (str.to_re "d") (str.to_re "D"))))))))) (re.union (re.union (re.++ ((_ re.loop 1 4) (re.union (str.to_re "y") (str.to_re "Y"))) (re.++ ((_ re.loop 1 1) (str.to_re "/")) (re.++ ((_ re.loop 1 4) (re.union (str.to_re "d") (str.to_re "D"))) (re.++ ((_ re.loop 1 1) (str.to_re "/")) ((_ re.loop 1 4) (re.union (str.to_re "m") (str.to_re "M"))))))) (re.++ ((_ re.loop 1 4) (re.union (str.to_re "y") (str.to_re "Y"))) (re.++ ((_ re.loop 1 1) (str.to_re "-")) (re.++ ((_ re.loop 1 4) (re.union (str.to_re "d") (str.to_re "D"))) (re.++ ((_ re.loop 1 1) (str.to_re "-")) ((_ re.loop 1 4) (re.union (str.to_re "m") (str.to_re "M")))))))) (re.++ ((_ re.loop 1 4) (re.union (str.to_re "y") (str.to_re "Y"))) (re.++ ((_ re.loop 1 1) (str.to_re ":")) (re.++ ((_ re.loop 1 4) (re.union (str.to_re "d") (str.to_re "D"))) (re.++ ((_ re.loop 1 1) (str.to_re ":")) ((_ re.loop 1 4) (re.union (str.to_re "m") (str.to_re "M")))))))))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)