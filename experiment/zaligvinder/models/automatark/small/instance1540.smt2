(set-logic QF_SLIA)
(set-option :produce-models true)
(declare-const X String)
; toolbarplace\x2Ecom.*Host\x3A\dgpstool\u{2e}globaladserver\u{2e}com
(assert (str.in_re X (re.++ (str.to_re "toolbarplace.com") (re.* re.allchar) (str.to_re "Host:") (re.range "0" "9") (str.to_re "gpstool.globaladserver.com\u{0a}"))))
; too[^\n\r]*User-Agent\x3A\sHost\x3A.*IP-WindowsAttachedPalas\x2Estarware\x2Ecom\x2Fdp\x2Fsearch\?x=
(assert (str.in_re X (re.++ (str.to_re "too") (re.* (re.union (str.to_re "\u{0a}") (str.to_re "\u{0d}"))) (str.to_re "User-Agent:") (re.union (str.to_re " ") (str.to_re "\u{09}") (str.to_re "\u{0a}") (str.to_re "\u{0c}") (str.to_re "\u{0d}")) (str.to_re "Host:") (re.* re.allchar) (str.to_re "IP-WindowsAttachedPalas.starware.com/dp/search?x=\u{0a}"))))
; [du]{2}|[gu]{2}|[tu]{2}|[ds]{2}|[gs]{2}|[da]{2}|[ga]{2}|[ta]{2}|[dq]{2}|[gq]{2}|[tq]{2}|[DU]{2}|[GU]{2}|[TU]{2}|[DS]{2}|[GS]{2}|[DA]{2}|[GA]{2}|[TA]{2}|[DQ]{2}|[GQ]{2}|[TQ]{2}
(assert (not (str.in_re X (re.union ((_ re.loop 2 2) (re.union (str.to_re "d") (str.to_re "u"))) ((_ re.loop 2 2) (re.union (str.to_re "g") (str.to_re "u"))) ((_ re.loop 2 2) (re.union (str.to_re "t") (str.to_re "u"))) ((_ re.loop 2 2) (re.union (str.to_re "d") (str.to_re "s"))) ((_ re.loop 2 2) (re.union (str.to_re "g") (str.to_re "s"))) ((_ re.loop 2 2) (re.union (str.to_re "d") (str.to_re "a"))) ((_ re.loop 2 2) (re.union (str.to_re "g") (str.to_re "a"))) ((_ re.loop 2 2) (re.union (str.to_re "t") (str.to_re "a"))) ((_ re.loop 2 2) (re.union (str.to_re "d") (str.to_re "q"))) ((_ re.loop 2 2) (re.union (str.to_re "g") (str.to_re "q"))) ((_ re.loop 2 2) (re.union (str.to_re "t") (str.to_re "q"))) ((_ re.loop 2 2) (re.union (str.to_re "D") (str.to_re "U"))) ((_ re.loop 2 2) (re.union (str.to_re "G") (str.to_re "U"))) ((_ re.loop 2 2) (re.union (str.to_re "T") (str.to_re "U"))) ((_ re.loop 2 2) (re.union (str.to_re "D") (str.to_re "S"))) ((_ re.loop 2 2) (re.union (str.to_re "G") (str.to_re "S"))) ((_ re.loop 2 2) (re.union (str.to_re "D") (str.to_re "A"))) ((_ re.loop 2 2) (re.union (str.to_re "G") (str.to_re "A"))) ((_ re.loop 2 2) (re.union (str.to_re "T") (str.to_re "A"))) ((_ re.loop 2 2) (re.union (str.to_re "D") (str.to_re "Q"))) ((_ re.loop 2 2) (re.union (str.to_re "G") (str.to_re "Q"))) (re.++ ((_ re.loop 2 2) (re.union (str.to_re "T") (str.to_re "Q"))) (str.to_re "\u{0a}"))))))
; securityOmFkbWluADROARad\x2Emokead\x2Ecom\x3C\x2Fchat\x3E
(assert (str.in_re X (str.to_re "securityOmFkbWluADROARad.mokead.com</chat>\u{0a}")))
(check-sat)
