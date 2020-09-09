SET search_path to synthetic4;
EXPLAIN (ANALYZE, BUFFERS, Format json ) (
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=4 AND t1.vioset=4 AND t2.vioset=4 AND t3.vioset=12 AND t4.vioset=12 LIMIT 51)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=4 AND t1.vioset=4 AND t2.vioset=4 AND t3.vioset=12 AND t4.vioset=8 LIMIT 51)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=4 AND t1.vioset=4 AND t2.vioset=4 AND t3.vioset=36 AND t4.vioset=4 LIMIT 51)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=4 AND t1.vioset=4 AND t2.vioset=4 AND t3.vioset=36 AND t4.vioset=0 LIMIT 51)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=4 AND t1.vioset=4 AND t2.vioset=4 AND t3.vioset=36 AND t4.vioset=32 LIMIT 51)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=4 AND t1.vioset=4 AND t2.vioset=4 AND t3.vioset=36 AND t4.vioset=36 LIMIT 51)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=4 AND t1.vioset=4 AND t2.vioset=4 AND t3.vioset=20 AND t4.vioset=4 LIMIT 51)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=4 AND t1.vioset=4 AND t2.vioset=4 AND t3.vioset=20 AND t4.vioset=0 LIMIT 51)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=4 AND t1.vioset=4 AND t2.vioset=4 AND t3.vioset=20 AND t4.vioset=20 LIMIT 51)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=4 AND t1.vioset=4 AND t2.vioset=4 AND t3.vioset=20 AND t4.vioset=16 LIMIT 51)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=4 AND t1.vioset=4 AND t2.vioset=4 AND t3.vioset=1 AND t4.vioset=4 LIMIT 51)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=4 AND t1.vioset=4 AND t2.vioset=4 AND t3.vioset=1 AND t4.vioset=0 LIMIT 50)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=4 AND t1.vioset=4 AND t2.vioset=4 AND t3.vioset=1 AND t4.vioset=1 LIMIT 49)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=4 AND t1.vioset=4 AND t2.vioset=4 AND t3.vioset=1 AND t4.vioset=5 LIMIT 47)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=4 AND t1.vioset=4 AND t2.vioset=4 AND t3.vioset=5 AND t4.vioset=4 LIMIT 47)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=4 AND t1.vioset=4 AND t2.vioset=4 AND t3.vioset=5 AND t4.vioset=0 LIMIT 47)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=4 AND t1.vioset=4 AND t2.vioset=4 AND t3.vioset=5 AND t4.vioset=1 LIMIT 47)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=4 AND t1.vioset=4 AND t2.vioset=4 AND t3.vioset=5 AND t4.vioset=5 LIMIT 47)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=4 AND t1.vioset=4 AND t2.vioset=4 AND t3.vioset=2 AND t4.vioset=4 LIMIT 47)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=4 AND t1.vioset=4 AND t2.vioset=4 AND t3.vioset=2 AND t4.vioset=0 LIMIT 43)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=4 AND t1.vioset=4 AND t2.vioset=4 AND t3.vioset=2 AND t4.vioset=6 LIMIT 40)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=4 AND t1.vioset=4 AND t2.vioset=4 AND t3.vioset=2 AND t4.vioset=2 LIMIT 40)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=4 AND t1.vioset=4 AND t2.vioset=4 AND t3.vioset=16 AND t4.vioset=4 LIMIT 40)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=4 AND t1.vioset=4 AND t2.vioset=4 AND t3.vioset=16 AND t4.vioset=0 LIMIT 40)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=4 AND t1.vioset=4 AND t2.vioset=4 AND t3.vioset=16 AND t4.vioset=20 LIMIT 40)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=4 AND t1.vioset=4 AND t2.vioset=4 AND t3.vioset=16 AND t4.vioset=16 LIMIT 40)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=4 AND t1.vioset=4 AND t2.vioset=4 AND t3.vioset=8 AND t4.vioset=4 LIMIT 40)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=4 AND t1.vioset=4 AND t2.vioset=4 AND t3.vioset=8 AND t4.vioset=0 LIMIT 40)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=4 AND t1.vioset=4 AND t2.vioset=4 AND t3.vioset=8 AND t4.vioset=12 LIMIT 39)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=4 AND t1.vioset=4 AND t2.vioset=4 AND t3.vioset=8 AND t4.vioset=8 LIMIT 39)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=4 AND t1.vioset=4 AND t2.vioset=0 AND t3.vioset=4 AND t4.vioset=32 LIMIT 39)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=4 AND t1.vioset=4 AND t2.vioset=0 AND t3.vioset=4 AND t4.vioset=6 LIMIT 39)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=4 AND t1.vioset=4 AND t2.vioset=0 AND t3.vioset=4 AND t4.vioset=12 LIMIT 39)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=4 AND t1.vioset=4 AND t2.vioset=0 AND t3.vioset=4 AND t4.vioset=36 LIMIT 39)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=4 AND t1.vioset=4 AND t2.vioset=0 AND t3.vioset=4 AND t4.vioset=20 LIMIT 39)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=4 AND t1.vioset=4 AND t2.vioset=0 AND t3.vioset=4 AND t4.vioset=1 LIMIT 39)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=4 AND t1.vioset=4 AND t2.vioset=0 AND t3.vioset=4 AND t4.vioset=5 LIMIT 38)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=4 AND t1.vioset=4 AND t2.vioset=0 AND t3.vioset=4 AND t4.vioset=2 LIMIT 38)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=4 AND t1.vioset=4 AND t2.vioset=0 AND t3.vioset=4 AND t4.vioset=16 LIMIT 36)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=4 AND t1.vioset=4 AND t2.vioset=0 AND t3.vioset=4 AND t4.vioset=8 LIMIT 36)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=4 AND t1.vioset=4 AND t2.vioset=0 AND t3.vioset=0 AND t4.vioset=32 LIMIT 36)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=4 AND t1.vioset=4 AND t2.vioset=0 AND t3.vioset=0 AND t4.vioset=6 LIMIT 36)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=4 AND t1.vioset=4 AND t2.vioset=0 AND t3.vioset=0 AND t4.vioset=12 LIMIT 36)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=4 AND t1.vioset=4 AND t2.vioset=0 AND t3.vioset=0 AND t4.vioset=36 LIMIT 36)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=4 AND t1.vioset=4 AND t2.vioset=0 AND t3.vioset=0 AND t4.vioset=20 LIMIT 36)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=4 AND t1.vioset=4 AND t2.vioset=0 AND t3.vioset=0 AND t4.vioset=1 LIMIT 36)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=4 AND t1.vioset=4 AND t2.vioset=0 AND t3.vioset=0 AND t4.vioset=5 LIMIT 35)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=4 AND t1.vioset=4 AND t2.vioset=0 AND t3.vioset=0 AND t4.vioset=2 LIMIT 35)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=4 AND t1.vioset=4 AND t2.vioset=0 AND t3.vioset=0 AND t4.vioset=16 LIMIT 34)
);
