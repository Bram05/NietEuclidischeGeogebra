(set-option :incremental false)
(set-info :status sat)
(set-logic QF_BV)
(declare-fun v0 () (_ BitVec 4))
(declare-fun v1 () (_ BitVec 4))
(check-sat-assuming ( (let ((_let_0 ((_ extract 3 2) v1))) (let ((_let_1 ((_ zero_extend 3) (ite (= (_ bv3 4) ((_ zero_extend 0) v0)) (_ bv1 1) (_ bv0 1))))) (let ((_let_2 ((_ repeat 1) (bvsub (bvnot v0) (bvnot v0))))) (let ((_let_3 (bvlshr _let_2 (bvadd (bvnot v0) (_ bv9 4))))) (let ((_let_4 (bvand (_ bv12 4) v0))) (let ((_let_5 (bvnor (bvadd (bvnot v0) (_ bv9 4)) _let_3))) (let ((_let_6 (bvneg _let_0))) (let ((_let_7 (ite (bvugt ((_ sign_extend 3) (ite (bvuge (_ bv9 4) (bvnot v0)) (_ bv1 1) (_ bv0 1))) (bvmul (bvnot _let_2) ((_ zero_extend 3) (ite (bvsle v0 ((_ zero_extend 3) (ite (bvule (_ bv9 4) (_ bv12 4)) (_ bv1 1) (_ bv0 1)))) (_ bv1 1) (_ bv0 1))))) (_ bv1 1) (_ bv0 1)))) (let ((_let_8 (bvlshr (_ bv3 4) _let_4))) (let ((_let_9 (bvslt _let_0 _let_6))) (let ((_let_10 (bvsgt (ite (bvuge (_ bv9 4) (bvnot v0)) (_ bv1 1) (_ bv0 1)) _let_7))) (let ((_let_11 ((_ zero_extend 3) ((_ rotate_right 0) (ite (bvule (_ bv9 4) (_ bv12 4)) (_ bv1 1) (_ bv0 1)))))) (let ((_let_12 (bvsge (bvmul (bvnot _let_2) ((_ zero_extend 3) (ite (bvsle v0 ((_ zero_extend 3) (ite (bvule (_ bv9 4) (_ bv12 4)) (_ bv1 1) (_ bv0 1)))) (_ bv1 1) (_ bv0 1)))) (_ bv9 4)))) (let ((_let_13 (bvuge (bvsub (bvnot v0) (bvnot v0)) _let_1))) (let ((_let_14 ((_ sign_extend 3) (ite (= (_ bv3 4) ((_ zero_extend 0) v0)) (_ bv1 1) (_ bv0 1))))) (let ((_let_15 (bvuge (bvadd (bvnot v0) (_ bv9 4)) _let_14))) (let ((_let_16 (= _let_2 ((_ zero_extend 3) (ite (bvuge (_ bv9 4) (bvnot v0)) (_ bv1 1) (_ bv0 1)))))) (let ((_let_17 (bvuge _let_1 _let_4))) (let ((_let_18 (bvuge v1 ((_ zero_extend 3) (ite (bvsle v0 ((_ zero_extend 3) (ite (bvule (_ bv9 4) (_ bv12 4)) (_ bv1 1) (_ bv0 1)))) (_ bv1 1) (_ bv0 1)))))) (let ((_let_19 (bvsle (_ bv9 4) _let_11))) (let ((_let_20 ((_ sign_extend 3) ((_ rotate_right 0) (ite (bvule (_ bv9 4) (_ bv12 4)) (_ bv1 1) (_ bv0 1)))))) (let ((_let_21 (bvule ((_ zero_extend 2) _let_0) _let_3))) (let ((_let_22 (bvsgt (bvsub (_ bv9 4) (_ bv3 4)) (bvsub (bvnot v0) (bvnot v0))))) (let ((_let_23 (bvslt (bvadd ((_ zero_extend 0) v0) _let_1) _let_5))) (let ((_let_24 ((_ sign_extend 3) _let_7))) (let ((_let_25 (bvule (_ bv1 4) _let_8))) (let ((_let_26 (bvule (bvsub (bvnot v0) (bvnot v0)) _let_2))) (let ((_let_27 (distinct (bvnot v0) _let_3))) (let ((_let_28 (not _let_18))) (let ((_let_29 (not (bvsle v1 ((_ zero_extend 0) v0))))) (let ((_let_30 (not (distinct (ite (= (_ bv1 1) ((_ extract 0 0) (bvadd (bvnot v0) (_ bv9 4)))) (ite (= (_ bv1 1) ((_ extract 0 0) (_ bv12 4))) (bvnot v0) (_ bv9 4)) (_ bv1 4)) _let_11)))) (let ((_let_31 (not (distinct _let_3 _let_24)))) (let ((_let_32 (not _let_25))) (let ((_let_33 (not (bvuge ((_ sign_extend 0) (_ bv9 4)) (bvmul (bvnot _let_2) ((_ zero_extend 3) (ite (bvsle v0 ((_ zero_extend 3) (ite (bvule (_ bv9 4) (_ bv12 4)) (_ bv1 1) (_ bv0 1)))) (_ bv1 1) (_ bv0 1)))))))) (let ((_let_34 (not _let_27))) (let ((_let_35 (not (bvslt ((_ sign_extend 2) (ite (bvuge (_ bv9 4) (bvadd (bvnot v0) (_ bv9 4))) (_ bv1 1) (_ bv0 1))) ((_ extract 3 1) (_ bv12 4)))))) (let ((_let_36 (not (bvugt _let_8 _let_24)))) (let ((_let_37 (not _let_23))) (and (or (bvuge ((_ sign_extend 0) (_ bv9 4)) (bvmul (bvnot _let_2) ((_ zero_extend 3) (ite (bvsle v0 ((_ zero_extend 3) (ite (bvule (_ bv9 4) (_ bv12 4)) (_ bv1 1) (_ bv0 1)))) (_ bv1 1) (_ bv0 1))))) (not _let_9) (bvsle v1 ((_ zero_extend 0) v0))) (or _let_16 (not _let_12) _let_26) (or _let_28 _let_19 _let_10) (or _let_9 (distinct (ite (= (_ bv1 1) ((_ extract 0 0) (bvadd (bvnot v0) (_ bv9 4)))) (ite (= (_ bv1 1) ((_ extract 0 0) (_ bv12 4))) (bvnot v0) (_ bv9 4)) (_ bv1 4)) _let_11) _let_29) (or _let_30 _let_31 _let_32) (or _let_25 _let_9 _let_33) (or _let_34 _let_35 _let_36) (or _let_27 (bvult (ite (= (_ bv1 1) ((_ extract 0 0) (_ bv12 4))) (bvnot v0) (_ bv9 4)) ((_ zero_extend 3) (ite (bvsle v0 ((_ zero_extend 3) (ite (bvule (_ bv9 4) (_ bv12 4)) (_ bv1 1) (_ bv0 1)))) (_ bv1 1) (_ bv0 1)))) _let_33) (or _let_36 _let_12 _let_34) (or _let_28 (not _let_22) (not (= _let_20 (_ bv12 4)))) (or _let_30 (not (distinct _let_5 _let_2)) (bvult (ite (= (_ bv1 1) ((_ extract 0 0) (_ bv12 4))) (bvnot v0) (_ bv9 4)) (_ bv12 4))) (or _let_19 _let_15 (not _let_13)) (or (distinct (ite (= (_ bv1 1) ((_ extract 0 0) (bvadd (bvnot v0) (_ bv9 4)))) (ite (= (_ bv1 1) ((_ extract 0 0) (_ bv12 4))) (bvnot v0) (_ bv9 4)) (_ bv1 4)) _let_11) _let_18 _let_18) (or (bvule (_ bv1 4) ((_ zero_extend 2) _let_6)) _let_21 _let_26) (or (not (bvule (bvadd ((_ zero_extend 0) v0) _let_1) (bvadd (bvnot v0) (_ bv9 4)))) (not _let_15) _let_35) (or (not (bvsle (_ bv9 4) ((_ sign_extend 3) (ite (bvugt ((_ zero_extend 3) (ite (bvule (_ bv9 4) (_ bv12 4)) (_ bv1 1) (_ bv0 1))) (_ bv9 4)) (_ bv1 1) (_ bv0 1))))) _let_33 _let_22) (or _let_30 _let_29 (not _let_16)) (or _let_9 _let_32 _let_17) (or (bvult _let_20 (bvnot _let_2)) _let_30 (bvsle _let_14 (_ bv3 4))) (or (not _let_19) (bvule _let_8 ((_ sign_extend 3) (ite (distinct ((_ zero_extend 3) (ite (bvslt (_ bv12 4) (_ bv3 4)) (_ bv1 1) (_ bv0 1))) (bvnot _let_2)) (_ bv1 1) (_ bv0 1)))) _let_37) (or (bvuge _let_4 ((_ zero_extend 3) (ite (bvule (_ bv9 4) (_ bv12 4)) (_ bv1 1) (_ bv0 1)))) _let_26 _let_23) (or (not (bvuge (_ bv9 4) (bvsub (bvnot v0) (bvnot v0)))) _let_18 (not _let_17)) (or (not _let_21) _let_37 (not _let_10)) (or (not (bvugt _let_5 ((_ sign_extend 2) _let_0))) _let_13 _let_31)))))))))))))))))))))))))))))))))))))))) ))