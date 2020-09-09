SET search_path to synthetic4;
EXPLAIN (ANALYZE, BUFFERS, Format json ) (
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=0 AND t3.vioset=0 AND t4.vioset=0 LIMIT 50)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=0 AND t3.vioset=0 AND t4.vioset=1 LIMIT 48)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=0 AND t3.vioset=0 AND t4.vioset=2 LIMIT 48)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=0 AND t3.vioset=0 AND t4.vioset=4 LIMIT 48)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=0 AND t3.vioset=0 AND t4.vioset=8 LIMIT 47)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=0 AND t3.vioset=0 AND t4.vioset=16 LIMIT 46)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=0 AND t3.vioset=0 AND t4.vioset=32 LIMIT 46)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=0 AND t3.vioset=1 AND t4.vioset=0 LIMIT 46)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=0 AND t3.vioset=1 AND t4.vioset=1 LIMIT 45)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=0 AND t3.vioset=2 AND t4.vioset=0 LIMIT 44)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=0 AND t3.vioset=2 AND t4.vioset=2 LIMIT 43)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=0 AND t3.vioset=4 AND t4.vioset=0 LIMIT 41)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=0 AND t3.vioset=4 AND t4.vioset=4 LIMIT 40)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=0 AND t3.vioset=8 AND t4.vioset=0 LIMIT 39)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=0 AND t3.vioset=8 AND t4.vioset=8 LIMIT 38)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=0 AND t3.vioset=16 AND t4.vioset=0 LIMIT 37)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=0 AND t3.vioset=16 AND t4.vioset=16 LIMIT 37)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=0 AND t3.vioset=32 AND t4.vioset=0 LIMIT 37)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=0 AND t3.vioset=32 AND t4.vioset=32 LIMIT 37)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=1 AND t3.vioset=0 AND t4.vioset=0 LIMIT 37)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=1 AND t3.vioset=0 AND t4.vioset=1 LIMIT 34)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=1 AND t3.vioset=1 AND t4.vioset=0 LIMIT 30)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=1 AND t3.vioset=1 AND t4.vioset=1 LIMIT 30)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=2 AND t3.vioset=0 AND t4.vioset=0 LIMIT 29)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=2 AND t3.vioset=0 AND t4.vioset=2 LIMIT 29)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=2 AND t3.vioset=2 AND t4.vioset=0 LIMIT 28)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=2 AND t3.vioset=2 AND t4.vioset=2 LIMIT 28)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=4 AND t3.vioset=0 AND t4.vioset=0 LIMIT 26)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=4 AND t3.vioset=0 AND t4.vioset=4 LIMIT 24)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=4 AND t3.vioset=4 AND t4.vioset=0 LIMIT 21)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=4 AND t3.vioset=4 AND t4.vioset=4 LIMIT 19)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=8 AND t3.vioset=0 AND t4.vioset=0 LIMIT 19)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=8 AND t3.vioset=0 AND t4.vioset=8 LIMIT 17)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=8 AND t3.vioset=8 AND t4.vioset=0 LIMIT 16)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=8 AND t3.vioset=8 AND t4.vioset=8 LIMIT 14)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=16 AND t3.vioset=0 AND t4.vioset=0 LIMIT 12)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=16 AND t3.vioset=0 AND t4.vioset=16 LIMIT 12)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=16 AND t3.vioset=16 AND t4.vioset=0 LIMIT 12)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=16 AND t3.vioset=16 AND t4.vioset=16 LIMIT 12)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=32 AND t3.vioset=0 AND t4.vioset=0 LIMIT 12)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=32 AND t3.vioset=0 AND t4.vioset=32 LIMIT 12)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=32 AND t3.vioset=32 AND t4.vioset=0 LIMIT 12)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=32 AND t3.vioset=32 AND t4.vioset=32 LIMIT 12)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=0 AND t1.vioset=1 AND t2.vioset=0 AND t3.vioset=0 AND t4.vioset=0 LIMIT 12)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=0 AND t1.vioset=1 AND t2.vioset=0 AND t3.vioset=0 AND t4.vioset=1 LIMIT 10)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=0 AND t1.vioset=1 AND t2.vioset=0 AND t3.vioset=1 AND t4.vioset=0 LIMIT 9)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=0 AND t1.vioset=1 AND t2.vioset=0 AND t3.vioset=1 AND t4.vioset=1 LIMIT 9)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=0 AND t1.vioset=1 AND t2.vioset=1 AND t3.vioset=0 AND t4.vioset=0 LIMIT 9)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=0 AND t1.vioset=1 AND t2.vioset=1 AND t3.vioset=0 AND t4.vioset=1 LIMIT 8)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=0 AND t1.vioset=1 AND t2.vioset=1 AND t3.vioset=1 AND t4.vioset=0 LIMIT 7)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=0 AND t1.vioset=1 AND t2.vioset=1 AND t3.vioset=1 AND t4.vioset=1 LIMIT 5)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=0 AND t1.vioset=2 AND t2.vioset=0 AND t3.vioset=0 AND t4.vioset=0 LIMIT 3)
	 UNION ALL 
