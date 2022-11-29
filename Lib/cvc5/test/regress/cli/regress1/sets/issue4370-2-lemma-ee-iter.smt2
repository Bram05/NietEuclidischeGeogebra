(set-logic ALL)
(set-info :status unsat)
(declare-fun st1 () (Set Int))
(declare-fun st7 () (Set Int))
(assert (> 0 (set.card (set.inter st1 (set.union st7 st1)))))
(assert (set.subset st1 st7))
(check-sat)
