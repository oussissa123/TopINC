UPDATE R2 t2 SET vioset = t2.vioset|0 WHERE t2.A2<0.0;

UPDATE R2 r0 SET vioset = r0.vioset|0 FROM R1 r1,R0 r4 WHERE r0.A2=r1.A1 AND r4.A0<=4;

UPDATE R1 r1 SET vioset = r1.vioset|0 FROM R2 r0,R0 r4 WHERE r0.A2=r1.A1 AND r4.A0<=4;

UPDATE R0 r4 SET vioset = r4.vioset|0 FROM R2 r0,R1 r1 WHERE r0.A2=r1.A1 AND r4.A0<=4;

UPDATE R4 r0 SET vioset = r0.vioset|0 FROM R0 r1,R2 r2 WHERE r0.A4=r1.A0 AND r2.A2<199999;

UPDATE R0 r1 SET vioset = r1.vioset|0 FROM R4 r0,R2 r2 WHERE r0.A4=r1.A0 AND r2.A2<199999;

UPDATE R2 r2 SET vioset = r2.vioset|0 FROM R4 r0,R0 r1 WHERE r0.A4=r1.A0 AND r2.A2<199999;

UPDATE R0 r0 SET vioset = r0.vioset|0 FROM R1 r1,R0 r2 WHERE r0.A0=r1.C1 AND r2.A0 = r0.A0 AND r2.B0 <> r0.B0 AND r2.C0 <> r0.C0 AND r2.D0 <> r0.D0 AND r0.B0 < 10; ;

UPDATE R1 r1 SET vioset = r1.vioset|0 FROM R0 r0,R0 r2 WHERE r0.A0=r1.C1 AND r2.A0 = r0.A0 AND r2.B0 <> r0.B0 AND r2.C0 <> r0.C0 AND r2.D0 <> r0.D0 AND r0.B0 < 10; ;

UPDATE R0 r2 SET vioset = r2.vioset|0 FROM R0 r0,R1 r1 WHERE r0.A0=r1.C1 AND r2.A0 = r0.A0 AND r2.B0 <> r0.B0 AND r2.C0 <> r0.C0 AND r2.D0 <> r0.D0 AND r0.B0 < 10; ;

UPDATE R3 r2 SET vioset = r2.vioset|0 FROM R2 r3,R0 r4 WHERE r2.A3=r3.B2 AND r4.A0<=4 AND r3.A2>599998;

UPDATE R2 r3 SET vioset = r3.vioset|0 FROM R3 r2,R0 r4 WHERE r2.A3=r3.B2 AND r4.A0<=4 AND r3.A2>599998;

UPDATE R0 r4 SET vioset = r4.vioset|0 FROM R3 r2,R2 r3 WHERE r2.A3=r3.B2 AND r4.A0<=4 AND r3.A2>599998;

UPDATE R1 t1 SET vioset = t1.vioset|0 WHERE t1.A1>370983.62;

UPDATE R1 r0 SET vioset = r0.vioset|0 FROM R1 r1 WHERE r0.A1=r1.A1;

UPDATE R1 r1 SET vioset = r1.vioset|0 FROM R1 r0 WHERE r0.A1=r1.A1;

UPDATE R1 r0 SET vioset = r0.vioset|0 FROM R1 r1,R2 r2 WHERE r0.A1=r1.A1 AND r0.B1<>r1.B1 AND r2.A2<0; ;

UPDATE R1 r1 SET vioset = r1.vioset|0 FROM R1 r0,R2 r2 WHERE r0.A1=r1.A1 AND r0.B1<>r1.B1 AND r2.A2<0; ;

UPDATE R2 r2 SET vioset = r2.vioset|0 FROM R1 r0,R1 r1 WHERE r0.A1=r1.A1 AND r0.B1<>r1.B1 AND r2.A2<0; ;

UPDATE R4 t4 SET vioset = t4.vioset|0 WHERE t4.A4<=368;

UPDATE R3 r0 SET vioset = r0.vioset|0 FROM R4 r2 WHERE r0.A3<=4 AND r2.A4=0;

UPDATE R4 r2 SET vioset = r2.vioset|0 FROM R3 r0 WHERE r0.A3<=4 AND r2.A4=0;


