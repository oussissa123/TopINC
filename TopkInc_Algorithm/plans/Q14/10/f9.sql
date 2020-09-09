SET search_path to s5;
EXPLAIN (ANALYZE, BUFFERS, Format json )
(SELECT * FROM R0_4 t0, R1_4 t1, R2_0 t2, R3_0 t3, R4_0 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4);
