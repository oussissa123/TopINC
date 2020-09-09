package uca.limos;

import java.io.File;
import java.io.PrintWriter;

public class RunMain {

public static void main(String[] args) {
	try {	
//		MainSingleOccurence2.run();		
//		MainMultiOccurence2.run();
		MainSingleOccurence2_.run();
//		MainMultiOccurence2_.run();
		//Foodinspection_t1, Foodinspection_t2:t1.risk <> t2.risk AND t1.license = t2.license;
//		executeQuery("file.sql");
		
	}catch(Exception e) {e.printStackTrace();}
}



static void create(int answersSize, int searchspace, int dc, String schema) throws Exception{
	long e0 = (1<<dc)-1, e2 = (1<<dc)/2;
	PrintWriter pw = new PrintWriter("data_r0.sql");
	PrintWriter pw2 = new PrintWriter("data_r2.sql");
	
	pw.println("INSERT INTO "+schema+".R0 VALUES ");
	pw2.println("INSERT INTO "+schema+".R2 VALUES ");
	
	int r0Size = 0, r2Size = 0, r0Remind = 0, r2Remind = 0; 
	
	if (answersSize==100000) {
		r0Size = 316; r2Size = 317; r0Remind = 684; r2Remind = 683;
	}
	if (answersSize==200000) {
		r0Size = 447; r2Size = 448; r0Remind = 553; r2Remind = 552;
	}
	if (answersSize==400000) {
		r0Size = 632; r2Size = 633; r0Remind = 368; r2Remind = 367;
	}
	if (answersSize==600000) {
		r0Size = 775; r2Size = 775; r0Remind = 225; r2Remind = 225;
	}

	int kk = 1;
	
	for(int i = 0; i<r2Size; i++) {
			if (i<r0Size)
				pw.println("('a',"+0+", 'c','d',0,'f',1,'h','i',"+e0+"),");
			pw2.println("('a',"+0+", 'c','d',0,'f',1,'h','i',3,"+e2+"),");
			if (kk%searchspace==0){
				e0 = (1<<dc)-1;
				e2 = (1<<dc)/2;
			}
			else {
				e0 = (e0+1)%(1<<dc);
				e2 = (e2+1)%(1<<dc);
			}
			kk++;
	}
	
	for(int i = 0; i<r0Remind; i++) {
			if (i<r2Remind) {
				if (i==r2Remind-1)
					pw2.println("('a',-1, 'c','d',0,'f',1,'h','i',3,"+e2+");");
				else
					pw2.println("('a',-1, 'c','d',0,'f',1,'h','i',3,"+e2+"),");
				
			}
			if (i==r0Remind-1)
				pw.println("('a',-2, 'c','d',0,'f',1,'h','i',"+e0+");");
			else
				pw.println("('a',-2, 'c','d',0,'f',1,'h','i',"+e0+"),");
		
		if (kk%searchspace==0){
			e0 = (1<<dc)-1;
			e2 = (1<<dc)/2;
		}
		else {
			e0 = (e0+1)%(1<<dc);
			e2 = (e2+1)%(1<<dc);
		}
		kk++;
	}	
	
	pw.flush();
	pw2.flush();
	pw2.close();
	pw.close();
	
	File file1 = new File("data_r0.sql");
	File file2 = new File("data_r2.sql");
	
	Process pr = Runtime.getRuntime().exec("psql -U postgres -f "+file1.getAbsolutePath());
	pr.waitFor();
	
	Process pr1 = Runtime.getRuntime().exec("psql -U postgres -f "+file2.getAbsolutePath());
	pr1.waitFor();
	
}



}

