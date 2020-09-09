set search_path to synthetic4;
explain (analyze, buffers, format json)SELECT * FROM R0 r0, R1 r1, R2 r2, R3 r3, R4 r4 WHERE r0.a0 = r1.a1 AND r0.a0 = r4.a4 AND r1.b1 = r2.b2 AND r3.c3 = r4.c4 and r1.a1 = r4.a4  ORDER BY public.numberbitint(r0.vioset|r1.vioset|r2.vioset|r3.vioset|r4.vioset) LIMIT 100;
