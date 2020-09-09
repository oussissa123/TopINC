package uca.limos.api.topk;

import java.io.PrintWriter;

import uca.limos.MainSingleOccurence;
import uca.limos.api.DatasetConfig;

public class TopKPostgres {
	
	/*
--Q3
 --114919
--Q4
; --50
--Q5
--Q6
 --99999
--Q7
 --  100777
--Q8
 --488505
--Q9
 -- 303
--Q10
; --582
--Q11
; --505046
--Q12
; --14831052
--Q13
; --7384207
--Q14
; --287242
--Q15
 --560994
	 */
	// "Q12",
	//"SELECT * FROM synthese1.r0 t0, synthese1.r1 t1, synthese1.r2 t2, synthese1.r3 t3  WHERE a0 = c1 and c1 = b2 and b2 = a3 ORDER BY public.numberbitint(t0.vioset)+public.numberbitint(t1.vioset)+public.numberbitint(t2.vioset)+public.numberbitint(t3.vioset) limit 20",
	static String [] names = {"Q1", "Q2", "Q3", "Q4", "Q5", "Q6", "Q7", "Q8", "Q9", "Q10", "Q11", "Q13", "Q14", "Q15"};
	static String [] queries = {
	"SELECT * FROM hospital.hospital h1, hospital.hospital h2 WHERE h1.hospital_name = h2.hospital_name AND h1.city = h2.city ORDER BY public.numberbitint(h1.vioset)+public.numberbitint(h2.vioset) limit 20",		
	"SELECT * FROM hospital.hospital h1, hospital.hospital h2 WHERE h1.city = h2.city and h1.emergency_service = 'No' and h2.emergency_service = 'No' ORDER BY public.numberbitint(h1.vioset)+public.numberbitint(h2.vioset) limit 20",
	"SELECT * FROM hospital.hospital ORDER BY public.numberbitint(vioset) limit 20",
	"SELECT * FROM hospital.hospital where zip_code = '80204' ORDER BY public.numberbitint(vioset) limit 20",
	"SELECT * FROM hospital.hospital h1, hospital.hospital h2 WHERE h1.hospital_name = h2.hospital_name AND h1.city = h2.city AND h1.hospital_name = 'JAY HOSPITAL' ORDER BY public.numberbitint(h1.vioset)+public.numberbitint(h2.vioset) limit 20",
	"SELECT * FROM tax.TAX ORDER BY public.numberbitint(vioset) limit 20",
	"SELECT * FROM tax.tax t1, tax.tax t2 WHERE t1.fname = t2.fname AND t1.city = t2.city ORDER BY public.numberbitint(t1.vioset)+public.numberbitint(t2.vioset) limit 20",
	"SELECT * FROM tax.TAX t1, tax.TAX t2 WHERE t1.salary = t2.salary AND t1.city = t2.city ORDER BY public.numberbitint(t1.vioset)+public.numberbitint(t2.vioset) limit 20",
	"SELECT * FROM tax.TAX t1, tax.TAX t2 WHERE t1.gender = 'F' and t2.gender = 'M' and t1.phone = t2.phone ORDER BY public.numberbitint(t1.vioset)+public.numberbitint(t2.vioset) limit 20",
	"SELECT * FROM synthese1.r0 t0, synthese1.r1 t1, synthese1.r2 t2 WHERE b0 < c1 and a0 = j2 and f1 = k2 and b0 < 100 ORDER BY public.numberbitint(t0.vioset)+public.numberbitint(t1.vioset)+public.numberbitint(t2.vioset) limit 20",
	"SELECT * FROM synthese1.r0 t0, synthese1.r1 t1, synthese1.r2 t2  WHERE a0 = c1 and c1 = b2 ORDER BY public.numberbitint(t0.vioset)+public.numberbitint(t1.vioset)+public.numberbitint(t2.vioset) limit 20",
	"SELECT * FROM synthese1.r0 t0, synthese1.r1 t1, synthese1.r2 t2, synthese1.r3 t3  WHERE a0 = c1 and c1 = b2 and b2 = a3 and a2 >= c0 ORDER BY public.numberbitint(t0.vioset)+public.numberbitint(t1.vioset)+public.numberbitint(t2.vioset)+public.numberbitint(t3.vioset) limit 20",
	"SELECT * FROM synthese1.r0 t0, synthese1.r1 t1, synthese1.r2 t2, synthese1.r3 t3, synthese1.r4 t4  WHERE a0 = c1 and c1 = b2 and b2 = a3 and a2 >= c0 and a4 = a0 and b4>b3 and c4 <= d1 and b0 < a4 ORDER BY public.numberbitint(t0.vioset)+public.numberbitint(t1.vioset)+public.numberbitint(t2.vioset)+public.numberbitint(t3.vioset)+public.numberbitint(t4.vioset) limit 20",
	"SELECT * FROM synthese1.R0 t0, synthese1.R2 t1, synthese1.R3 t2 WHERE R0.b0 = R2.b2 and R0.a0 = R2.j2 ORDER BY public.numberbitint(t0.vioset)+public.numberbitint(t1.vioset)+public.numberbitint(t2.vioset)+public.numberbitint(t3.vioset) limit 20"
	};
	static String fileName = "topkmonotone/topk.csv";
	public static void executeQueries() throws Exception{
		String res = "name,time";
		System.out.println("Start ... ");
		for (int i = 0; i<names.length; i++) {
			
			System.out.println(names[i]+" execution ===");
			float l = 0;
			for(int j=0; j<MainSingleOccurence.step;j++) {
				DatasetConfig.cleanCache();
				l += MainSingleOccurence.memory_and_time(queries[i]).getTime();
			}
			res += "\n"+names[i]+","+(l/MainSingleOccurence.step);
		}
		PrintWriter pw = new PrintWriter(fileName);
		pw.println(res);
		pw.flush();
		pw.close();
		System.out.println("End ... ");
	}
}
