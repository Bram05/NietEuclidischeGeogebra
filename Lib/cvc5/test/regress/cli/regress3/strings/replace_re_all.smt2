; COMMAND-LINE: --strings-exp
(set-option :incremental true)
(set-logic SLIA)
(declare-const x String)
(declare-const y String)

(push)
(assert (= x (str.replace_re_all "ZABCZACZADDC" (re.++ (str.to_re "A") re.all (str.to_re "C")) y)))
(assert (= x "ZFOOZFXOZFOO"))
(set-info :status unsat)
(check-sat)
(pop)

(push)
(assert (= "ZFOOZFXOZFOO" (str.replace_re_all x (re.++ (str.to_re "A") re.all (str.to_re "C")) "FOO")))
(assert (not (= x "ZFOOZFXOZFOO")))
(set-info :status sat)
(check-sat)
(pop)

(push)
(assert (= "ZFOOZZFOO" (str.replace_re_all (str.++ "ZACZ" x "ZADDC") (re.++ (str.to_re "A") re.all (str.to_re "C")) "FOO")))
(set-info :status sat)
(check-sat)
(pop)

(push)
(assert (= "ZFOOZZFOO" (str.replace_re_all (str.++ "ZACXZ" x "ZADDC") (re.++ (str.to_re "A") re.all (str.to_re "C")) "FOO")))
(set-info :status unsat)
(check-sat)
(pop)
