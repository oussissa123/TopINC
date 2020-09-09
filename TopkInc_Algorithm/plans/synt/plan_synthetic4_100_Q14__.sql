SET search_path to synthetic4;
EXPLAIN (ANALYZE, BUFFERS, Format json ) (
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=32 AND t3.vioset=0 AND t4.vioset=32 LIMIT 58)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=32 AND t3.vioset=32 AND t4.vioset=0 LIMIT 58)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=32 AND t3.vioset=32 AND t4.vioset=32 LIMIT 58)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=1 AND t3.vioset=0 AND t4.vioset=0 LIMIT 58)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=1 AND t3.vioset=0 AND t4.vioset=1 LIMIT 55)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=1 AND t3.vioset=1 AND t4.vioset=0 LIMIT 51)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=1 AND t3.vioset=1 AND t4.vioset=1 LIMIT 51)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=2 AND t3.vioset=0 AND t4.vioset=0 LIMIT 50)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=2 AND t3.vioset=0 AND t4.vioset=2 LIMIT 50)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=2 AND t3.vioset=2 AND t4.vioset=0 LIMIT 49)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=2 AND t3.vioset=2 AND t4.vioset=2 LIMIT 49)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=16 AND t3.vioset=0 AND t4.vioset=0 LIMIT 47)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=16 AND t3.vioset=0 AND t4.vioset=16 LIMIT 47)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=16 AND t3.vioset=16 AND t4.vioset=0 LIMIT 47)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=16 AND t3.vioset=16 AND t4.vioset=16 LIMIT 47)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=8 AND t3.vioset=0 AND t4.vioset=0 LIMIT 47)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=8 AND t3.vioset=0 AND t4.vioset=8 LIMIT 45)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=8 AND t3.vioset=8 AND t4.vioset=0 LIMIT 44)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=8 AND t3.vioset=8 AND t4.vioset=8 LIMIT 42)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=0 AND t1.vioset=32 AND t2.vioset=0 AND t3.vioset=0 AND t4.vioset=0 LIMIT 40)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=0 AND t1.vioset=32 AND t2.vioset=0 AND t3.vioset=0 AND t4.vioset=32 LIMIT 40)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=0 AND t1.vioset=32 AND t2.vioset=0 AND t3.vioset=32 AND t4.vioset=0 LIMIT 40)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=0 AND t1.vioset=32 AND t2.vioset=0 AND t3.vioset=32 AND t4.vioset=32 LIMIT 40)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=0 AND t1.vioset=32 AND t2.vioset=32 AND t3.vioset=0 AND t4.vioset=0 LIMIT 40)
);
