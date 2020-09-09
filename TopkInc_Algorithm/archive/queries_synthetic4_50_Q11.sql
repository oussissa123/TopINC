------- 50 -------------
SET search_path to synthetic4;
EXPLAIN (ANALYZE, BUFFERS, FORMAT json) SELECT * FROM R0 t0, R1 t1, R3 t2 WHERE t0.d0 = t1.d1 AND t0.d0 = t2.d3 AND t0.vioset=0 AND t1.vioset=0 AND t2.vioset=0 LIMIT 50;
