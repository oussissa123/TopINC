package uca.limos;

import java.io.PrintWriter;

import uca.limos.api.DatasetConfig;
import uca.limos.api.Utils;
import uca.limos.api.topk.MostConsistentFirstMultiOccurence;
import uca.limos.api.topk.MostConsistentFirstSingleOccurence;
import uca.limos.api.topk.MostConsistentFirstSingleOccurence_partitions;
import uca.limos.api.topk.Results;

public class SingleOccurMemory {

	public static int step = 1;
	public static String q = "Q14";
	
//	static int values [] = {10, 50, 100, 150, 200, 250, 300};//, 400, 500};
	
	static int values [] = {150,250};//, 400, 500};
	
	
	public static void main(String[] args) throws Exception{
		
//		Utils.doPartition("h2");
		time_memory_("time_memory/time_memory_"+q+".csv");
//		time_memory_repartitions("time_memory/time_memory_"+q+".csv");
//		time_memory_repartitions_("time_memory/time_memory_"+q+".csv");
//		time_memory("time_memory/time_memory_"+q+".csv");
//		memoryTopIncOnly();
	}

	
	static void time_memory_repartitions_(String time_mem) throws Exception{
//		String query = DatasetConfig.query+" LIMIT ";

		PrintWriter pw = new PrintWriter(time_mem);
		pw.println("K,TopInc_time,TopInc_mem");
		for(int i=0; i<values.length; i++) {
			
			System.out.println("========== K = " + values[i] +" =========");
			
			Utils.restartServer();
			MostConsistentFirstSingleOccurence_partitions mo = MostConsistentFirstSingleOccurence_partitions.loadConfigure();
			
			System.out.println("----------- start execution topINC ");
			mo.setK(values[i]);
			mo.algorithm();
			System.out.println("----------- end execution topINC ");
			
			pw.println(values[i]+","+mo.getRealTime()+","+mo.getBlockMemory());
		}
		pw.close();
	}

	
	
	static void time_memory_(String time_mem) throws Exception{

//		String query = DatasetConfig.query+" LIMIT ";

		PrintWriter pw = new PrintWriter(time_mem);
		pw.println("K,TopInc_time,TopInc_mem");
		for(int i=0; i<values.length; i++) {
			
			System.out.println("========== K = " + values[i] +" =========");
			
			Utils.restartServer();
			MostConsistentFirstSingleOccurence mo = MostConsistentFirstSingleOccurence.loadConfigure();
			
			System.out.println("----------- start execution topINC ");
			mo.setK(values[i]);
			mo.algorithm();
			System.out.println("----------- end execution topINC ");
			
			pw.println(values[i]+","+mo.getRealTime()+","+mo.getBlockMemory());
		}
		pw.close();
	}


	static void time_memory_repartitions(String time_mem) throws Exception{

		String query = DatasetConfig.query+" LIMIT ";

		PrintWriter pw = new PrintWriter(time_mem);
		pw.println("K,TopInc_time,TopInc_mem,Baseline_time,Baseline");
		for(int i=0; i<values.length; i++) {
			
			System.out.println("========== K = " + values[i] +" =========");
			
			Utils.restartServer();
		
			MostConsistentFirstSingleOccurence_partitions mo = MostConsistentFirstSingleOccurence_partitions.loadConfigure();
			
			System.out.println("----------- start execution topINC ");
			mo.setK(values[i]);
			mo.algorithm();
			System.out.println("----------- end execution topINC ");
			
			
			Utils.restartServer();
			Results res = new Results();
			
			System.out.println("----------- start execution Baseline ");
			Utils.executeQuery_(query+i, res);
			System.out.println("----------- end execution Baseline ");
			pw.println(values[i]+","+mo.getRealTime()+","+mo.getBlockMemory()+","+res.getRealTime()+","+res.getBlockMemory()+",");
		}
		pw.close();
	}

	
	static void time_memory(String time_mem) throws Exception{

		String query = DatasetConfig.query+" LIMIT ";
		
//		int start = DatasetConfig.init;
//		int inter = DatasetConfig.plus;
//		int end = DatasetConfig.end;

		PrintWriter pw = new PrintWriter(time_mem);
		pw.println("K,TopInc_time,TopInc_mem,Baseline_time,Baseline");
		for(int i=0; i<values.length; i++) {
			
			System.out.println("========== K = " + values[i] +" =========");
			
			Utils.restartServer();
//			MostConsistentFirstMultiOccurence mo = MostConsistentFirstMultiOccurence.loadConfigure();
		
			MostConsistentFirstSingleOccurence mo = MostConsistentFirstSingleOccurence.loadConfigure();
			
			System.out.println("----------- start execution topINC ");
			mo.setK(values[i]);
			mo.algorithm();
			System.out.println("----------- end execution topINC ");
			
			
			Utils.restartServer();
			Results res = new Results();
			
			System.out.println("----------- start execution Baseline ");
			Utils.executeQuery_(query+i, res);
			System.out.println("----------- end execution Baseline ");
			pw.println(values[i]+","+mo.getRealTime()+","+mo.getBlockMemory()+","+res.getRealTime()+","+res.getBlockMemory()+",");
		}
		pw.close();
	}
	
	
	static void memoryTopIncOnly() throws Exception{

//		String query = DatasetConfig.query+" LIMIT ";
		
//		int start = DatasetConfig.init;
//		int inter = DatasetConfig.plus;
//		int end = DatasetConfig.end;
		
		PrintWriter pw = new PrintWriter("memoryTopIncOnly.csv");
		pw.println("K,TopInc");
		
		for(int i=0; i<=values.length; i++) {
			
			System.out.println("========== K = " + i +" =========");
	
			long mm = 0;
//			for (int j=0;j<step;j++) {
				Utils.restartServer();
				MostConsistentFirstMultiOccurence mo = MostConsistentFirstMultiOccurence.loadConfigure();
	
				System.out.println("----------- start execution topINC ");
				mo.setK(i);
				
//				Utils.restartServer();
				
				mo.algorithm();
				
				System.out.println("----------- end execution topINC ");
				mm += mo.getBlockMemory();
//			}
//			Utils.restartServer();
//			Results res = new Results();
//			
//			System.out.println("----------- start execution Baseline ");
//			Utils.executeQuery_(query+i, res);
//			System.out.println("----------- end execution Baseline ");
			mm=mm/step;
			pw.println(i+","+mm);
		}
		pw.close();
	}

	
	
	
	
}
