SET search_path to synthetic4;
EXPLAIN (ANALYZE, BUFFERS, Format json ) (
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=0 AND t1.vioset=16 AND t2.vioset=16 AND t3.vioset=0 AND t4.vioset=16 LIMIT 110)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=0 AND t1.vioset=16 AND t2.vioset=16 AND t3.vioset=16 AND t4.vioset=0 LIMIT 110)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=0 AND t1.vioset=16 AND t2.vioset=16 AND t3.vioset=16 AND t4.vioset=16 LIMIT 110)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=0 AND t1.vioset=8 AND t2.vioset=0 AND t3.vioset=0 AND t4.vioset=0 LIMIT 110)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=0 AND t1.vioset=8 AND t2.vioset=0 AND t3.vioset=0 AND t4.vioset=8 LIMIT 110)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=0 AND t1.vioset=8 AND t2.vioset=0 AND t3.vioset=8 AND t4.vioset=0 LIMIT 108)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=0 AND t1.vioset=8 AND t2.vioset=0 AND t3.vioset=8 AND t4.vioset=8 LIMIT 107)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=0 AND t1.vioset=8 AND t2.vioset=8 AND t3.vioset=0 AND t4.vioset=0 LIMIT 106)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=0 AND t1.vioset=8 AND t2.vioset=8 AND t3.vioset=0 AND t4.vioset=8 LIMIT 105)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=0 AND t1.vioset=8 AND t2.vioset=8 AND t3.vioset=8 AND t4.vioset=0 LIMIT 103)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=0 AND t1.vioset=8 AND t2.vioset=8 AND t3.vioset=8 AND t4.vioset=8 LIMIT 103)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=32 AND t1.vioset=0 AND t2.vioset=0 AND t3.vioset=0 AND t4.vioset=0 LIMIT 101)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=32 AND t1.vioset=0 AND t2.vioset=0 AND t3.vioset=0 AND t4.vioset=32 LIMIT 101)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=32 AND t1.vioset=0 AND t2.vioset=0 AND t3.vioset=32 AND t4.vioset=0 LIMIT 101)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=32 AND t1.vioset=0 AND t2.vioset=0 AND t3.vioset=32 AND t4.vioset=32 LIMIT 101)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=32 AND t1.vioset=0 AND t2.vioset=32 AND t3.vioset=0 AND t4.vioset=0 LIMIT 101)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=32 AND t1.vioset=0 AND t2.vioset=32 AND t3.vioset=0 AND t4.vioset=32 LIMIT 101)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=32 AND t1.vioset=0 AND t2.vioset=32 AND t3.vioset=32 AND t4.vioset=0 LIMIT 101)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=32 AND t1.vioset=0 AND t2.vioset=32 AND t3.vioset=32 AND t4.vioset=32 LIMIT 101)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=32 AND t1.vioset=32 AND t2.vioset=0 AND t3.vioset=0 AND t4.vioset=0 LIMIT 101)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=32 AND t1.vioset=32 AND t2.vioset=0 AND t3.vioset=0 AND t4.vioset=32 LIMIT 101)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=32 AND t1.vioset=32 AND t2.vioset=0 AND t3.vioset=32 AND t4.vioset=0 LIMIT 101)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=32 AND t1.vioset=32 AND t2.vioset=0 AND t3.vioset=32 AND t4.vioset=32 LIMIT 101)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=32 AND t1.vioset=32 AND t2.vioset=32 AND t3.vioset=0 AND t4.vioset=0 LIMIT 101)
);
