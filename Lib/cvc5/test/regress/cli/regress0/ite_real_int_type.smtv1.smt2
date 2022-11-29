(set-option :incremental false)
(set-info :status sat)
(set-logic QF_LRA)
(declare-fun x () Real)
(declare-fun y () Real)
(check-sat-assuming ( (and (= 0.0 (ite true x 1)) (= 0 (ite (= x 0.0) 0 1)) (= x (ite true y 0)) (= 0 (ite true 0 0))) ))
