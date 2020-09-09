SET search_path to s6;
EXPLAIN (ANALYZE, BUFFERS, Format json ) (
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=0 AND t3.vioset=0 AND t4.vioset=0 LIMIT 300)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=8 AND t1.vioset=8 AND t2.vioset=8 AND t3.vioset=8 AND t4.vioset=8 LIMIT 299)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=8 AND t1.vioset=8 AND t2.vioset=8 AND t3.vioset=8 AND t4.vioset=0 LIMIT 299)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=8 AND t1.vioset=8 AND t2.vioset=8 AND t3.vioset=0 AND t4.vioset=8 LIMIT 298)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=8 AND t1.vioset=8 AND t2.vioset=8 AND t3.vioset=0 AND t4.vioset=0 LIMIT 293)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=8 AND t1.vioset=8 AND t2.vioset=0 AND t3.vioset=8 AND t4.vioset=8 LIMIT 292)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=8 AND t1.vioset=8 AND t2.vioset=0 AND t3.vioset=8 AND t4.vioset=0 LIMIT 290)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=8 AND t1.vioset=8 AND t2.vioset=0 AND t3.vioset=0 AND t4.vioset=8 LIMIT 289)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=8 AND t1.vioset=8 AND t2.vioset=0 AND t3.vioset=0 AND t4.vioset=0 LIMIT 289)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=8 AND t1.vioset=0 AND t2.vioset=8 AND t3.vioset=8 AND t4.vioset=8 LIMIT 287)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=8 AND t1.vioset=0 AND t2.vioset=8 AND t3.vioset=8 AND t4.vioset=0 LIMIT 285)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=8 AND t1.vioset=0 AND t2.vioset=8 AND t3.vioset=0 AND t4.vioset=8 LIMIT 282)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=8 AND t1.vioset=0 AND t2.vioset=8 AND t3.vioset=0 AND t4.vioset=0 LIMIT 280)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=8 AND t1.vioset=0 AND t2.vioset=0 AND t3.vioset=8 AND t4.vioset=8 LIMIT 278)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=8 AND t1.vioset=0 AND t2.vioset=0 AND t3.vioset=8 AND t4.vioset=0 LIMIT 278)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=8 AND t1.vioset=0 AND t2.vioset=0 AND t3.vioset=0 AND t4.vioset=8 LIMIT 275)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=8 AND t1.vioset=0 AND t2.vioset=0 AND t3.vioset=0 AND t4.vioset=0 LIMIT 273)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=1 AND t1.vioset=1 AND t2.vioset=1 AND t3.vioset=1 AND t4.vioset=1 LIMIT 273)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=1 AND t1.vioset=1 AND t2.vioset=1 AND t3.vioset=1 AND t4.vioset=0 LIMIT 271)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=1 AND t1.vioset=1 AND t2.vioset=1 AND t3.vioset=0 AND t4.vioset=1 LIMIT 270)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=1 AND t1.vioset=1 AND t2.vioset=1 AND t3.vioset=0 AND t4.vioset=0 LIMIT 268)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=1 AND t1.vioset=1 AND t2.vioset=0 AND t3.vioset=1 AND t4.vioset=1 LIMIT 267)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=1 AND t1.vioset=1 AND t2.vioset=0 AND t3.vioset=1 AND t4.vioset=0 LIMIT 266)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=1 AND t1.vioset=1 AND t2.vioset=0 AND t3.vioset=0 AND t4.vioset=1 LIMIT 266)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=1 AND t1.vioset=1 AND t2.vioset=0 AND t3.vioset=0 AND t4.vioset=0 LIMIT 266)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=1 AND t1.vioset=0 AND t2.vioset=1 AND t3.vioset=1 AND t4.vioset=1 LIMIT 265)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=1 AND t1.vioset=0 AND t2.vioset=1 AND t3.vioset=1 AND t4.vioset=0 LIMIT 263)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=1 AND t1.vioset=0 AND t2.vioset=1 AND t3.vioset=0 AND t4.vioset=1 LIMIT 261)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=1 AND t1.vioset=0 AND t2.vioset=1 AND t3.vioset=0 AND t4.vioset=0 LIMIT 260)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=1 AND t1.vioset=0 AND t2.vioset=0 AND t3.vioset=1 AND t4.vioset=1 LIMIT 260)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=1 AND t1.vioset=0 AND t2.vioset=0 AND t3.vioset=1 AND t4.vioset=0 LIMIT 258)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=1 AND t1.vioset=0 AND t2.vioset=0 AND t3.vioset=0 AND t4.vioset=1 LIMIT 255)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=1 AND t1.vioset=0 AND t2.vioset=0 AND t3.vioset=0 AND t4.vioset=0 LIMIT 254)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=4 AND t1.vioset=4 AND t2.vioset=4 AND t3.vioset=4 AND t4.vioset=4 LIMIT 252)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=4 AND t1.vioset=4 AND t2.vioset=4 AND t3.vioset=4 AND t4.vioset=0 LIMIT 251)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=4 AND t1.vioset=4 AND t2.vioset=4 AND t3.vioset=0 AND t4.vioset=4 LIMIT 249)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=4 AND t1.vioset=4 AND t2.vioset=4 AND t3.vioset=0 AND t4.vioset=0 LIMIT 249)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=4 AND t1.vioset=4 AND t2.vioset=0 AND t3.vioset=4 AND t4.vioset=4 LIMIT 247)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=4 AND t1.vioset=4 AND t2.vioset=0 AND t3.vioset=4 AND t4.vioset=0 LIMIT 246)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=4 AND t1.vioset=4 AND t2.vioset=0 AND t3.vioset=0 AND t4.vioset=4 LIMIT 246)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=4 AND t1.vioset=4 AND t2.vioset=0 AND t3.vioset=0 AND t4.vioset=0 LIMIT 245)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=4 AND t1.vioset=0 AND t2.vioset=4 AND t3.vioset=4 AND t4.vioset=4 LIMIT 244)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=4 AND t1.vioset=0 AND t2.vioset=4 AND t3.vioset=4 AND t4.vioset=0 LIMIT 244)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=4 AND t1.vioset=0 AND t2.vioset=4 AND t3.vioset=0 AND t4.vioset=4 LIMIT 243)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=4 AND t1.vioset=0 AND t2.vioset=4 AND t3.vioset=0 AND t4.vioset=0 LIMIT 243)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=4 AND t1.vioset=0 AND t2.vioset=0 AND t3.vioset=4 AND t4.vioset=4 LIMIT 243)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=4 AND t1.vioset=0 AND t2.vioset=0 AND t3.vioset=4 AND t4.vioset=0 LIMIT 242)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=4 AND t1.vioset=0 AND t2.vioset=0 AND t3.vioset=0 AND t4.vioset=4 LIMIT 240)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=4 AND t1.vioset=0 AND t2.vioset=0 AND t3.vioset=0 AND t4.vioset=0 LIMIT 238)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=2 AND t1.vioset=2 AND t2.vioset=2 AND t3.vioset=2 AND t4.vioset=2 LIMIT 236)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=2 AND t1.vioset=2 AND t2.vioset=2 AND t3.vioset=2 AND t4.vioset=0 LIMIT 234)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=2 AND t1.vioset=2 AND t2.vioset=2 AND t3.vioset=0 AND t4.vioset=2 LIMIT 232)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=2 AND t1.vioset=2 AND t2.vioset=2 AND t3.vioset=0 AND t4.vioset=0 LIMIT 229)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=2 AND t1.vioset=2 AND t2.vioset=0 AND t3.vioset=2 AND t4.vioset=2 LIMIT 228)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=2 AND t1.vioset=2 AND t2.vioset=0 AND t3.vioset=2 AND t4.vioset=0 LIMIT 228)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=2 AND t1.vioset=2 AND t2.vioset=0 AND t3.vioset=0 AND t4.vioset=2 LIMIT 228)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=2 AND t1.vioset=2 AND t2.vioset=0 AND t3.vioset=0 AND t4.vioset=0 LIMIT 227)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=2 AND t1.vioset=0 AND t2.vioset=2 AND t3.vioset=2 AND t4.vioset=2 LIMIT 227)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=2 AND t1.vioset=0 AND t2.vioset=2 AND t3.vioset=2 AND t4.vioset=0 LIMIT 225)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=2 AND t1.vioset=0 AND t2.vioset=2 AND t3.vioset=0 AND t4.vioset=2 LIMIT 225)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=2 AND t1.vioset=0 AND t2.vioset=2 AND t3.vioset=0 AND t4.vioset=0 LIMIT 223)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=2 AND t1.vioset=0 AND t2.vioset=0 AND t3.vioset=2 AND t4.vioset=2 LIMIT 223)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=2 AND t1.vioset=0 AND t2.vioset=0 AND t3.vioset=2 AND t4.vioset=0 LIMIT 221)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=2 AND t1.vioset=0 AND t2.vioset=0 AND t3.vioset=0 AND t4.vioset=2 LIMIT 220)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=2 AND t1.vioset=0 AND t2.vioset=0 AND t3.vioset=0 AND t4.vioset=0 LIMIT 219)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=0 AND t1.vioset=8 AND t2.vioset=8 AND t3.vioset=8 AND t4.vioset=8 LIMIT 216)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=0 AND t1.vioset=8 AND t2.vioset=8 AND t3.vioset=8 AND t4.vioset=0 LIMIT 213)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=0 AND t1.vioset=8 AND t2.vioset=8 AND t3.vioset=0 AND t4.vioset=8 LIMIT 210)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=0 AND t1.vioset=8 AND t2.vioset=8 AND t3.vioset=0 AND t4.vioset=0 LIMIT 209)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=0 AND t1.vioset=8 AND t2.vioset=0 AND t3.vioset=8 AND t4.vioset=8 LIMIT 209)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=0 AND t1.vioset=8 AND t2.vioset=0 AND t3.vioset=8 AND t4.vioset=0 LIMIT 207)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=0 AND t1.vioset=8 AND t2.vioset=0 AND t3.vioset=0 AND t4.vioset=8 LIMIT 207)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=0 AND t1.vioset=8 AND t2.vioset=0 AND t3.vioset=0 AND t4.vioset=0 LIMIT 207)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=0 AND t1.vioset=1 AND t2.vioset=1 AND t3.vioset=1 AND t4.vioset=1 LIMIT 205)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=0 AND t1.vioset=1 AND t2.vioset=1 AND t3.vioset=1 AND t4.vioset=0 LIMIT 204)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=0 AND t1.vioset=1 AND t2.vioset=1 AND t3.vioset=0 AND t4.vioset=1 LIMIT 201)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=0 AND t1.vioset=1 AND t2.vioset=1 AND t3.vioset=0 AND t4.vioset=0 LIMIT 201)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=0 AND t1.vioset=1 AND t2.vioset=0 AND t3.vioset=1 AND t4.vioset=1 LIMIT 200)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=0 AND t1.vioset=1 AND t2.vioset=0 AND t3.vioset=1 AND t4.vioset=0 LIMIT 199)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=0 AND t1.vioset=1 AND t2.vioset=0 AND t3.vioset=0 AND t4.vioset=1 LIMIT 197)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=0 AND t1.vioset=1 AND t2.vioset=0 AND t3.vioset=0 AND t4.vioset=0 LIMIT 195)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=0 AND t1.vioset=4 AND t2.vioset=4 AND t3.vioset=4 AND t4.vioset=4 LIMIT 193)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=0 AND t1.vioset=4 AND t2.vioset=4 AND t3.vioset=4 AND t4.vioset=0 LIMIT 193)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=0 AND t1.vioset=4 AND t2.vioset=4 AND t3.vioset=0 AND t4.vioset=4 LIMIT 192)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=0 AND t1.vioset=4 AND t2.vioset=4 AND t3.vioset=0 AND t4.vioset=0 LIMIT 192)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=0 AND t1.vioset=4 AND t2.vioset=0 AND t3.vioset=4 AND t4.vioset=4 LIMIT 191)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=0 AND t1.vioset=4 AND t2.vioset=0 AND t3.vioset=4 AND t4.vioset=0 LIMIT 190)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=0 AND t1.vioset=4 AND t2.vioset=0 AND t3.vioset=0 AND t4.vioset=4 LIMIT 190)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=0 AND t1.vioset=4 AND t2.vioset=0 AND t3.vioset=0 AND t4.vioset=0 LIMIT 190)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=0 AND t1.vioset=2 AND t2.vioset=2 AND t3.vioset=2 AND t4.vioset=2 LIMIT 189)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=0 AND t1.vioset=2 AND t2.vioset=2 AND t3.vioset=2 AND t4.vioset=0 LIMIT 188)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=0 AND t1.vioset=2 AND t2.vioset=2 AND t3.vioset=0 AND t4.vioset=2 LIMIT 187)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=0 AND t1.vioset=2 AND t2.vioset=2 AND t3.vioset=0 AND t4.vioset=0 LIMIT 185)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=0 AND t1.vioset=2 AND t2.vioset=0 AND t3.vioset=2 AND t4.vioset=2 LIMIT 183)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=0 AND t1.vioset=2 AND t2.vioset=0 AND t3.vioset=2 AND t4.vioset=0 LIMIT 178)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=0 AND t1.vioset=2 AND t2.vioset=0 AND t3.vioset=0 AND t4.vioset=2 LIMIT 176)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=0 AND t1.vioset=2 AND t2.vioset=0 AND t3.vioset=0 AND t4.vioset=0 LIMIT 175)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=8 AND t3.vioset=8 AND t4.vioset=8 LIMIT 174)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=8 AND t3.vioset=8 AND t4.vioset=0 LIMIT 172)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=8 AND t3.vioset=0 AND t4.vioset=8 LIMIT 171)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=8 AND t3.vioset=0 AND t4.vioset=0 LIMIT 170)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=1 AND t3.vioset=1 AND t4.vioset=1 LIMIT 170)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=1 AND t3.vioset=1 AND t4.vioset=0 LIMIT 169)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=1 AND t3.vioset=0 AND t4.vioset=1 LIMIT 168)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=1 AND t3.vioset=0 AND t4.vioset=0 LIMIT 167)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=2 AND t3.vioset=2 AND t4.vioset=2 LIMIT 163)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=2 AND t3.vioset=2 AND t4.vioset=0 LIMIT 162)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=2 AND t3.vioset=0 AND t4.vioset=2 LIMIT 162)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=2 AND t3.vioset=0 AND t4.vioset=0 LIMIT 158)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=4 AND t3.vioset=4 AND t4.vioset=4 LIMIT 158)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=4 AND t3.vioset=4 AND t4.vioset=0 LIMIT 157)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=4 AND t3.vioset=0 AND t4.vioset=4 LIMIT 156)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=4 AND t3.vioset=0 AND t4.vioset=0 LIMIT 156)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=0 AND t3.vioset=8 AND t4.vioset=8 LIMIT 156)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=0 AND t3.vioset=8 AND t4.vioset=0 LIMIT 156)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=0 AND t3.vioset=1 AND t4.vioset=1 LIMIT 155)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=0 AND t3.vioset=1 AND t4.vioset=0 LIMIT 151)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=0 AND t3.vioset=4 AND t4.vioset=4 LIMIT 149)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=0 AND t3.vioset=4 AND t4.vioset=0 LIMIT 149)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=0 AND t3.vioset=2 AND t4.vioset=2 LIMIT 147)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=0 AND t3.vioset=2 AND t4.vioset=0 LIMIT 146)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=0 AND t3.vioset=0 AND t4.vioset=8 LIMIT 146)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=0 AND t3.vioset=0 AND t4.vioset=1 LIMIT 143)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=0 AND t3.vioset=0 AND t4.vioset=2 LIMIT 143)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=0 AND t3.vioset=0 AND t4.vioset=4 LIMIT 142)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=8 AND t1.vioset=8 AND t2.vioset=8 AND t3.vioset=8 AND t4.vioset=10 LIMIT 142)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=8 AND t1.vioset=8 AND t2.vioset=8 AND t3.vioset=8 AND t4.vioset=1 LIMIT 137)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=8 AND t1.vioset=8 AND t2.vioset=8 AND t3.vioset=8 AND t4.vioset=2 LIMIT 136)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=8 AND t1.vioset=8 AND t2.vioset=8 AND t3.vioset=8 AND t4.vioset=4 LIMIT 136)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=8 AND t1.vioset=8 AND t2.vioset=8 AND t3.vioset=10 AND t4.vioset=8 LIMIT 134)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=8 AND t1.vioset=8 AND t2.vioset=8 AND t3.vioset=10 AND t4.vioset=10 LIMIT 131)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=8 AND t1.vioset=8 AND t2.vioset=8 AND t3.vioset=10 AND t4.vioset=2 LIMIT 131)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=8 AND t1.vioset=8 AND t2.vioset=8 AND t3.vioset=10 AND t4.vioset=0 LIMIT 131)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=8 AND t1.vioset=8 AND t2.vioset=8 AND t3.vioset=1 AND t4.vioset=8 LIMIT 131)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=8 AND t1.vioset=8 AND t2.vioset=8 AND t3.vioset=1 AND t4.vioset=1 LIMIT 128)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=8 AND t1.vioset=8 AND t2.vioset=8 AND t3.vioset=1 AND t4.vioset=0 LIMIT 127)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=8 AND t1.vioset=8 AND t2.vioset=8 AND t3.vioset=4 AND t4.vioset=8 LIMIT 127)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=8 AND t1.vioset=8 AND t2.vioset=8 AND t3.vioset=4 AND t4.vioset=4 LIMIT 127)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=8 AND t1.vioset=8 AND t2.vioset=8 AND t3.vioset=4 AND t4.vioset=0 LIMIT 127)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=8 AND t1.vioset=8 AND t2.vioset=8 AND t3.vioset=2 AND t4.vioset=8 LIMIT 125)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=8 AND t1.vioset=8 AND t2.vioset=8 AND t3.vioset=2 AND t4.vioset=10 LIMIT 124)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=8 AND t1.vioset=8 AND t2.vioset=8 AND t3.vioset=2 AND t4.vioset=2 LIMIT 123)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=8 AND t1.vioset=8 AND t2.vioset=8 AND t3.vioset=2 AND t4.vioset=0 LIMIT 119)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=8 AND t1.vioset=8 AND t2.vioset=8 AND t3.vioset=0 AND t4.vioset=10 LIMIT 118)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=8 AND t1.vioset=8 AND t2.vioset=8 AND t3.vioset=0 AND t4.vioset=1 LIMIT 114)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=8 AND t1.vioset=8 AND t2.vioset=8 AND t3.vioset=0 AND t4.vioset=2 LIMIT 113)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=8 AND t1.vioset=8 AND t2.vioset=8 AND t3.vioset=0 AND t4.vioset=4 LIMIT 111)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=8 AND t1.vioset=8 AND t2.vioset=10 AND t3.vioset=8 AND t4.vioset=8 LIMIT 111)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=8 AND t1.vioset=8 AND t2.vioset=10 AND t3.vioset=8 AND t4.vioset=10 LIMIT 110)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=8 AND t1.vioset=8 AND t2.vioset=10 AND t3.vioset=8 AND t4.vioset=2 LIMIT 109)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=8 AND t1.vioset=8 AND t2.vioset=10 AND t3.vioset=8 AND t4.vioset=0 LIMIT 108)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=8 AND t1.vioset=8 AND t2.vioset=10 AND t3.vioset=10 AND t4.vioset=8 LIMIT 106)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=8 AND t1.vioset=8 AND t2.vioset=10 AND t3.vioset=10 AND t4.vioset=10 LIMIT 105)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=8 AND t1.vioset=8 AND t2.vioset=10 AND t3.vioset=10 AND t4.vioset=2 LIMIT 105)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=8 AND t1.vioset=8 AND t2.vioset=10 AND t3.vioset=10 AND t4.vioset=0 LIMIT 105)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=8 AND t1.vioset=8 AND t2.vioset=10 AND t3.vioset=2 AND t4.vioset=8 LIMIT 104)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=8 AND t1.vioset=8 AND t2.vioset=10 AND t3.vioset=2 AND t4.vioset=10 LIMIT 102)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=8 AND t1.vioset=8 AND t2.vioset=10 AND t3.vioset=2 AND t4.vioset=2 LIMIT 102)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=8 AND t1.vioset=8 AND t2.vioset=10 AND t3.vioset=2 AND t4.vioset=0 LIMIT 99)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=8 AND t1.vioset=8 AND t2.vioset=10 AND t3.vioset=0 AND t4.vioset=8 LIMIT 98)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=8 AND t1.vioset=8 AND t2.vioset=10 AND t3.vioset=0 AND t4.vioset=10 LIMIT 97)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=8 AND t1.vioset=8 AND t2.vioset=10 AND t3.vioset=0 AND t4.vioset=2 LIMIT 95)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=8 AND t1.vioset=8 AND t2.vioset=10 AND t3.vioset=0 AND t4.vioset=0 LIMIT 93)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=8 AND t1.vioset=8 AND t2.vioset=1 AND t3.vioset=8 AND t4.vioset=8 LIMIT 92)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=8 AND t1.vioset=8 AND t2.vioset=1 AND t3.vioset=8 AND t4.vioset=1 LIMIT 89)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=8 AND t1.vioset=8 AND t2.vioset=1 AND t3.vioset=8 AND t4.vioset=0 LIMIT 86)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=8 AND t1.vioset=8 AND t2.vioset=1 AND t3.vioset=1 AND t4.vioset=8 LIMIT 85)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=8 AND t1.vioset=8 AND t2.vioset=1 AND t3.vioset=1 AND t4.vioset=1 LIMIT 84)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=8 AND t1.vioset=8 AND t2.vioset=1 AND t3.vioset=1 AND t4.vioset=0 LIMIT 83)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=8 AND t1.vioset=8 AND t2.vioset=1 AND t3.vioset=0 AND t4.vioset=8 LIMIT 82)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=8 AND t1.vioset=8 AND t2.vioset=1 AND t3.vioset=0 AND t4.vioset=1 LIMIT 82)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=8 AND t1.vioset=8 AND t2.vioset=1 AND t3.vioset=0 AND t4.vioset=0 LIMIT 79)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=8 AND t1.vioset=8 AND t2.vioset=2 AND t3.vioset=8 AND t4.vioset=8 LIMIT 78)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=8 AND t1.vioset=8 AND t2.vioset=2 AND t3.vioset=8 AND t4.vioset=10 LIMIT 76)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=8 AND t1.vioset=8 AND t2.vioset=2 AND t3.vioset=8 AND t4.vioset=2 LIMIT 74)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=8 AND t1.vioset=8 AND t2.vioset=2 AND t3.vioset=8 AND t4.vioset=0 LIMIT 73)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=8 AND t1.vioset=8 AND t2.vioset=2 AND t3.vioset=10 AND t4.vioset=8 LIMIT 73)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=8 AND t1.vioset=8 AND t2.vioset=2 AND t3.vioset=10 AND t4.vioset=10 LIMIT 72)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=8 AND t1.vioset=8 AND t2.vioset=2 AND t3.vioset=10 AND t4.vioset=2 LIMIT 70)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=8 AND t1.vioset=8 AND t2.vioset=2 AND t3.vioset=10 AND t4.vioset=0 LIMIT 68)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=8 AND t1.vioset=8 AND t2.vioset=2 AND t3.vioset=2 AND t4.vioset=8 LIMIT 66)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=8 AND t1.vioset=8 AND t2.vioset=2 AND t3.vioset=2 AND t4.vioset=10 LIMIT 64)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=8 AND t1.vioset=8 AND t2.vioset=2 AND t3.vioset=2 AND t4.vioset=2 LIMIT 63)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=8 AND t1.vioset=8 AND t2.vioset=2 AND t3.vioset=2 AND t4.vioset=0 LIMIT 61)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=8 AND t1.vioset=8 AND t2.vioset=2 AND t3.vioset=0 AND t4.vioset=8 LIMIT 60)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=8 AND t1.vioset=8 AND t2.vioset=2 AND t3.vioset=0 AND t4.vioset=10 LIMIT 57)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=8 AND t1.vioset=8 AND t2.vioset=2 AND t3.vioset=0 AND t4.vioset=2 LIMIT 56)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=8 AND t1.vioset=8 AND t2.vioset=2 AND t3.vioset=0 AND t4.vioset=0 LIMIT 56)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=8 AND t1.vioset=8 AND t2.vioset=4 AND t3.vioset=8 AND t4.vioset=8 LIMIT 53)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=8 AND t1.vioset=8 AND t2.vioset=4 AND t3.vioset=8 AND t4.vioset=4 LIMIT 52)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=8 AND t1.vioset=8 AND t2.vioset=4 AND t3.vioset=8 AND t4.vioset=0 LIMIT 52)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=8 AND t1.vioset=8 AND t2.vioset=4 AND t3.vioset=4 AND t4.vioset=8 LIMIT 50)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=8 AND t1.vioset=8 AND t2.vioset=4 AND t3.vioset=4 AND t4.vioset=4 LIMIT 48)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=8 AND t1.vioset=8 AND t2.vioset=4 AND t3.vioset=4 AND t4.vioset=0 LIMIT 46)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=8 AND t1.vioset=8 AND t2.vioset=4 AND t3.vioset=0 AND t4.vioset=8 LIMIT 44)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=8 AND t1.vioset=8 AND t2.vioset=4 AND t3.vioset=0 AND t4.vioset=4 LIMIT 43)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=8 AND t1.vioset=8 AND t2.vioset=4 AND t3.vioset=0 AND t4.vioset=0 LIMIT 43)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=8 AND t1.vioset=8 AND t2.vioset=0 AND t3.vioset=8 AND t4.vioset=10 LIMIT 42)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=8 AND t1.vioset=8 AND t2.vioset=0 AND t3.vioset=8 AND t4.vioset=1 LIMIT 41)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=8 AND t1.vioset=8 AND t2.vioset=0 AND t3.vioset=8 AND t4.vioset=2 LIMIT 40)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=8 AND t1.vioset=8 AND t2.vioset=0 AND t3.vioset=8 AND t4.vioset=4 LIMIT 40)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=8 AND t1.vioset=8 AND t2.vioset=0 AND t3.vioset=10 AND t4.vioset=8 LIMIT 40)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=8 AND t1.vioset=8 AND t2.vioset=0 AND t3.vioset=10 AND t4.vioset=10 LIMIT 38)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=8 AND t1.vioset=8 AND t2.vioset=0 AND t3.vioset=10 AND t4.vioset=2 LIMIT 37)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=8 AND t1.vioset=8 AND t2.vioset=0 AND t3.vioset=10 AND t4.vioset=0 LIMIT 37)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=8 AND t1.vioset=8 AND t2.vioset=0 AND t3.vioset=1 AND t4.vioset=8 LIMIT 37)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=8 AND t1.vioset=8 AND t2.vioset=0 AND t3.vioset=1 AND t4.vioset=1 LIMIT 37)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=8 AND t1.vioset=8 AND t2.vioset=0 AND t3.vioset=1 AND t4.vioset=0 LIMIT 36)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=8 AND t1.vioset=8 AND t2.vioset=0 AND t3.vioset=4 AND t4.vioset=8 LIMIT 34)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=8 AND t1.vioset=8 AND t2.vioset=0 AND t3.vioset=4 AND t4.vioset=4 LIMIT 33)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=8 AND t1.vioset=8 AND t2.vioset=0 AND t3.vioset=4 AND t4.vioset=0 LIMIT 31)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=8 AND t1.vioset=8 AND t2.vioset=0 AND t3.vioset=2 AND t4.vioset=8 LIMIT 31)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=8 AND t1.vioset=8 AND t2.vioset=0 AND t3.vioset=2 AND t4.vioset=10 LIMIT 29)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=8 AND t1.vioset=8 AND t2.vioset=0 AND t3.vioset=2 AND t4.vioset=2 LIMIT 28)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=8 AND t1.vioset=8 AND t2.vioset=0 AND t3.vioset=2 AND t4.vioset=0 LIMIT 27)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=8 AND t1.vioset=8 AND t2.vioset=0 AND t3.vioset=0 AND t4.vioset=10 LIMIT 27)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=8 AND t1.vioset=8 AND t2.vioset=0 AND t3.vioset=0 AND t4.vioset=1 LIMIT 26)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=8 AND t1.vioset=8 AND t2.vioset=0 AND t3.vioset=0 AND t4.vioset=2 LIMIT 26)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=8 AND t1.vioset=8 AND t2.vioset=0 AND t3.vioset=0 AND t4.vioset=4 LIMIT 24)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=8 AND t1.vioset=10 AND t2.vioset=8 AND t3.vioset=8 AND t4.vioset=8 LIMIT 22)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=8 AND t1.vioset=10 AND t2.vioset=8 AND t3.vioset=8 AND t4.vioset=10 LIMIT 21)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=8 AND t1.vioset=10 AND t2.vioset=8 AND t3.vioset=8 AND t4.vioset=2 LIMIT 18)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=8 AND t1.vioset=10 AND t2.vioset=8 AND t3.vioset=8 AND t4.vioset=0 LIMIT 17)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=8 AND t1.vioset=10 AND t2.vioset=8 AND t3.vioset=10 AND t4.vioset=8 LIMIT 17)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=8 AND t1.vioset=10 AND t2.vioset=8 AND t3.vioset=10 AND t4.vioset=10 LIMIT 17)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=8 AND t1.vioset=10 AND t2.vioset=8 AND t3.vioset=10 AND t4.vioset=2 LIMIT 16)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=8 AND t1.vioset=10 AND t2.vioset=8 AND t3.vioset=10 AND t4.vioset=0 LIMIT 15)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=8 AND t1.vioset=10 AND t2.vioset=8 AND t3.vioset=2 AND t4.vioset=8 LIMIT 10)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=8 AND t1.vioset=10 AND t2.vioset=8 AND t3.vioset=2 AND t4.vioset=10 LIMIT 10)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=8 AND t1.vioset=10 AND t2.vioset=8 AND t3.vioset=2 AND t4.vioset=2 LIMIT 8)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=8 AND t1.vioset=10 AND t2.vioset=8 AND t3.vioset=2 AND t4.vioset=0 LIMIT 7)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=8 AND t1.vioset=10 AND t2.vioset=8 AND t3.vioset=0 AND t4.vioset=8 LIMIT 7)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=8 AND t1.vioset=10 AND t2.vioset=8 AND t3.vioset=0 AND t4.vioset=10 LIMIT 7)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=8 AND t1.vioset=10 AND t2.vioset=8 AND t3.vioset=0 AND t4.vioset=2 LIMIT 7)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=8 AND t1.vioset=10 AND t2.vioset=8 AND t3.vioset=0 AND t4.vioset=0 LIMIT 6)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=8 AND t1.vioset=10 AND t2.vioset=10 AND t3.vioset=8 AND t4.vioset=8 LIMIT 5)
	 UNION ALL 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 AND t0.vioset=8 AND t1.vioset=10 AND t2.vioset=10 AND t3.vioset=8 AND t4.vioset=10 LIMIT 4)
	 UNION ALL 
