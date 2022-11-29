(set-option :incremental false)
(set-info :source "MathSat group")
(set-info :status unsat)
(set-info :category "industrial")
(set-info :difficulty "2")
(set-logic QF_UFLIA)
(declare-fun fmt1 () Int)
(declare-fun fmt0 () Int)
(declare-fun arg1 () Int)
(declare-fun arg0 () Int)
(declare-fun fmt_length () Int)
(declare-fun distance () Int)
(declare-fun adr_hi () Int)
(declare-fun adr_medhi () Int)
(declare-fun adr_medlo () Int)
(declare-fun adr_lo () Int)
(declare-fun select_format (Int) Int)
(declare-fun percent () Int)
(declare-fun s () Int)
(declare-fun s_count (Int) Int)
(declare-fun x () Int)
(declare-fun x_count (Int) Int)
(check-sat-assuming ( (let ((_let_0 (+ fmt0 1))) (let ((_let_1 (+ arg0 distance))) (let ((_let_2 (- (- fmt1 2) fmt0))) (let ((_let_3 (= (select_format 0) percent))) (let ((_let_4 (select_format 1))) (let ((_let_5 (= _let_4 percent))) (let ((_let_6 (= _let_4 s))) (let ((_let_7 (= _let_4 x))) (let ((_let_8 (select_format 2))) (let ((_let_9 (= _let_8 percent))) (let ((_let_10 (= _let_8 s))) (let ((_let_11 (= _let_8 x))) (let ((_let_12 (select_format 3))) (let ((_let_13 (= _let_12 percent))) (let ((_let_14 (= _let_12 s))) (let ((_let_15 (= _let_12 x))) (let ((_let_16 (select_format 4))) (let ((_let_17 (= _let_16 percent))) (let ((_let_18 (= _let_16 s))) (let ((_let_19 (= _let_16 x))) (let ((_let_20 (select_format 5))) (let ((_let_21 (= _let_20 percent))) (let ((_let_22 (= _let_20 s))) (let ((_let_23 (= _let_20 x))) (let ((_let_24 (select_format 6))) (let ((_let_25 (= _let_24 percent))) (let ((_let_26 (= _let_24 s))) (let ((_let_27 (= _let_24 x))) (let ((_let_28 (select_format 7))) (let ((_let_29 (= _let_28 percent))) (let ((_let_30 (= _let_28 s))) (let ((_let_31 (= _let_28 x))) (let ((_let_32 (select_format 8))) (let ((_let_33 (= _let_32 percent))) (let ((_let_34 (= _let_32 s))) (let ((_let_35 (= _let_32 x))) (let ((_let_36 (select_format 9))) (let ((_let_37 (= _let_36 percent))) (let ((_let_38 (= _let_36 s))) (let ((_let_39 (= _let_36 x))) (let ((_let_40 (select_format 10))) (let ((_let_41 (= _let_40 percent))) (let ((_let_42 (= _let_40 s))) (let ((_let_43 (= _let_40 x))) (let ((_let_44 (s_count 0))) (let ((_let_45 (s_count 1))) (let ((_let_46 (s_count 2))) (let ((_let_47 (s_count 3))) (let ((_let_48 (s_count 4))) (let ((_let_49 (s_count 5))) (let ((_let_50 (s_count 6))) (let ((_let_51 (s_count 7))) (let ((_let_52 (s_count 8))) (let ((_let_53 (s_count 9))) (let ((_let_54 (select_format 11))) (let ((_let_55 (s_count 10))) (let ((_let_56 (x_count 0))) (let ((_let_57 (x_count 1))) (let ((_let_58 (x_count 2))) (let ((_let_59 (x_count 3))) (let ((_let_60 (x_count 4))) (let ((_let_61 (x_count 5))) (let ((_let_62 (x_count 6))) (let ((_let_63 (x_count 7))) (let ((_let_64 (x_count 8))) (let ((_let_65 (x_count 9))) (let ((_let_66 (x_count 10))) (let ((_let_67 (+ fmt0 0))) (let ((_let_68 (+ fmt0 2))) (let ((_let_69 (+ fmt0 3))) (let ((_let_70 (+ fmt0 4))) (let ((_let_71 (+ fmt0 5))) (let ((_let_72 (+ fmt0 6))) (let ((_let_73 (+ fmt0 7))) (and (and (and (and (and (and (and (and (and (and (and (and (and (= distance 20) (= fmt_length 11)) (= adr_lo 5)) (= adr_medlo 2)) (= adr_medhi 5)) (= adr_hi 3)) (= percent 37)) (= s 115)) (= x 120)) (and (and (and (and (and (and (and (= fmt0 0) (= arg0 (- fmt0 distance))) (>= arg1 fmt0)) (< fmt1 (- (+ fmt0 fmt_length) 1))) (> fmt1 _let_0)) (>= arg1 _let_1)) (< arg1 (- (+ _let_1 fmt_length) 4))) (= arg1 (+ (+ arg0 (* 4 (s_count _let_2))) (* 4 (x_count _let_2)))))) (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or (or _let_3 (= (select_format 0) s)) (= (select_format 0) x)) (= (select_format 0) adr_lo)) (= (select_format 0) adr_medlo)) (= (select_format 0) adr_medhi)) (= (select_format 0) adr_hi)) (= (select_format 0) 255)) _let_5) _let_6) _let_7) (= _let_4 adr_lo)) (= _let_4 adr_medlo)) (= _let_4 adr_medhi)) (= _let_4 adr_hi)) (= _let_4 255)) _let_9) _let_10) _let_11) (= _let_8 adr_lo)) (= _let_8 adr_medlo)) (= _let_8 adr_medhi)) (= _let_8 adr_hi)) (= _let_8 255)) _let_13) _let_14) _let_15) (= _let_12 adr_lo)) (= _let_12 adr_medlo)) (= _let_12 adr_medhi)) (= _let_12 adr_hi)) (= _let_12 255)) _let_17) _let_18) _let_19) (= _let_16 adr_lo)) (= _let_16 adr_medlo)) (= _let_16 adr_medhi)) (= _let_16 adr_hi)) (= _let_16 255)) _let_21) _let_22) _let_23) (= _let_20 adr_lo)) (= _let_20 adr_medlo)) (= _let_20 adr_medhi)) (= _let_20 adr_hi)) (= _let_20 255)) _let_25) _let_26) _let_27) (= _let_24 adr_lo)) (= _let_24 adr_medlo)) (= _let_24 adr_medhi)) (= _let_24 adr_hi)) (= _let_24 255)) _let_29) _let_30) _let_31) (= _let_28 adr_lo)) (= _let_28 adr_medlo)) (= _let_28 adr_medhi)) (= _let_28 adr_hi)) (= _let_28 255)) _let_33) _let_34) _let_35) (= _let_32 adr_lo)) (= _let_32 adr_medlo)) (= _let_32 adr_medhi)) (= _let_32 adr_hi)) (= _let_32 255)) _let_37) _let_38) _let_39) (= _let_36 adr_lo)) (= _let_36 adr_medlo)) (= _let_36 adr_medhi)) (= _let_36 adr_hi)) (= _let_36 255)) _let_41) _let_42) _let_43) (= _let_40 adr_lo)) (= _let_40 adr_medlo)) (= _let_40 adr_medhi)) (= _let_40 adr_hi)) (= _let_40 255))) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (ite (and _let_3 _let_6) (= _let_44 1) (= _let_44 0)) (ite (and _let_5 _let_10) (= _let_45 (+ _let_44 1)) (= _let_45 _let_44))) (ite (and _let_9 _let_14) (= _let_46 (+ _let_45 1)) (= _let_46 _let_45))) (ite (and _let_13 _let_18) (= _let_47 (+ _let_46 1)) (= _let_47 _let_46))) (ite (and _let_17 _let_22) (= _let_48 (+ _let_47 1)) (= _let_48 _let_47))) (ite (and _let_21 _let_26) (= _let_49 (+ _let_48 1)) (= _let_49 _let_48))) (ite (and _let_25 _let_30) (= _let_50 (+ _let_49 1)) (= _let_50 _let_49))) (ite (and _let_29 _let_34) (= _let_51 (+ _let_50 1)) (= _let_51 _let_50))) (ite (and _let_33 _let_38) (= _let_52 (+ _let_51 1)) (= _let_52 _let_51))) (ite (and _let_37 _let_42) (= _let_53 (+ _let_52 1)) (= _let_53 _let_52))) (ite (and _let_41 (= _let_54 s)) (= _let_55 (+ _let_53 1)) (= _let_55 _let_53))) (ite (and _let_3 _let_7) (= _let_56 1) (= _let_56 0))) (ite (and _let_5 _let_11) (= _let_57 (+ _let_56 1)) (= _let_57 _let_56))) (ite (and _let_9 _let_15) (= _let_58 (+ _let_57 1)) (= _let_58 _let_57))) (ite (and _let_13 _let_19) (= _let_59 (+ _let_58 1)) (= _let_59 _let_58))) (ite (and _let_17 _let_23) (= _let_60 (+ _let_59 1)) (= _let_60 _let_59))) (ite (and _let_21 _let_27) (= _let_61 (+ _let_60 1)) (= _let_61 _let_60))) (ite (and _let_25 _let_31) (= _let_62 (+ _let_61 1)) (= _let_62 _let_61))) (ite (and _let_29 _let_35) (= _let_63 (+ _let_62 1)) (= _let_63 _let_62))) (ite (and _let_33 _let_39) (= _let_64 (+ _let_63 1)) (= _let_64 _let_63))) (ite (and _let_37 _let_43) (= _let_65 (+ _let_64 1)) (= _let_65 _let_64))) (ite (and _let_41 (= _let_54 x)) (= _let_66 (+ _let_65 1)) (= _let_66 _let_65)))) (and (or (or (or (or (or (or (or (or (or (or (= fmt1 _let_67) (= fmt1 _let_0)) (= fmt1 _let_68)) (= fmt1 _let_69)) (= fmt1 _let_70)) (= fmt1 _let_71)) (= fmt1 _let_72)) (= fmt1 _let_73)) (= fmt1 (+ fmt0 8))) (= fmt1 (+ fmt0 9))) (= fmt1 (+ fmt0 10))) (or (or (or (or (or (or (or (= arg1 _let_67) (= arg1 _let_0)) (= arg1 _let_68)) (= arg1 _let_69)) (= arg1 _let_70)) (= arg1 _let_71)) (= arg1 _let_72)) (= arg1 _let_73)))) (not (and (and (and (and (and (= (select_format fmt1) percent) (= (select_format (+ fmt1 1)) s)) (= (select_format arg1) adr_lo)) (= (select_format (+ arg1 1)) adr_medlo)) (= (select_format (+ arg1 2)) adr_medhi)) (= (select_format (+ arg1 3)) adr_hi)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) ))
