SET search_path to s5;
EXPLAIN (ANALYZE, BUFFERS, Format json ) 
(SELECT * FROM R0 t0, R1 t1, R2 t2, R3 t3, R4 t4 WHERE 
t0.a0 = t1.a1 AND t0.a0 = t4.a4 AND t1.b1 = t2.b2 AND t3.c3 = t4.c4 and t1.a1 = t4.a4  
ORDER BY public.numberbitint(t0.vioset|t1.vioset|t2.vioset|t3.vioset|t4.vioset)
LIMIT 50);
