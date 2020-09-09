set search_path to synthetic4;
explain (analyze, buffers, format json) SELECT * FROM R0 r0, R1 r1, R3 r3 WHERE r0.d0 = r3.d3 AND r0.d0 = r1.d1  ORDER BY public.numberbitint(r0.vioset|r1.vioset|r3.vioset);
