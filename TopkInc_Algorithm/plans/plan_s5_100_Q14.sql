SET search_path to s5;
EXPLAIN (ANALYZE, BUFFERS, Format json ) (
(SELECT * FROM R0_0 t0, R1_0 t1, R2_0 t2, R3_0 t3, R4_0 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4)
	 UNION ALL 
(SELECT * FROM R0_4 t0, R1_4 t1, R2_4 t2, R3_4 t3, R4_4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4)
	 UNION ALL 
(SELECT * FROM R0_4 t0, R1_4 t1, R2_4 t2, R3_4 t3, R4_0 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4)
	 UNION ALL 
(SELECT * FROM R0_4 t0, R1_4 t1, R2_4 t2, R3_0 t3, R4_4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4)
	 UNION ALL 
(SELECT * FROM R0_4 t0, R1_4 t1, R2_4 t2, R3_0 t3, R4_0 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4)
	 UNION ALL 
(SELECT * FROM R0_4 t0, R1_4 t1, R2_0 t2, R3_4 t3, R4_4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4)
	 UNION ALL 
(SELECT * FROM R0_4 t0, R1_4 t1, R2_0 t2, R3_4 t3, R4_0 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4)
	 UNION ALL 
(SELECT * FROM R0_4 t0, R1_4 t1, R2_0 t2, R3_0 t3, R4_4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4)
	 UNION ALL 
(SELECT * FROM R0_4 t0, R1_4 t1, R2_0 t2, R3_0 t3, R4_0 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4)
	 UNION ALL 
(SELECT * FROM R0_4 t0, R1_0 t1, R2_4 t2, R3_4 t3, R4_4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4)
	 UNION ALL 
(SELECT * FROM R0_4 t0, R1_0 t1, R2_4 t2, R3_4 t3, R4_0 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4)
	 UNION ALL 
(SELECT * FROM R0_4 t0, R1_0 t1, R2_4 t2, R3_0 t3, R4_4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4)
	 UNION ALL 
(SELECT * FROM R0_4 t0, R1_0 t1, R2_4 t2, R3_0 t3, R4_0 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4)
	 UNION ALL 
(SELECT * FROM R0_4 t0, R1_0 t1, R2_0 t2, R3_4 t3, R4_4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4)
	 UNION ALL 
(SELECT * FROM R0_4 t0, R1_0 t1, R2_0 t2, R3_4 t3, R4_0 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4)
	 UNION ALL 
(SELECT * FROM R0_4 t0, R1_0 t1, R2_0 t2, R3_0 t3, R4_4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4)
	 UNION ALL 
(SELECT * FROM R0_4 t0, R1_0 t1, R2_0 t2, R3_0 t3, R4_0 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4)
	 UNION ALL 
(SELECT * FROM R0_0 t0, R1_4 t1, R2_4 t2, R3_4 t3, R4_4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4)
	 UNION ALL 
(SELECT * FROM R0_0 t0, R1_4 t1, R2_4 t2, R3_4 t3, R4_0 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4)
	 UNION ALL 
(SELECT * FROM R0_0 t0, R1_4 t1, R2_4 t2, R3_0 t3, R4_4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4)
	 UNION ALL 
(SELECT * FROM R0_0 t0, R1_4 t1, R2_4 t2, R3_0 t3, R4_0 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4)
	 UNION ALL 
(SELECT * FROM R0_0 t0, R1_4 t1, R2_0 t2, R3_4 t3, R4_4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4)
	 UNION ALL 
(SELECT * FROM R0_0 t0, R1_4 t1, R2_0 t2, R3_4 t3, R4_0 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4)
	 UNION ALL 
(SELECT * FROM R0_0 t0, R1_4 t1, R2_0 t2, R3_0 t3, R4_4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4)
	 UNION ALL 
(SELECT * FROM R0_0 t0, R1_4 t1, R2_0 t2, R3_0 t3, R4_0 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4)
	 UNION ALL 
(SELECT * FROM R0_0 t0, R1_0 t1, R2_4 t2, R3_4 t3, R4_4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4)
	 UNION ALL 
(SELECT * FROM R0_0 t0, R1_0 t1, R2_4 t2, R3_4 t3, R4_0 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4)
	 UNION ALL 
(SELECT * FROM R0_0 t0, R1_0 t1, R2_4 t2, R3_0 t3, R4_4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4)
	 UNION ALL 
(SELECT * FROM R0_0 t0, R1_0 t1, R2_4 t2, R3_0 t3, R4_0 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4)
	 UNION ALL 
(SELECT * FROM R0_0 t0, R1_0 t1, R2_0 t2, R3_4 t3, R4_4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4)
	 UNION ALL 
(SELECT * FROM R0_0 t0, R1_0 t1, R2_0 t2, R3_4 t3, R4_0 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4)
	 UNION ALL 
(SELECT * FROM R0_0 t0, R1_0 t1, R2_0 t2, R3_0 t3, R4_4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4)
	 UNION ALL 
(SELECT * FROM R0_0 t0, R1_0 t1, R2_0 t2, R3_0 t3, R4_2 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4)
	 UNION ALL 
(SELECT * FROM R0_0 t0, R1_0 t1, R2_0 t2, R3_0 t3, R4_16 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4)
	 UNION ALL 
(SELECT * FROM R0_0 t0, R1_0 t1, R2_0 t2, R3_0 t3, R4_32 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4)
	 UNION ALL 
(SELECT * FROM R0_0 t0, R1_0 t1, R2_0 t2, R3_0 t3, R4_1 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4)
	 UNION ALL 
(SELECT * FROM R0_0 t0, R1_0 t1, R2_0 t2, R3_0 t3, R4_8 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4)
	 UNION ALL 
(SELECT * FROM R0_0 t0, R1_0 t1, R2_0 t2, R3_2 t3, R4_0 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4)
	 UNION ALL 
(SELECT * FROM R0_0 t0, R1_0 t1, R2_0 t2, R3_2 t3, R4_2 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4)
	 UNION ALL 
(SELECT * FROM R0_0 t0, R1_0 t1, R2_0 t2, R3_16 t3, R4_0 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4)
	 UNION ALL 
(SELECT * FROM R0_0 t0, R1_0 t1, R2_0 t2, R3_16 t3, R4_16 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4)
	 UNION ALL 
(SELECT * FROM R0_0 t0, R1_0 t1, R2_0 t2, R3_32 t3, R4_0 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4)
	 UNION ALL 
(SELECT * FROM R0_0 t0, R1_0 t1, R2_0 t2, R3_32 t3, R4_32 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4)
	 UNION ALL 
(SELECT * FROM R0_0 t0, R1_0 t1, R2_0 t2, R3_1 t3, R4_0 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4)
	 UNION ALL 
(SELECT * FROM R0_0 t0, R1_0 t1, R2_0 t2, R3_1 t3, R4_1 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4)
	 UNION ALL 
(SELECT * FROM R0_0 t0, R1_0 t1, R2_0 t2, R3_8 t3, R4_0 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4)
	 UNION ALL 
(SELECT * FROM R0_0 t0, R1_0 t1, R2_0 t2, R3_8 t3, R4_8 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4)
	 UNION ALL 
(SELECT * FROM R0_0 t0, R1_0 t1, R2_2 t2, R3_0 t3, R4_0 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4)
	 UNION ALL 
(SELECT * FROM R0_0 t0, R1_0 t1, R2_2 t2, R3_0 t3, R4_2 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4)
	 UNION ALL 
(SELECT * FROM R0_0 t0, R1_0 t1, R2_2 t2, R3_2 t3, R4_0 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4)
	 UNION ALL 
(SELECT * FROM R0_0 t0, R1_0 t1, R2_2 t2, R3_2 t3, R4_2 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4)
	 UNION ALL 
(SELECT * FROM R0_0 t0, R1_0 t1, R2_16 t2, R3_0 t3, R4_0 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4)
	 UNION ALL 
(SELECT * FROM R0_0 t0, R1_0 t1, R2_16 t2, R3_0 t3, R4_16 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4)
	 UNION ALL 
(SELECT * FROM R0_0 t0, R1_0 t1, R2_16 t2, R3_16 t3, R4_0 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4)
	 UNION ALL 
(SELECT * FROM R0_0 t0, R1_0 t1, R2_16 t2, R3_16 t3, R4_16 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4)
	 UNION ALL 
(SELECT * FROM R0_0 t0, R1_0 t1, R2_32 t2, R3_0 t3, R4_0 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4)
	 UNION ALL 
(SELECT * FROM R0_0 t0, R1_0 t1, R2_32 t2, R3_0 t3, R4_32 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4)
	 UNION ALL 
(SELECT * FROM R0_0 t0, R1_0 t1, R2_32 t2, R3_32 t3, R4_0 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4)
	 UNION ALL 
(SELECT * FROM R0_0 t0, R1_0 t1, R2_32 t2, R3_32 t3, R4_32 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4)
	 UNION ALL 
(SELECT * FROM R0_0 t0, R1_0 t1, R2_1 t2, R3_0 t3, R4_0 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4)
	 UNION ALL 
(SELECT * FROM R0_0 t0, R1_0 t1, R2_1 t2, R3_0 t3, R4_1 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4)
	 UNION ALL 
(SELECT * FROM R0_0 t0, R1_0 t1, R2_1 t2, R3_1 t3, R4_0 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4)
	 UNION ALL 
(SELECT * FROM R0_0 t0, R1_0 t1, R2_1 t2, R3_1 t3, R4_1 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4)
	 UNION ALL 
(SELECT * FROM R0_0 t0, R1_0 t1, R2_8 t2, R3_0 t3, R4_0 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4)
	 UNION ALL 
(SELECT * FROM R0_0 t0, R1_0 t1, R2_8 t2, R3_0 t3, R4_8 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4)
	 UNION ALL 
(SELECT * FROM R0_0 t0, R1_0 t1, R2_8 t2, R3_8 t3, R4_0 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4)
	 UNION ALL 
(SELECT * FROM R0_0 t0, R1_0 t1, R2_8 t2, R3_8 t3, R4_8 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4)
	 UNION ALL 
(SELECT * FROM R0_0 t0, R1_2 t1, R2_0 t2, R3_0 t3, R4_0 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4)
	 UNION ALL 
(SELECT * FROM R0_0 t0, R1_2 t1, R2_0 t2, R3_0 t3, R4_2 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4)
	 UNION ALL 
(SELECT * FROM R0_0 t0, R1_2 t1, R2_0 t2, R3_2 t3, R4_0 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4)
	 UNION ALL 
(SELECT * FROM R0_0 t0, R1_2 t1, R2_0 t2, R3_2 t3, R4_2 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4)
	 UNION ALL 
(SELECT * FROM R0_0 t0, R1_2 t1, R2_2 t2, R3_0 t3, R4_0 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4)
	 UNION ALL 
(SELECT * FROM R0_0 t0, R1_2 t1, R2_2 t2, R3_0 t3, R4_2 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4)
	 UNION ALL 
(SELECT * FROM R0_0 t0, R1_2 t1, R2_2 t2, R3_2 t3, R4_0 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4)
	 UNION ALL 
(SELECT * FROM R0_0 t0, R1_2 t1, R2_2 t2, R3_2 t3, R4_2 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4)
	 UNION ALL 
(SELECT * FROM R0_0 t0, R1_16 t1, R2_0 t2, R3_0 t3, R4_0 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4)
	 UNION ALL 
(SELECT * FROM R0_0 t0, R1_16 t1, R2_0 t2, R3_0 t3, R4_16 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4)
	 UNION ALL 
(SELECT * FROM R0_0 t0, R1_16 t1, R2_0 t2, R3_16 t3, R4_0 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4)
	 UNION ALL 
(SELECT * FROM R0_0 t0, R1_16 t1, R2_0 t2, R3_16 t3, R4_16 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4)
	 UNION ALL 
(SELECT * FROM R0_0 t0, R1_16 t1, R2_16 t2, R3_0 t3, R4_0 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4)
	 UNION ALL 
(SELECT * FROM R0_0 t0, R1_16 t1, R2_16 t2, R3_0 t3, R4_16 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4)
	 UNION ALL 
(SELECT * FROM R0_0 t0, R1_16 t1, R2_16 t2, R3_16 t3, R4_0 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4)
	 UNION ALL 
(SELECT * FROM R0_0 t0, R1_16 t1, R2_16 t2, R3_16 t3, R4_16 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4)
	 UNION ALL 
(SELECT * FROM R0_0 t0, R1_32 t1, R2_0 t2, R3_0 t3, R4_0 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4)
	 UNION ALL 
(SELECT * FROM R0_0 t0, R1_32 t1, R2_0 t2, R3_0 t3, R4_32 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4)
	 UNION ALL 
(SELECT * FROM R0_0 t0, R1_32 t1, R2_0 t2, R3_32 t3, R4_0 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4)
	 UNION ALL 
(SELECT * FROM R0_0 t0, R1_32 t1, R2_0 t2, R3_32 t3, R4_32 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4)
	 UNION ALL 
(SELECT * FROM R0_0 t0, R1_32 t1, R2_32 t2, R3_0 t3, R4_0 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4)
	 UNION ALL 
(SELECT * FROM R0_0 t0, R1_32 t1, R2_32 t2, R3_0 t3, R4_32 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4)
	 UNION ALL 
(SELECT * FROM R0_0 t0, R1_32 t1, R2_32 t2, R3_32 t3, R4_0 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4)
	 UNION ALL 
(SELECT * FROM R0_0 t0, R1_32 t1, R2_32 t2, R3_32 t3, R4_32 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4)
	 UNION ALL 
(SELECT * FROM R0_0 t0, R1_1 t1, R2_0 t2, R3_0 t3, R4_0 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4)
	 UNION ALL 
(SELECT * FROM R0_0 t0, R1_1 t1, R2_0 t2, R3_0 t3, R4_1 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4)
	 UNION ALL 
(SELECT * FROM R0_0 t0, R1_1 t1, R2_0 t2, R3_1 t3, R4_0 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4)
	 UNION ALL 
(SELECT * FROM R0_0 t0, R1_1 t1, R2_0 t2, R3_1 t3, R4_1 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4)
	 UNION ALL 
(SELECT * FROM R0_0 t0, R1_1 t1, R2_1 t2, R3_0 t3, R4_0 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4)
	 UNION ALL 
(SELECT * FROM R0_0 t0, R1_1 t1, R2_1 t2, R3_0 t3, R4_1 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4)
	 UNION ALL 
(SELECT * FROM R0_0 t0, R1_1 t1, R2_1 t2, R3_1 t3, R4_0 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4)
	 UNION ALL 
(SELECT * FROM R0_0 t0, R1_1 t1, R2_1 t2, R3_1 t3, R4_1 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4)
	 UNION ALL 
(SELECT * FROM R0_0 t0, R1_8 t1, R2_0 t2, R3_0 t3, R4_0 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4)
	 UNION ALL 
(SELECT * FROM R0_0 t0, R1_8 t1, R2_0 t2, R3_0 t3, R4_8 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4)
	 UNION ALL 
(SELECT * FROM R0_0 t0, R1_8 t1, R2_0 t2, R3_8 t3, R4_0 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4)
	 UNION ALL 
(SELECT * FROM R0_0 t0, R1_8 t1, R2_0 t2, R3_8 t3, R4_8 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4)
	 UNION ALL 
(SELECT * FROM R0_0 t0, R1_8 t1, R2_8 t2, R3_0 t3, R4_0 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4)
	 UNION ALL 
(SELECT * FROM R0_0 t0, R1_8 t1, R2_8 t2, R3_0 t3, R4_8 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4)
	 UNION ALL 
(SELECT * FROM R0_0 t0, R1_8 t1, R2_8 t2, R3_8 t3, R4_0 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4)
	 UNION ALL 
(SELECT * FROM R0_0 t0, R1_8 t1, R2_8 t2, R3_8 t3, R4_8 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4)
	 UNION ALL 
(SELECT * FROM R0_2 t0, R1_0 t1, R2_0 t2, R3_0 t3, R4_0 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4)
	 UNION ALL 
