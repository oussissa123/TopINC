UPDATE R3 t3 SET vioset = t3.vioset|1 FROM R2 t2 WHERE t3.A3 = t2.B2; ;

UPDATE R2 t2 SET vioset = t2.vioset|1 FROM R3 t3 WHERE t3.A3 = t2.B2; ;

UPDATE R0 r0 SET vioset = r0.vioset|2 FROM R4 r1 WHERE r0.A0=r1.A4;

UPDATE R4 r1 SET vioset = r1.vioset|2 FROM R0 r0 WHERE r0.A0=r1.A4;

UPDATE R1 r0 SET vioset = r0.vioset|4 FROM R3 r1 WHERE r0.A1=r1.B3;

UPDATE R3 r1 SET vioset = r1.vioset|4 FROM R1 r0 WHERE r0.A1=r1.B3;

UPDATE R4 r2 SET vioset = r2.vioset|8 FROM R4 r3 WHERE r2.A4 = r3.A4;

UPDATE R4 r3 SET vioset = r3.vioset|8 FROM R4 r2 WHERE r2.A4 = r3.A4;

UPDATE R0 t0 SET vioset = t0.vioset|16 WHERE t0.A0%31 = 0;


