SET search_path to h1;
EXPLAIN (ANALYZE, BUFFERS, Format json ) (
(SELECT * FROM hospital_2748913287168 t0, hospital_2748913287168 t1 WHERE t0.city = t1.city and t0.emergency_service = 'No' and t1.emergency_service = 'No')
	 UNION ALL 
