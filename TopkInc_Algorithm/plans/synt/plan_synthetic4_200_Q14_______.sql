SET search_path to synthetic4;
EXPLAIN (ANALYZE, BUFFERS, Format json ) (
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=16 AND t1.vioset=16 AND t2.vioset=16 AND t3.vioset=0 AND t4.vioset=16 LIMIT 71)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=16 AND t1.vioset=16 AND t2.vioset=16 AND t3.vioset=16 AND t4.vioset=0 LIMIT 71)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=16 AND t1.vioset=16 AND t2.vioset=16 AND t3.vioset=16 AND t4.vioset=16 LIMIT 71)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=8 AND t1.vioset=0 AND t2.vioset=0 AND t3.vioset=0 AND t4.vioset=0 LIMIT 71)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=8 AND t1.vioset=0 AND t2.vioset=0 AND t3.vioset=0 AND t4.vioset=8 LIMIT 69)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=8 AND t1.vioset=0 AND t2.vioset=0 AND t3.vioset=8 AND t4.vioset=0 LIMIT 69)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=8 AND t1.vioset=0 AND t2.vioset=0 AND t3.vioset=8 AND t4.vioset=8 LIMIT 68)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=8 AND t1.vioset=0 AND t2.vioset=8 AND t3.vioset=0 AND t4.vioset=0 LIMIT 67)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=8 AND t1.vioset=0 AND t2.vioset=8 AND t3.vioset=0 AND t4.vioset=8 LIMIT 66)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=8 AND t1.vioset=0 AND t2.vioset=8 AND t3.vioset=8 AND t4.vioset=0 LIMIT 62)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=8 AND t1.vioset=0 AND t2.vioset=8 AND t3.vioset=8 AND t4.vioset=8 LIMIT 60)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=8 AND t1.vioset=8 AND t2.vioset=0 AND t3.vioset=0 AND t4.vioset=0 LIMIT 59)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=8 AND t1.vioset=8 AND t2.vioset=0 AND t3.vioset=0 AND t4.vioset=8 LIMIT 58)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=8 AND t1.vioset=8 AND t2.vioset=0 AND t3.vioset=8 AND t4.vioset=0 LIMIT 58)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=8 AND t1.vioset=8 AND t2.vioset=0 AND t3.vioset=8 AND t4.vioset=8 LIMIT 57)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=8 AND t1.vioset=8 AND t2.vioset=8 AND t3.vioset=0 AND t4.vioset=0 LIMIT 57)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=8 AND t1.vioset=8 AND t2.vioset=8 AND t3.vioset=0 AND t4.vioset=8 LIMIT 56)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=8 AND t1.vioset=8 AND t2.vioset=8 AND t3.vioset=8 AND t4.vioset=0 LIMIT 56)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=8 AND t1.vioset=8 AND t2.vioset=8 AND t3.vioset=8 AND t4.vioset=8 LIMIT 56)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=4 AND t1.vioset=4 AND t2.vioset=4 AND t3.vioset=4 AND t4.vioset=32 LIMIT 54)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=4 AND t1.vioset=4 AND t2.vioset=4 AND t3.vioset=4 AND t4.vioset=6 LIMIT 54)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=4 AND t1.vioset=4 AND t2.vioset=4 AND t3.vioset=4 AND t4.vioset=12 LIMIT 54)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=4 AND t1.vioset=4 AND t2.vioset=4 AND t3.vioset=4 AND t4.vioset=36 LIMIT 54)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=4 AND t1.vioset=4 AND t2.vioset=4 AND t3.vioset=4 AND t4.vioset=20 LIMIT 54)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=4 AND t1.vioset=4 AND t2.vioset=4 AND t3.vioset=4 AND t4.vioset=1 LIMIT 54)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=4 AND t1.vioset=4 AND t2.vioset=4 AND t3.vioset=4 AND t4.vioset=5 LIMIT 54)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=4 AND t1.vioset=4 AND t2.vioset=4 AND t3.vioset=4 AND t4.vioset=2 LIMIT 54)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=4 AND t1.vioset=4 AND t2.vioset=4 AND t3.vioset=4 AND t4.vioset=16 LIMIT 53)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=4 AND t1.vioset=4 AND t2.vioset=4 AND t3.vioset=4 AND t4.vioset=8 LIMIT 53)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=4 AND t1.vioset=4 AND t2.vioset=4 AND t3.vioset=0 AND t4.vioset=32 LIMIT 52)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=4 AND t1.vioset=4 AND t2.vioset=4 AND t3.vioset=0 AND t4.vioset=6 LIMIT 52)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=4 AND t1.vioset=4 AND t2.vioset=4 AND t3.vioset=0 AND t4.vioset=12 LIMIT 52)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=4 AND t1.vioset=4 AND t2.vioset=4 AND t3.vioset=0 AND t4.vioset=36 LIMIT 52)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=4 AND t1.vioset=4 AND t2.vioset=4 AND t3.vioset=0 AND t4.vioset=20 LIMIT 52)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=4 AND t1.vioset=4 AND t2.vioset=4 AND t3.vioset=0 AND t4.vioset=1 LIMIT 52)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=4 AND t1.vioset=4 AND t2.vioset=4 AND t3.vioset=0 AND t4.vioset=5 LIMIT 51)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=4 AND t1.vioset=4 AND t2.vioset=4 AND t3.vioset=0 AND t4.vioset=2 LIMIT 51)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=4 AND t1.vioset=4 AND t2.vioset=4 AND t3.vioset=0 AND t4.vioset=16 LIMIT 51)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=4 AND t1.vioset=4 AND t2.vioset=4 AND t3.vioset=0 AND t4.vioset=8 LIMIT 51)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=4 AND t1.vioset=4 AND t2.vioset=4 AND t3.vioset=32 AND t4.vioset=4 LIMIT 51)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=4 AND t1.vioset=4 AND t2.vioset=4 AND t3.vioset=32 AND t4.vioset=0 LIMIT 51)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=4 AND t1.vioset=4 AND t2.vioset=4 AND t3.vioset=32 AND t4.vioset=32 LIMIT 51)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=4 AND t1.vioset=4 AND t2.vioset=4 AND t3.vioset=32 AND t4.vioset=36 LIMIT 51)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=4 AND t1.vioset=4 AND t2.vioset=4 AND t3.vioset=6 AND t4.vioset=4 LIMIT 51)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=4 AND t1.vioset=4 AND t2.vioset=4 AND t3.vioset=6 AND t4.vioset=0 LIMIT 51)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=4 AND t1.vioset=4 AND t2.vioset=4 AND t3.vioset=6 AND t4.vioset=6 LIMIT 51)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=4 AND t1.vioset=4 AND t2.vioset=4 AND t3.vioset=6 AND t4.vioset=2 LIMIT 51)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=4 AND t1.vioset=4 AND t2.vioset=4 AND t3.vioset=12 AND t4.vioset=4 LIMIT 51)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=4 AND t1.vioset=4 AND t2.vioset=4 AND t3.vioset=12 AND t4.vioset=0 LIMIT 51)
);
