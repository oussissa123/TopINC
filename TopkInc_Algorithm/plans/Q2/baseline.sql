SET search_path to hospital;
EXPLAIN (ANALYZE, BUFFERS, Format json )(SELECT * FROM hospital t0, hospital t1 WHERE t0.city = t1.city and t0.emergency_service = 'No' and t1.emergency_service = 'No' ORDER BY public.numberbitint(t0.vioset|t1.vioset) LIMIT 10);
