package uca.limos.api;

import java.io.File;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

import org.json.JSONObject;

import uca.limos.api.topk.Results;

public class Utils {

	public static PrintWriter pw = null;
	
	public static InputStream executeQueryStream(String file) {
		InputStream result = null;
		try {
			File f = new File(file);
			String command = "psql -U postgres -d postgres -f "+f.getAbsolutePath();
			Process p = Runtime.getRuntime().exec(command);
			result = p.getInputStream();			
		}catch(Exception e) {e.printStackTrace();}
		return result;
	}

	public static void executeQuery_(String query, Results finalResult) throws Exception {
		String val = "EXPLAIN (ANALYZE, BUFFERS, FORMAT json) "+query+";";
		val = "SET search_path to "+DatasetConfig.schema+";\n"+val;
		
//		String file = DatasetConfig.path+"/file.sql";
		
		String file = "file.sql";
		
		PrintWriter pw = new PrintWriter(new File(file));
		pw.println(val);
		pw.close();
		
//		System.out.println("start ---------------");
		
//		InputStream res = MainSingleOccurence2.executeCommand("sudo -S -u postgres psql -U postgres -d postgres -a -f "+file, "65515525");
		
		InputStream res = executeQueryStream(file);
		
//		System.out.println("end ---------------");
		
		String str  = "";
		Scanner sc = new Scanner(res);
		while(sc.hasNext()) {
			String line = sc.nextLine();
			if (line.matches("(-)+"))
				break;
		}
		
		while(sc.hasNext()) {
			String value = sc.nextLine();
			str+=value.substring(0, value.length()-1)+"\n";
		}
				
		res.close();
		sc.close();
		
		if (str.startsWith(" [")) 
			str = str.substring(2);
		if (str.endsWith("]"))
			str = str.substring(0, str.length()-1);

		pw.println("=====================================================================\n"+str+"\n =====================================================================");
		
//		System.out.println(str);
//		System.exit(0);
		
		JSONObject object = new JSONObject(str);
		JSONObject plan = object.getJSONObject("Plan");
		
//		int shb = plan.getInt("Shared Hit Blocks");
		//4950
		//4893
		
//		System.out.println(shb);
		
		int srb = plan.getInt("Shared Read Blocks");
		
//		int sdb = plan.getInt("Shared Dirtied Blocks");
//		int swb = plan.getInt("Shared Written Blocks");
//		int lhb = plan.getInt("Local Hit Blocks");
		
		int lrb = plan.getInt("Local Read Blocks");
		
//		int ldb = plan.getInt("Local Dirtied Blocks");
//		int lwb = plan.getInt("Local Written Blocks");

		int trb = plan.getInt("Temp Read Blocks");

//		int twb = plan.getInt("Temp Written Blocks");
		
		float tim = object.getFloat("Execution Time");
		finalResult.addTime(tim);
		finalResult.addResu(plan.getInt("Actual Rows"));
		//realMemory
//		long realMemory = Math.max(finalResult.getRealMemory(), 
//						((shb+srb+sdb+swb+lhb+lrb+ldb+lwb+trb+twb)*8192)/1000);
		//8192
		long realMemory = ((srb+lrb+trb)*8192)+finalResult.getRealMemory();
		finalResult.setRealMemory(realMemory);
		
//		System.out.println("srb: "+srb + " lrb: " + lrb + " trb: "+trb);
		
		long blockMemory = (srb+lrb+trb)+finalResult.getBlockMemory();
		finalResult.setBlockMemory(blockMemory);
		
//		long realMemory = ( (srb/1000)+(lrb/1000)+(trb/1000) )*8192;
//		finalResult.AddMemory(realMemory);
	}

	public static long pow(long base, long expo) {
		long res = 1;
		for (int i=0; i<expo; i++)
			res *= base;
		
		return res;
	}
	
	public static void startMemoryMonitoring() {
		Thread tr = new Thread(new Runnable() {
			@Override
			public void run() {
				long freeMemory = getSystemFreeInKO();
				DatasetConfig.maxFreeMemory = freeMemory;
				DatasetConfig.minFreeMemory = freeMemory;
				DatasetConfig.monitorMemory = true;
				while(DatasetConfig.monitorMemory) 
					DatasetConfig.minFreeMemory = Math.min(DatasetConfig.minFreeMemory, getSystemFreeInKO());
			}
		});
		tr.start();
	}
	
	public static long getSystemFreeInKO() {
		long res = 0;
		try {
			Process p = Runtime.getRuntime().exec("free -k");
			p.waitFor();
			if (p.exitValue()==0) {
				Scanner sc = new Scanner(p.getInputStream());
				sc.nextLine();
				res = Long.parseLong((sc.nextLine()).split("( )+")[3]);
				sc.close();
			}
		}catch(Exception e) {e.printStackTrace();}
//		System.out.println(res);
		return res;
	}
	
	public static long getSystemMemoryConsumedInKO() {
		return DatasetConfig.maxFreeMemory-DatasetConfig.minFreeMemory;
	}
	
	public static void endMonitoring() {
		DatasetConfig.monitorMemory = false;
	}

	public static void restartServer() throws Exception{

		String str = "sudo -S systemctl restart postgresql";
		
		Process pr = Runtime.getRuntime().exec(str);
		PrintWriter pw = new PrintWriter(pr.getOutputStream());
		pw.println("65515525");
		pw.close();
		pr.waitFor();
//		System.out.println(pr.exitValue());
		if (pr.exitValue()!=0)
			throw new Exception("Problème de demarrage du serveur ...");
		
//		String cache = "sudo -S sysctl vm.drop_caches=3";
//	
//		Process pr1 = Runtime.getRuntime().exec(cache);
//		PrintWriter pw1 = new PrintWriter(pr1.getOutputStream());
//		pw1.println("65515525");
//		pw1.close();
//		pr1.waitFor();
//		if (pr1.exitValue()!=0) 
//			throw new Exception("Problème du vidage du cache ...");
			
		DatasetConfig.instanciateStatement();
	}
	
	
	public static void doPartition(String schema) throws Exception{
		String query = "select table_name from information_schema.tables where table_schema = '"+schema+"'";
		ResultSet res = DatasetConfig.statement.executeQuery(query);
		List<String> relations = new ArrayList<String>();
		while(res.next()) 
			relations.add(res.getString(1));
		res.close();
		
		String partitions = "";
		for(String rel:relations) {
			res = DatasetConfig.statement.executeQuery("SELECT distinct vioset FROM "+schema+"."+rel+";");
			while (res.next()) {
				//create table r4_3 partition of r4  for values in (3);
				long r = res.getLong(1);
				partitions += "CREATE TABLE "+rel+ "_" +r+ " PARTITION OF "+rel+" FOR VALUES IN ("+r+");\n";
			}
			res.close();
		}
		
		PrintWriter pw = new PrintWriter("partitions.sql");
		pw.println(partitions);
		pw.close();
	}
	
	
}
