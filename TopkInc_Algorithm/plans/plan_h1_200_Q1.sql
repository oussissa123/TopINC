SET search_path to h1;
EXPLAIN (ANALYZE, BUFFERS, Format json ) (
(SELECT * FROM hospital_2748913287168 t0, hospital_2748913287168 t1 WHERE t0.hospital_name = t1.hospital_name AND t0.city = t1.city)
	 UNION ALL 
