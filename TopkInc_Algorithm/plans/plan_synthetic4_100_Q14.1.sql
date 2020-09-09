SET search_path to synthetic4;
EXPLAIN (ANALYZE, BUFFERS, Format json ) (
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=0 AND t3.vioset=0 AND t4.vioset=0 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=4 AND t1.vioset=4 AND t2.vioset=4 AND t3.vioset=4 AND t4.vioset=4 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=4 AND t1.vioset=4 AND t2.vioset=4 AND t3.vioset=4 AND t4.vioset=0 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=4 AND t1.vioset=4 AND t2.vioset=4 AND t3.vioset=0 AND t4.vioset=4 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=4 AND t1.vioset=4 AND t2.vioset=4 AND t3.vioset=0 AND t4.vioset=0 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=4 AND t1.vioset=4 AND t2.vioset=0 AND t3.vioset=4 AND t4.vioset=4 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=4 AND t1.vioset=4 AND t2.vioset=0 AND t3.vioset=4 AND t4.vioset=0 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=4 AND t1.vioset=4 AND t2.vioset=0 AND t3.vioset=0 AND t4.vioset=4 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=4 AND t1.vioset=4 AND t2.vioset=0 AND t3.vioset=0 AND t4.vioset=0 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=4 AND t1.vioset=0 AND t2.vioset=4 AND t3.vioset=4 AND t4.vioset=4 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=4 AND t1.vioset=0 AND t2.vioset=4 AND t3.vioset=4 AND t4.vioset=0 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=4 AND t1.vioset=0 AND t2.vioset=4 AND t3.vioset=0 AND t4.vioset=4 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=4 AND t1.vioset=0 AND t2.vioset=4 AND t3.vioset=0 AND t4.vioset=0 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=4 AND t1.vioset=0 AND t2.vioset=0 AND t3.vioset=4 AND t4.vioset=4 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=4 AND t1.vioset=0 AND t2.vioset=0 AND t3.vioset=4 AND t4.vioset=0 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=4 AND t1.vioset=0 AND t2.vioset=0 AND t3.vioset=0 AND t4.vioset=4 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=4 AND t1.vioset=0 AND t2.vioset=0 AND t3.vioset=0 AND t4.vioset=0 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=0 AND t1.vioset=4 AND t2.vioset=4 AND t3.vioset=4 AND t4.vioset=4 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=0 AND t1.vioset=4 AND t2.vioset=4 AND t3.vioset=4 AND t4.vioset=0 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=0 AND t1.vioset=4 AND t2.vioset=4 AND t3.vioset=0 AND t4.vioset=4 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=0 AND t1.vioset=4 AND t2.vioset=4 AND t3.vioset=0 AND t4.vioset=0 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=0 AND t1.vioset=4 AND t2.vioset=0 AND t3.vioset=4 AND t4.vioset=4 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=0 AND t1.vioset=4 AND t2.vioset=0 AND t3.vioset=4 AND t4.vioset=0 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=0 AND t1.vioset=4 AND t2.vioset=0 AND t3.vioset=0 AND t4.vioset=4 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=0 AND t1.vioset=4 AND t2.vioset=0 AND t3.vioset=0 AND t4.vioset=0 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=4 AND t3.vioset=4 AND t4.vioset=4 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=4 AND t3.vioset=4 AND t4.vioset=0 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=4 AND t3.vioset=0 AND t4.vioset=4 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=4 AND t3.vioset=0 AND t4.vioset=0 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=0 AND t3.vioset=4 AND t4.vioset=4 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=0 AND t3.vioset=4 AND t4.vioset=0 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=0 AND t3.vioset=0 AND t4.vioset=4 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=0 AND t3.vioset=0 AND t4.vioset=32 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=0 AND t3.vioset=0 AND t4.vioset=1 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=0 AND t3.vioset=0 AND t4.vioset=2 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=0 AND t3.vioset=0 AND t4.vioset=16 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=0 AND t3.vioset=0 AND t4.vioset=8 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=0 AND t3.vioset=32 AND t4.vioset=0 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=0 AND t3.vioset=32 AND t4.vioset=32 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=0 AND t3.vioset=1 AND t4.vioset=0 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=0 AND t3.vioset=1 AND t4.vioset=1 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=0 AND t3.vioset=2 AND t4.vioset=0 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=0 AND t3.vioset=2 AND t4.vioset=2 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=0 AND t3.vioset=16 AND t4.vioset=0 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=0 AND t3.vioset=16 AND t4.vioset=16 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=0 AND t3.vioset=8 AND t4.vioset=0 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=0 AND t3.vioset=8 AND t4.vioset=8 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=32 AND t3.vioset=0 AND t4.vioset=0 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=32 AND t3.vioset=0 AND t4.vioset=32 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=32 AND t3.vioset=32 AND t4.vioset=0 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=32 AND t3.vioset=32 AND t4.vioset=32 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=1 AND t3.vioset=0 AND t4.vioset=0 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=1 AND t3.vioset=0 AND t4.vioset=1 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=1 AND t3.vioset=1 AND t4.vioset=0 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=1 AND t3.vioset=1 AND t4.vioset=1 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=2 AND t3.vioset=0 AND t4.vioset=0 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=2 AND t3.vioset=0 AND t4.vioset=2 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=2 AND t3.vioset=2 AND t4.vioset=0 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=2 AND t3.vioset=2 AND t4.vioset=2 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=16 AND t3.vioset=0 AND t4.vioset=0 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=16 AND t3.vioset=0 AND t4.vioset=16 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=16 AND t3.vioset=16 AND t4.vioset=0 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=16 AND t3.vioset=16 AND t4.vioset=16 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=8 AND t3.vioset=0 AND t4.vioset=0 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=8 AND t3.vioset=0 AND t4.vioset=8 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=8 AND t3.vioset=8 AND t4.vioset=0 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=8 AND t3.vioset=8 AND t4.vioset=8 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=0 AND t1.vioset=32 AND t2.vioset=0 AND t3.vioset=0 AND t4.vioset=0 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=0 AND t1.vioset=32 AND t2.vioset=0 AND t3.vioset=0 AND t4.vioset=32 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=0 AND t1.vioset=32 AND t2.vioset=0 AND t3.vioset=32 AND t4.vioset=0 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=0 AND t1.vioset=32 AND t2.vioset=0 AND t3.vioset=32 AND t4.vioset=32 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=0 AND t1.vioset=32 AND t2.vioset=32 AND t3.vioset=0 AND t4.vioset=0 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=0 AND t1.vioset=32 AND t2.vioset=32 AND t3.vioset=0 AND t4.vioset=32 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=0 AND t1.vioset=32 AND t2.vioset=32 AND t3.vioset=32 AND t4.vioset=0 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=0 AND t1.vioset=32 AND t2.vioset=32 AND t3.vioset=32 AND t4.vioset=32 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=0 AND t1.vioset=1 AND t2.vioset=0 AND t3.vioset=0 AND t4.vioset=0 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=0 AND t1.vioset=1 AND t2.vioset=0 AND t3.vioset=0 AND t4.vioset=1 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=0 AND t1.vioset=1 AND t2.vioset=0 AND t3.vioset=1 AND t4.vioset=0 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=0 AND t1.vioset=1 AND t2.vioset=0 AND t3.vioset=1 AND t4.vioset=1 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=0 AND t1.vioset=1 AND t2.vioset=1 AND t3.vioset=0 AND t4.vioset=0 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=0 AND t1.vioset=1 AND t2.vioset=1 AND t3.vioset=0 AND t4.vioset=1 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=0 AND t1.vioset=1 AND t2.vioset=1 AND t3.vioset=1 AND t4.vioset=0 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=0 AND t1.vioset=1 AND t2.vioset=1 AND t3.vioset=1 AND t4.vioset=1 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=0 AND t1.vioset=2 AND t2.vioset=0 AND t3.vioset=0 AND t4.vioset=0 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=0 AND t1.vioset=2 AND t2.vioset=0 AND t3.vioset=0 AND t4.vioset=2 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=0 AND t1.vioset=2 AND t2.vioset=0 AND t3.vioset=2 AND t4.vioset=0 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=0 AND t1.vioset=2 AND t2.vioset=0 AND t3.vioset=2 AND t4.vioset=2 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=0 AND t1.vioset=2 AND t2.vioset=2 AND t3.vioset=0 AND t4.vioset=0 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=0 AND t1.vioset=2 AND t2.vioset=2 AND t3.vioset=0 AND t4.vioset=2 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=0 AND t1.vioset=2 AND t2.vioset=2 AND t3.vioset=2 AND t4.vioset=0 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=0 AND t1.vioset=2 AND t2.vioset=2 AND t3.vioset=2 AND t4.vioset=2 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=0 AND t1.vioset=16 AND t2.vioset=0 AND t3.vioset=0 AND t4.vioset=0 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=0 AND t1.vioset=16 AND t2.vioset=0 AND t3.vioset=0 AND t4.vioset=16 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=0 AND t1.vioset=16 AND t2.vioset=0 AND t3.vioset=16 AND t4.vioset=0 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=0 AND t1.vioset=16 AND t2.vioset=0 AND t3.vioset=16 AND t4.vioset=16 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=0 AND t1.vioset=16 AND t2.vioset=16 AND t3.vioset=0 AND t4.vioset=0 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=0 AND t1.vioset=16 AND t2.vioset=16 AND t3.vioset=0 AND t4.vioset=16 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=0 AND t1.vioset=16 AND t2.vioset=16 AND t3.vioset=16 AND t4.vioset=0 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=0 AND t1.vioset=16 AND t2.vioset=16 AND t3.vioset=16 AND t4.vioset=16 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=0 AND t1.vioset=8 AND t2.vioset=0 AND t3.vioset=0 AND t4.vioset=0 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=0 AND t1.vioset=8 AND t2.vioset=0 AND t3.vioset=0 AND t4.vioset=8 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=0 AND t1.vioset=8 AND t2.vioset=0 AND t3.vioset=8 AND t4.vioset=0 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=0 AND t1.vioset=8 AND t2.vioset=0 AND t3.vioset=8 AND t4.vioset=8 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=0 AND t1.vioset=8 AND t2.vioset=8 AND t3.vioset=0 AND t4.vioset=0 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=0 AND t1.vioset=8 AND t2.vioset=8 AND t3.vioset=0 AND t4.vioset=8 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=0 AND t1.vioset=8 AND t2.vioset=8 AND t3.vioset=8 AND t4.vioset=0 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=0 AND t1.vioset=8 AND t2.vioset=8 AND t3.vioset=8 AND t4.vioset=8 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=32 AND t1.vioset=0 AND t2.vioset=0 AND t3.vioset=0 AND t4.vioset=0 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=32 AND t1.vioset=0 AND t2.vioset=0 AND t3.vioset=0 AND t4.vioset=32 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=32 AND t1.vioset=0 AND t2.vioset=0 AND t3.vioset=32 AND t4.vioset=0 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=32 AND t1.vioset=0 AND t2.vioset=0 AND t3.vioset=32 AND t4.vioset=32 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=32 AND t1.vioset=0 AND t2.vioset=32 AND t3.vioset=0 AND t4.vioset=0 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=32 AND t1.vioset=0 AND t2.vioset=32 AND t3.vioset=0 AND t4.vioset=32 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=32 AND t1.vioset=0 AND t2.vioset=32 AND t3.vioset=32 AND t4.vioset=0 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=32 AND t1.vioset=0 AND t2.vioset=32 AND t3.vioset=32 AND t4.vioset=32 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=32 AND t1.vioset=32 AND t2.vioset=0 AND t3.vioset=0 AND t4.vioset=0 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=32 AND t1.vioset=32 AND t2.vioset=0 AND t3.vioset=0 AND t4.vioset=32 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=32 AND t1.vioset=32 AND t2.vioset=0 AND t3.vioset=32 AND t4.vioset=0 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=32 AND t1.vioset=32 AND t2.vioset=0 AND t3.vioset=32 AND t4.vioset=32 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=32 AND t1.vioset=32 AND t2.vioset=32 AND t3.vioset=0 AND t4.vioset=0 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=32 AND t1.vioset=32 AND t2.vioset=32 AND t3.vioset=0 AND t4.vioset=32 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=32 AND t1.vioset=32 AND t2.vioset=32 AND t3.vioset=32 AND t4.vioset=0 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=32 AND t1.vioset=32 AND t2.vioset=32 AND t3.vioset=32 AND t4.vioset=32 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=1 AND t1.vioset=0 AND t2.vioset=0 AND t3.vioset=0 AND t4.vioset=0 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=1 AND t1.vioset=0 AND t2.vioset=0 AND t3.vioset=0 AND t4.vioset=1 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=1 AND t1.vioset=0 AND t2.vioset=0 AND t3.vioset=1 AND t4.vioset=0 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=1 AND t1.vioset=0 AND t2.vioset=0 AND t3.vioset=1 AND t4.vioset=1 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=1 AND t1.vioset=0 AND t2.vioset=1 AND t3.vioset=0 AND t4.vioset=0 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=1 AND t1.vioset=0 AND t2.vioset=1 AND t3.vioset=0 AND t4.vioset=1 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=1 AND t1.vioset=0 AND t2.vioset=1 AND t3.vioset=1 AND t4.vioset=0 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=1 AND t1.vioset=0 AND t2.vioset=1 AND t3.vioset=1 AND t4.vioset=1 LIMIT 100)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t1.a1 = t2.a2 AND t2.a2 = t3.a3 AND t3.a3%31=0 AND t0.a0%31=0 AND t1.a1%31=0 AND t1.b1%2=0 AND t2.a2%31=0 AND t2.a2%7=0 AND t4.a4%7=0 AND t4.b4%91=0 AND t0.vioset=1 AND t1.vioset=1 AND t2.vioset=0 AND t3.vioset=0 AND t4.vioset=0 LIMIT 100)
	 UNION ALL 
