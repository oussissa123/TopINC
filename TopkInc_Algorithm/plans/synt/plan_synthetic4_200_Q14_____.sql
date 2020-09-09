SET search_path to synthetic4;
EXPLAIN (ANALYZE, BUFFERS, Format json ) (
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=32 AND t1.vioset=32 AND t2.vioset=32 AND t3.vioset=0 AND t4.vioset=32 LIMIT 101)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=32 AND t1.vioset=32 AND t2.vioset=32 AND t3.vioset=32 AND t4.vioset=0 LIMIT 101)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=32 AND t1.vioset=32 AND t2.vioset=32 AND t3.vioset=32 AND t4.vioset=32 LIMIT 101)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=1 AND t1.vioset=0 AND t2.vioset=0 AND t3.vioset=0 AND t4.vioset=0 LIMIT 101)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=1 AND t1.vioset=0 AND t2.vioset=0 AND t3.vioset=0 AND t4.vioset=1 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=1 AND t1.vioset=0 AND t2.vioset=0 AND t3.vioset=1 AND t4.vioset=0 LIMIT 97)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=1 AND t1.vioset=0 AND t2.vioset=0 AND t3.vioset=1 AND t4.vioset=1 LIMIT 97)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=1 AND t1.vioset=0 AND t2.vioset=1 AND t3.vioset=0 AND t4.vioset=0 LIMIT 95)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=1 AND t1.vioset=0 AND t2.vioset=1 AND t3.vioset=0 AND t4.vioset=1 LIMIT 95)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=1 AND t1.vioset=0 AND t2.vioset=1 AND t3.vioset=1 AND t4.vioset=0 LIMIT 95)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=1 AND t1.vioset=0 AND t2.vioset=1 AND t3.vioset=1 AND t4.vioset=1 LIMIT 92)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=1 AND t1.vioset=1 AND t2.vioset=0 AND t3.vioset=0 AND t4.vioset=0 LIMIT 91)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=1 AND t1.vioset=1 AND t2.vioset=0 AND t3.vioset=0 AND t4.vioset=1 LIMIT 91)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=1 AND t1.vioset=1 AND t2.vioset=0 AND t3.vioset=1 AND t4.vioset=0 LIMIT 88)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=1 AND t1.vioset=1 AND t2.vioset=0 AND t3.vioset=1 AND t4.vioset=1 LIMIT 86)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=1 AND t1.vioset=1 AND t2.vioset=1 AND t3.vioset=0 AND t4.vioset=0 LIMIT 85)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=1 AND t1.vioset=1 AND t2.vioset=1 AND t3.vioset=0 AND t4.vioset=1 LIMIT 84)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=1 AND t1.vioset=1 AND t2.vioset=1 AND t3.vioset=1 AND t4.vioset=0 LIMIT 83)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=1 AND t1.vioset=1 AND t2.vioset=1 AND t3.vioset=1 AND t4.vioset=1 LIMIT 82)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=2 AND t1.vioset=0 AND t2.vioset=0 AND t3.vioset=0 AND t4.vioset=0 LIMIT 82)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=2 AND t1.vioset=0 AND t2.vioset=0 AND t3.vioset=0 AND t4.vioset=2 LIMIT 80)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=2 AND t1.vioset=0 AND t2.vioset=0 AND t3.vioset=2 AND t4.vioset=0 LIMIT 79)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=2 AND t1.vioset=0 AND t2.vioset=0 AND t3.vioset=2 AND t4.vioset=2 LIMIT 78)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4 AND t0.vioset=2 AND t1.vioset=0 AND t2.vioset=2 AND t3.vioset=0 AND t4.vioset=0 LIMIT 78)
);
