; COMMAND-LINE: --cegqi-inf-int --cegqi-inf-real
; EXPECT: unsat
(set-info :smt-lib-version 2.6)
(set-logic LRA)
(set-info :source |
   Monniaux, David; Quantifier Elimination by Lazy Model Enumeration, CAV 2010
|)
(set-info :category "random")
; ./Mjollnir_examples/B5/formula_171.m
(set-info :status unsat)
(assert
 (forall ((|v17:0| Real) )(forall ((|v16:1| Real) )(forall ((|v15:2| Real) )(forall ((|v14:3| Real) )(forall ((|v13:4| Real) )(forall ((|v12:5| Real) )(exists ((|v11:6| Real) )(exists ((|v10:7| Real) )(exists ((|v9:8| Real) )(exists ((|v8:9| Real) )(exists ((|v7:10| Real) )(exists ((|v6:11| Real) )(forall ((|v5:12| Real) )(forall ((|v4:13| Real) )(forall ((|v3:14| Real) )(forall ((|v2:15| Real) )(forall ((|v1:16| Real) )(forall ((|v0:17| Real) )(let ((?x104 10))
(let ((?x10 8))
(let ((?x457 (* ?x10 |v0:17|)))
(let ((?x538 (+ (+ (* (- 7) |v5:12|) (* 14 |v10:7|)) (* (- 19) |v15:2|))))
(let ((?x49 19))
(let ((?x27 (- 15)))
(let ((?x310 (* ?x27 |v10:7|)))
(let ((?x532 (+ (+ (+ (* 7 |v12:5|) (* (- 20) |v4:13|)) ?x310) (* 20 |v16:1|))))
(let ((?x59 (- 16)))
(let ((?x85 (- 13)))
(let ((?x187 (* ?x85 |v3:14|)))
(let ((?x524 (+ (+ (* (- 20) |v5:12|) (* 4 |v13:4|)) (* (- 10) |v2:15|))))
(let ((?x266 18))
(let ((?x170 (- 14)))
(let ((?x308 (* ?x170 |v16:1|)))
(let ((?x520 (+ (+ (+ (* (- 19) |v2:15|) (* 13 |v7:10|)) ?x308) (* (- 12) |v1:16|))))
(let (($x542 (and (and (<= ?x520 ?x266) (<= (+ ?x524 ?x187) ?x59)) (and (<= ?x532 ?x49) (<= (+ ?x538 ?x457) ?x104)))))
(let ((?x158 (- 11)))
(let ((?x79 6))
(let ((?x290 (* ?x79 |v3:14|)))
(let ((?x512 (+ (+ (+ (* (- 8) |v9:8|) (* (- 9) |v0:17|)) ?x290) (* (- 18) |v8:9|))))
(let ((?x504 (+ (+ (* (- 18) |v12:5|) (* (- 18) |v10:7|)) (* 15 |v5:12|))))
(let ((?x14 (- 18)))
(let ((?x100 7))
(let ((?x471 (* ?x100 |v6:11|)))
(let (($x499 (<= (+ (+ (+ (* (- 8) |v6:11|) (* ?x100 |v2:15|)) |v17:0|) ?x471) ?x14)))
(let ((?x177 (- 3)))
(let ((?x490 (+ (+ (* (- 19) |v14:3|) (* (- 8) |v13:4|)) (* ?x158 |v16:1|))))
(let (($x515 (and (or (<= (+ ?x490 (* (- 7) |v10:7|)) ?x177) $x499) (or (<= (+ ?x504 (* ?x79 |v0:17|)) ?x266) (<= ?x512 ?x158)))))
(let ((?x479 (+ (+ (* 13 |v4:13|) (* (- 17) |v4:13|)) (* 11 |v3:14|))))
(let ((?x110 3))
(let ((?x33 (* ?x14 |v9:8|)))
(let (($x474 (<= (+ (+ (+ (* ?x110 |v0:17|) (* 16 |v7:10|)) ?x471) ?x33) ?x110)))
(let ((?x233 1))
(let ((?x464 (+ (+ (* ?x158 |v17:0|) (* 4 |v4:13|)) (* (- 5) |v8:9|))))
(let ((?x24 12))
(let ((?x458 (+ (+ (+ (* (- 12) |v5:12|) (* 14 |v16:1|)) |v3:14|) ?x457)))
(let (($x484 (or (and (<= ?x458 ?x24) (<= (+ ?x464 (* (- 12) |v4:13|)) ?x233)) (and $x474 (<= (+ ?x479 (* (- 4) |v12:5|)) ?x59)))))
(let ((?x447 (+ (+ (* (- 20) |v14:3|) (* (- 19) |v16:1|)) (* 2 |v2:15|))))
(let ((?x439 (+ (+ (* ?x10 |v13:4|) (* 4 |v13:4|)) (* (- 7) |v11:6|))))
(let (($x451 (or (<= (+ ?x439 (* (- 5) |v7:10|)) ?x24) (<= (+ ?x447 (* ?x170 |v14:3|)) ?x110))))
(let ((?x62 (- 17)))
(let ((?x430 (+ (+ (* (- 1) |v11:6|) (* 5 |v14:3|)) (* ?x104 |v17:0|))))
(let ((?x190 11))
(let ((?x424 (+ (+ (+ (* ?x190 |v5:12|) (* (- 10) |v5:12|)) (* ?x27 |v14:3|)) (* 2 |v12:5|))))
(let (($x485 (or (and (and (<= ?x424 ?x190) (<= (+ ?x430 (* ?x24 |v16:1|)) ?x62)) $x451) $x484)))
(let ((?x164 4))
(let ((?x415 (+ (+ (* ?x104 |v15:2|) (* (- 6) |v7:10|)) (* 17 |v1:16|))))
(let ((?x407 (+ (+ (+ (* ?x59 |v11:6|) (* ?x10 |v14:3|)) (* ?x10 |v7:10|)) (* (- 6) |v8:9|))))
(let ((?x52 16))
(let ((?x395 (+ (+ (* (- 5) |v12:5|) (* ?x104 |v15:2|)) (* (- 7) |v1:16|))))
(let ((?x121 (- 8)))
(let ((?x389 (+ (+ (+ (* (- 9) |v13:4|) (* ?x110 |v0:17|)) (* ?x59 |v17:0|)) (* ?x190 |v4:13|))))
(let ((?x346 (* ?x27 |v16:1|)))
(let ((?x381 (+ (+ (+ (* ?x158 |v12:5|) (* ?x121 |v16:1|)) (* 5 |v0:17|)) ?x346)))
(let (($x410 (and (or (<= ?x381 ?x104) (<= ?x389 ?x121)) (or (<= (+ ?x395 (* 9 |v9:8|)) ?x52) (<= ?x407 ?x110)))))
(let ((?x370 (+ (+ (* (- 2) |v14:3|) (* (- 1) |v15:2|)) (* ?x85 |v6:11|))))
(let ((?x97 (- 2)))
(let ((?x361 (+ (+ (* ?x27 |v15:2|) (* (- 20) |v4:13|)) (* 20 |v9:8|))))
(let (($x374 (or (<= (+ ?x361 (* (- 9) |v7:10|)) ?x97) (<= (+ ?x370 (* (- 19) |v17:0|)) ?x52))))
(let ((?x195 20))
(let ((?x354 (+ (+ (+ (* ?x49 |v11:6|) (* ?x59 |v2:15|)) (* 17 |v8:9|)) |v17:0|)))
(let ((?x347 (+ (+ (+ (* (- 7) |v7:10|) (* ?x104 |v10:7|)) (* ?x104 |v6:11|)) ?x346)))
(let (($x419 (or (and (or (or (<= ?x347 ?x100) (<= ?x354 ?x195)) $x374) $x410) (<= (+ ?x415 (* ?x27 |v1:16|)) ?x164))))
(let ((?x151 (- 20)))
(let ((?x333 (* ?x151 |v5:12|)))
(let (($x335 (<= (+ (+ (+ (* ?x104 |v9:8|) (* ?x151 |v3:14|)) (* ?x110 |v13:4|)) ?x333) ?x151)))
(let ((?x327 (+ (+ (+ (* ?x158 |v5:12|) (* ?x266 |v14:3|)) (* (- 12) |v14:3|)) (* 5 |v1:16|))))
(let ((?x314 (* ?x14 |v13:4|)))
(let (($x319 (<= (+ (+ (+ (* (- 19) |v4:13|) ?x314) (* ?x62 |v15:2|)) ?x314) ?x164)))
(let ((?x311 (+ (+ (+ (* (- 19) |v6:11|) (* 17 |v0:17|)) ?x308) ?x310)))
(let ((?x302 (+ (+ (+ (* ?x121 |v9:8|) (* ?x97 |v3:14|)) (* ?x59 |v11:6|)) (* ?x158 |v9:8|))))
(let ((?x135 (- 10)))
(let ((?x293 (+ (+ (+ (* ?x27 |v14:3|) (* ?x190 |v7:10|)) ?x290) (* (- 5) |v3:14|))))
(let ((?x88 (- 5)))
(let (($x288 (<= (+ (+ (+ (* ?x177 |v1:16|) (* ?x135 |v4:13|)) (* ?x135 |v7:10|)) |v14:3|) ?x88)))
(let (($x338 (and (and (and $x288 (<= ?x293 ?x135)) (<= ?x302 ?x59)) (and (or (<= ?x311 ?x158) $x319) (or (<= ?x327 ?x233) $x335)))))
(let ((?x278 (+ (+ (+ (* ?x27 |v12:5|) (* ?x85 |v9:8|)) (* ?x49 |v5:12|)) (* ?x49 |v15:2|))))
(let ((?x270 (+ (+ (+ (* ?x10 |v14:3|) (* 17 |v6:11|)) (* ?x266 |v7:10|)) (* ?x24 |v9:8|))))
(let ((?x41 (- 4)))
(let ((?x259 (+ (+ (+ (* ?x100 |v8:9|) (* ?x177 |v6:11|)) (* 2 |v4:13|)) (* 13 |v12:5|))))
(let ((?x249 (+ (+ (* 13 |v1:16|) (* ?x151 |v3:14|)) (* 17 |v15:2|))))
(let (($x281 (and (and (<= (+ ?x249 (* ?x62 |v1:16|)) ?x110) (<= ?x259 ?x41)) (and (<= ?x270 ?x104) (<= ?x278 ?x24)))))
(let ((?x228 15))
(let ((?x241 (+ (+ (+ (* ?x88 |v5:12|) (* ?x49 |v10:7|)) (* ?x27 |v14:3|)) (* 17 |v7:10|))))
(let ((?x232 (+ (+ (+ (* ?x24 |v17:0|) (* ?x135 |v4:13|)) (* ?x228 |v17:0|)) (* ?x88 |v1:16|))))
(let ((?x117 (- 19)))
(let ((?x220 (* ?x117 |v2:15|)))
(let (($x222 (<= (+ (+ (+ (* ?x121 |v17:0|) (* ?x190 |v5:12|)) (* ?x190 |v7:10|)) ?x220) ?x104)))
(let ((?x114 (- 1)))
(let ((?x115 (* ?x114 |v1:16|)))
(let ((?x212 (+ (+ (* 0 |v15:2|) (* 5 |v8:9|)) (* ?x110 |v10:7|))))
(let (($x244 (and (and (<= (+ ?x212 ?x115) ?x10) $x222) (and (<= ?x232 ?x233) (<= ?x241 ?x228)))))
(let ((?x128 2))
(let ((?x202 (+ (+ (+ (* ?x195 |v10:7|) (* ?x121 |v10:7|)) (* ?x135 |v4:13|)) (* 17 |v12:5|))))
(let (($x193 (<= (+ (+ (+ (* ?x151 |v12:5|) (* ?x114 |v4:13|)) ?x187) (* ?x190 |v12:5|)) ?x110)))
(let ((?x181 (+ (+ (+ (* ?x110 |v6:11|) (* ?x164 |v15:2|)) (* ?x177 |v11:6|)) (* ?x10 |v9:8|))))
(let (($x173 (<= (+ (+ (+ (* ?x164 |v10:7|) |v9:8|) (* ?x104 |v5:12|)) (* ?x170 |v6:11|)) ?x24)))
(let ((?x161 14))
(let ((?x160 (+ (+ (+ (* ?x151 |v8:9|) (* ?x128 |v16:1|)) (* ?x14 |v12:5|)) (* ?x158 |v0:17|))))
(let (($x206 (and (<= ?x160 ?x161) (or (or $x173 (<= ?x181 ?x158)) (and $x193 (<= ?x202 ?x128))))))
(let ((?x144 (+ (+ (+ (* ?x135 |v1:16|) (* ?x14 |v4:13|)) (* ?x10 |v12:5|)) (* 0 |v17:0|))))
(let ((?x132 (+ (+ (+ (* ?x121 |v8:9|) (* 5 |v17:0|)) (* ?x128 |v13:4|)) (* 13 |v13:4|))))
(let (($x118 (<= (+ (+ (+ (* ?x104 |v15:2|) (* ?x41 |v7:10|)) (* ?x110 |v6:11|)) ?x115) ?x117)))
(let ((?x98 (* ?x97 |v14:3|)))
(let ((?x99 (+ (+ (+ (* ?x85 |v17:0|) (* ?x88 |v15:2|)) (* 0 |v1:16|)) ?x98)))
(let ((?x78 (+ (+ (+ (* ?x14 |v7:10|) (* (- 7) |v0:17|)) |v3:14|) (* (- 12) |v17:0|))))
(let ((?x61 (+ (+ (+ (* ?x49 |v8:9|) (* ?x52 |v10:7|)) (* ?x24 |v1:16|)) (* ?x59 |v1:16|))))
(let ((?x36 13))
(let (($x44 (<= (+ (+ (+ (* ?x10 |v11:6|) ?x33) (* ?x36 |v15:2|)) (* ?x41 |v2:15|)) ?x36)))
(let ((?x26 (+ (+ (+ (* ?x10 |v16:1|) (* ?x14 |v5:12|)) (* 17 |v10:7|)) (* ?x24 |v13:4|))))
(let (($x148 (or (and (and (<= ?x26 ?x27) $x44) (and (<= ?x61 ?x62) (<= ?x78 ?x79))) (or (and (<= ?x99 ?x100) $x118) (and (<= ?x132 ?x41) (<= ?x144 ?x104))))))
(or (and (and $x148 $x206) (and (or $x244 $x281) $x338)) (and $x419 (or $x485 (and $x515 $x542)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
)
)
)
)
)
)
)
)
)
)
)
)
)
)
)
)
)
)
(check-sat)
(exit)
