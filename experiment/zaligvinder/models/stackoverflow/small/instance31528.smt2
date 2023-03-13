;test regex (?:[0-9\u0660-\u0669\u06F0-\u06F9\u07C0-\u07C9\u0966-\u096F\u09E6-\u09EF\u0A66-\u0A6F\u0AE6-\u0AEF\u0B66-\u0B6F\u0BE6-\u0BEF\u0C66-\u0C6F\u0CE6-\u0CEF\u0D66-\u0D6F\u0DE6-\u0DEF\u0E50-\u0E59\u0ED0-\u0ED9\u0F20-\u0F29\u1040-\u1049\u1090-\u1099\u17E0-\u17E9\u1810-\u1819\u1946-\u194F\u19D0-\u19D9\u1A80-\u1A89\u1A90-\u1A99\u1B50-\u1B59\u1BB0-\u1BB9\u1C40-\u1C49\u1C50-\u1C59\uA620-\uA629\uA8D0-\uA8D9\uA900-\uA909\uA9D0-\uA9D9\uA9F0-\uA9F9\uAA50-\uAA59\uABF0-\uABF9\uFF10-\uFF19]{2,4}(?: |$)){4}
(declare-const X String)
(assert (str.in_re X ((_ re.loop 4 4) (re.++ ((_ re.loop 2 4) (re.union (re.range "0" "9") (re.union (re.range "\u{0660}" "\u{0669}") (re.union (re.range "\u{06f0}" "\u{06f9}") (re.union (re.range "\u{07c0}" "\u{07c9}") (re.union (re.range "\u{0966}" "\u{096f}") (re.union (re.range "\u{09e6}" "\u{09ef}") (re.union (re.range "\u{0a66}" "\u{0a6f}") (re.union (re.range "\u{0ae6}" "\u{0aef}") (re.union (re.range "\u{0b66}" "\u{0b6f}") (re.union (re.range "\u{0be6}" "\u{0bef}") (re.union (re.range "\u{0c66}" "\u{0c6f}") (re.union (re.range "\u{0ce6}" "\u{0cef}") (re.union (re.range "\u{0d66}" "\u{0d6f}") (re.union (re.range "\u{0de6}" "\u{0def}") (re.union (re.range "\u{0e50}" "\u{0e59}") (re.union (re.range "\u{0ed0}" "\u{0ed9}") (re.union (re.range "\u{0f20}" "\u{0f29}") (re.union (re.range "\u{1040}" "\u{1049}") (re.union (re.range "\u{1090}" "\u{1099}") (re.union (re.range "\u{17e0}" "\u{17e9}") (re.union (re.range "\u{1810}" "\u{1819}") (re.union (re.range "\u{1946}" "\u{194f}") (re.union (re.range "\u{19d0}" "\u{19d9}") (re.union (re.range "\u{1a80}" "\u{1a89}") (re.union (re.range "\u{1a90}" "\u{1a99}") (re.union (re.range "\u{1b50}" "\u{1b59}") (re.union (re.range "\u{1bb0}" "\u{1bb9}") (re.union (re.range "\u{1c40}" "\u{1c49}") (re.union (re.range "\u{1c50}" "\u{1c59}") (re.union (re.range "\u{a620}" "\u{a629}") (re.union (re.range "\u{a8d0}" "\u{a8d9}") (re.union (re.range "\u{a900}" "\u{a909}") (re.union (re.range "\u{a9d0}" "\u{a9d9}") (re.union (re.range "\u{a9f0}" "\u{a9f9}") (re.union (re.range "\u{aa50}" "\u{aa59}") (re.union (re.range "\u{abf0}" "\u{abf9}") (re.range "\u{ff10}" "\u{ff19}")))))))))))))))))))))))))))))))))))))) (re.union (str.to_re " ") (str.to_re ""))))))
; sanitize danger characters:  < > ' " \ / &
(assert (not (str.in_re X (re.* (re.union (str.to_re "\u{3c}") (str.to_re "\u{3e}") (str.to_re "\u{27}") (str.to_re "\u{22}") (str.to_re "\u{5c}") (str.to_re "\u{2f}") (str.to_re "\u{26}"))))))
(assert (< 20 (str.len X)))
(check-sat)
(get-model)