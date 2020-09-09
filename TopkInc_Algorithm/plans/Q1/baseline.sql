SET search_path to hospital;
EXPLAIN (ANALYZE, BUFFERS, Format json ) (SELECT * FROM hospital t0, hospital t1 WHERE t0.hospital_name = t1.hospital_name AND t0.city = t1.city ORDER BY public.numberbitint(t0.vioset|t1.vioset) LIMIT 10);
