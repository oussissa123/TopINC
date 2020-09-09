SET search_path to tax;
EXPLAIN (ANALYZE, BUFFERS, Format json ) (
(SELECT * FROM tax t0, tax t1 WHERE t0.salary = t1.salary AND t0.city = t1.city AND t0.vioset=32 AND t1.vioset=32 LIMIT 300);
