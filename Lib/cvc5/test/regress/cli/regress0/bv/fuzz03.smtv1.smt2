(set-option :incremental false)
(set-info :status sat)
(set-logic QF_BV)
(declare-fun v0 () (_ BitVec 1))
(declare-fun v1 () (_ BitVec 4))
(declare-fun v2 () (_ BitVec 11))
(declare-fun v3 () (_ BitVec 9))
(check-sat-assuming ( (let ((_let_0 (bvxor v2 ((_ zero_extend 2) v3)))) (let ((_let_1 (ite (bvule ((_ zero_extend 2) v3) _let_0) (_ bv1 1) (_ bv0 1)))) (let ((_let_2 (ite (= (_ bv1 1) ((_ extract 0 0) (ite (= _let_0 v2) (_ bv1 1) (_ bv0 1)))) ((_ zero_extend 10) (_ bv0 1)) _let_0))) (let ((_let_3 ((_ sign_extend 4) (_ bv125 7)))) (let ((_let_4 (bvnor ((_ zero_extend 8) (ite (bvule _let_3 _let_0) (_ bv1 1) (_ bv0 1))) v3))) (let ((_let_5 (bvor _let_0 ((_ zero_extend 10) (ite (bvugt ((_ sign_extend 8) _let_1) _let_4) (_ bv1 1) (_ bv0 1)))))) (let ((_let_6 (bvor (_ bv0 1) v0))) (let ((_let_7 ((_ zero_extend 5) _let_0))) (let ((_let_8 (ite (bvugt ((_ sign_extend 8) v0) _let_4) (_ bv1 1) (_ bv0 1)))) (let ((_let_9 ((_ rotate_right 0) v1))) (let ((_let_10 (= ((_ sign_extend 5) (bvnor _let_5 ((_ zero_extend 2) _let_4))) ((_ sign_extend 5) (bvnor _let_5 ((_ zero_extend 2) _let_4)))))) (let ((_let_11 (xor (= ((_ sign_extend 5) (bvnor _let_5 ((_ zero_extend 2) _let_4))) ((_ sign_extend 5) v2)) (= ((_ sign_extend 5) v1) _let_4)))) (let ((_let_12 (or (= _let_8 (ite (bvugt ((_ sign_extend 8) _let_1) _let_4) (_ bv1 1) (_ bv0 1))) (ite (= _let_0 _let_5) (= ((_ sign_extend 8) _let_1) v3) (= (ite (bvugt ((_ sign_extend 8) _let_1) _let_4) (_ bv1 1) (_ bv0 1)) _let_8))))) (=> (=> (=> _let_12 _let_12) (= (= _let_7 _let_7) (xor (or (= _let_10 (=> _let_10 (=> (= (= (= ((_ zero_extend 10) _let_6) (bvnor _let_5 ((_ zero_extend 2) _let_4))) (= _let_2 ((_ sign_extend 7) _let_9))) (= v1 v1)) (= (bvnor _let_5 ((_ zero_extend 2) _let_4)) ((_ sign_extend 10) v0))))) (ite (= ((_ sign_extend 10) (ite (= _let_0 v2) (_ bv1 1) (_ bv0 1))) _let_5) (= ((_ zero_extend 3) _let_1) v1) (and (not (= v3 ((_ zero_extend 8) _let_6))) (or (= ((_ sign_extend 5) _let_2) ((_ sign_extend 5) (bvnor _let_5 ((_ zero_extend 2) _let_4)))) (ite (= _let_5 ((_ zero_extend 10) (_ bv0 1))) (= ((_ sign_extend 12) v1) ((_ sign_extend 5) (bvnor _let_5 ((_ zero_extend 2) _let_4)))) (= ((_ sign_extend 7) v1) _let_5)))))) (not (= _let_2 ((_ zero_extend 10) (ite (bvugt ((_ sign_extend 8) _let_1) _let_4) (_ bv1 1) (_ bv0 1)))))))) (or (not (= v0 (ite (bvule _let_3 _let_0) (_ bv1 1) (_ bv0 1)))) (and (= v2 ((_ zero_extend 10) v0)) (=> (ite (and (= ((_ sign_extend 10) _let_6) _let_2) (= v2 ((_ zero_extend 7) _let_9))) _let_11 _let_11) (= (= _let_6 _let_1) (= _let_5 _let_3))))))))))))))))))) ))
