SET search_path to hospital;
EXPLAIN (ANALYZE, BUFFERS, Format json ) (
(SELECT * FROM hospital t0, hospital t1 WHERE t0.city = t1.city and t0.emergency_service = 'No' and t1.emergency_service = 'No' AND t0.vioset=2748913287168 AND t1.vioset=2748913287168 LIMIT 150)
	 UNION ALL 
