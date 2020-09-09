SET search_path to hospital;
EXPLAIN (ANALYZE, BUFFERS, Format json ) (SELECT * FROM hospital t0, hospital t1 WHERE t0.hospital_name = t1.hospital_name AND t0.city = t1.city AND t0.vioset=2748913287168 AND t1.vioset=2748913287168 LIMIT 100);
