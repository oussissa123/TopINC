SET search_path to hospital;
explain (analyze, buffers, format json) SELECT * FROM hospital h1, hospital h2 WHERE h1.city = h2.city and h1.emergency_service = 'No' and h2.emergency_service = 'No'  ORDER BY public.numberbitint(h1.vioset|h2.vioset);
