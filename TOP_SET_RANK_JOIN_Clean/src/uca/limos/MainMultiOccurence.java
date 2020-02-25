package uca.limos;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.Properties;
import java.util.Scanner;
import java.util.Set;

import org.json.JSONObject;

import uca.limos.api.DatasetConfig;
import uca.limos.api.measures.EvaluateMeasureRuntime;
import uca.limos.api.preprocess.Preprocessing;
import uca.limos.api.topk.MostConsistentFirstMultiOccurence;

public class MainMultiOccurence {
	
public static int step = 1;
public static String path = "/home/ousissa/eclipse-workspace/TOP_SET_RANK_JOIN/";
static String file = path+"results/"+DatasetConfig.schema+"/experimentbyk.csv";

private static int vc = 30;
static long all0 = 1000;
static long all2 = 1000;
static long all3 = 1000;

public static InputStream executeCommand(String command, String passwd) throws Exception {
	Process p = Runtime.getRuntime().exec(command);
	PrintWriter pw = new PrintWriter(p.getOutputStream());
	pw.println(passwd);
	pw.flush();
	pw.close();
	p.waitFor();
	if (p.exitValue()!=0)
		DatasetConfig.printError(p);	
	return p.getInputStream();
}
private static void fig() {
	try {
		String res = path+"results/"+DatasetConfig.schema+"/measure_set_times_fig";
		Process p = Runtime.getRuntime().exec("python measure_times.py " + EvaluateMeasureRuntime.pathBag + " " + EvaluateMeasureRuntime.pathSet + " " + res);
		p.waitFor();
		if (p.exitValue()!=0)
			DatasetConfig.printError(p);	
	}catch(Exception e) {e.printStackTrace();}
}
private static void preprocess_runtime() {
	try {
		String path1 = path+"results/"+DatasetConfig.schema+"/time.csv";
		String res = path+"results/"+DatasetConfig.schema+"/fig_time";
		Process p = Runtime.getRuntime().exec("python plotbar.py " + path1 + " " + res);
		p.waitFor();
		if (p.exitValue()!=0)
			DatasetConfig.printError(p);
		
	}catch(Exception e) {e.printStackTrace();}
}
static long block = 0;
public static void run() throws Exception{
	
	if (DatasetConfig.do_preprocess) {
		System.out.println("============== Starting preprocessing ===================");
		Preprocessing.preprossing();
		preprocess_runtime();
		System.out.println("============== End preprocessing =================");
	}
	
	if (DatasetConfig.fixedk) {
		String str = "X,S,F,SM,FM,B";
		end();
		//float i = 0.0000001f; i<=2f;i*=10f
		for(float i = 0.001f; i<=2f;i*=5f) {
				init3();
				nextAddingData3(i);
				Resource timeS = execute_semi(DatasetConfig.k);
				Resource timeF = execute_full(DatasetConfig.k);
				float tf = timeF.getTime();
				float tm = timeF.getMemory();
				float ts = timeS.getTime();
				float t_ = timeS.getMemory();
				str +="\n"+i+","+ts+","+tf+","+t_+","+tm+","+block;
				System.out.println(i);
				end();
		}
		//ploting
		String path = "results/"+DatasetConfig.schema+"/ploting.csv";
		String plot = "results/"+DatasetConfig.schema+"/plot";
		PrintWriter pw = new PrintWriter(path);
		pw.println(str);
		pw.close();
		Process p = Runtime.getRuntime().exec("python plotv1.py "+path+" "+plot);
		p.waitFor();
		if (p.exitValue()!=0)
			DatasetConfig.printError(p);
		//return;
	}
	
	if (DatasetConfig.evaluate_measure) {
		EvaluateMeasureRuntime e = new EvaluateMeasureRuntime();
		System.out.println("\n\n ========================= Evaluate measure runtime starting ========================");
		e.run2();
		fig();
		System.out.println("\n\n ========================= Evaluate measure runtime end ========================\n");
	}
	
	if (DatasetConfig.topk) {
			executeExperimentByK();
			//ploting
			if (DatasetConfig.do_graph) {
				Process p = Runtime.getRuntime().exec("python toplot.py "+file);
				p.waitFor();
				if (p.exitValue()!=0)
					DatasetConfig.printError(p);
			}
		}
	}
public static void nextAddingData3(float d) {
	try {
		System.out.println("Start of adding ...");
		
		String query0 = "INSERT INTO r0  values ";
		String query1 = "INSERT INTO r2  values ";
		String query2 = "INSERT INTO r3  values ";
		int v1 =  10;
		int v2 = 40;
		int v3 = 50;
		int v4 = 60;
		
		double start = DatasetConfig.answerfinalsize*DatasetConfig.answerfinalsize*d*DatasetConfig.answerfinalsize;
		double val = Math.pow(start, 1.0/3);
		long startR0 = Math.round(val);
		long startR2 = startR0;
		long startR3 = startR0;
		if (startR0*startR0*startR0<start)
			startR3 = startR0+1;

		System.out.println("StartR0: "+startR0+ " StartR2: "+startR2+ " StartR3: "+startR3);
		
		long restR0 = DatasetConfig.answerfinalsize - startR0;
		long restR2 = DatasetConfig.answerfinalsize - startR2;
		long restR3 = DatasetConfig.answerfinalsize - startR3;

		for(int i = 0; i<startR3; i++) {
			long l1 = getVC3();
			query2 += "('a',"+v1+", 'c','d',0,'f',1,'h','i',"+l1+"),";
		}
		
		for(int i = 0; i<restR3; i++) {
			long l1 = getVC3();
			query2 += "('a',"+v4+", 'c','d',0,'f',1,'h','i',"+l1+"),";
		}
		
		
		for(int i = 0; i<startR0; i++) {
			long l1 = getVC1();
			query0 += "('a',"+v1+", 'c','d',0,'f',1,'h','i',"+l1+"),";
		}
		
		for(int i = 0; i<restR0; i++) {
			long l1 = getVC1();
			query0 += "('a',"+v2+", 'c','d',0,'f',1,'h','i',"+l1+"),";
		}
		
		for (int i = 0; i<startR2; i++) {
			long l2 = getVC2();
			query1 += "('a',"+v1+", 'c','d',0,'f',1,'h','i',3,"+l2+"),";
		}
		
		for(int i = 0; i<restR2; i++) {
			long l2 = getVC2();
			query1 += "('a',"+v3+", 'c','d',0,'f',1,'h','i',3, "+l2+"),";
		}
		query0 = query0.substring(0, query0.length()-1)+";";
		query1 = query1.substring(0, query1.length()-1)+";";
		query2 = query2.substring(0, query2.length()-1)+";";
		DatasetConfig.statement.executeUpdate(query0);
		DatasetConfig.statement.executeUpdate(query1);
		DatasetConfig.statement.executeUpdate(query2);
		
		System.out.println("End of adding...");
		
	}catch(Exception e) {e.printStackTrace();}
}
static void nextAddingData(float d) {
	try {
		System.out.println("Start of adding ...");
		
		String query0 = "INSERT INTO r0  values ";
		String query1 = "INSERT INTO r2  values ";
//		String query2 = "INSERT INTO r3  values ";
		int v1 =  10;
		int v2 = 40;
		int v3 = 50;
//		int v4 = 60;
		
		//int count = (int)(d*DatasetConfig.answerfinalsize);
		//int rest = DatasetConfig.answerfinalsize - count;
		
		float start = DatasetConfig.answerfinalsize*d*DatasetConfig.answerfinalsize;
		double val = Math.sqrt(DatasetConfig.answerfinalsize*d*DatasetConfig.answerfinalsize);
		long startR0 = Math.round(val);
		long startR2 = startR0;
//		long startR3 = startR0;
		if (startR0*startR0<start)
			startR2 = startR0+1;

		System.out.println("StartR0: "+startR0+ " StartR2: "+startR2);
		
		long restR0 = DatasetConfig.answerfinalsize - startR0;
		long restR2 = DatasetConfig.answerfinalsize - startR2;
		
		for(int i = 0; i<startR0; i++) {
			long l1 = getVC1();
			query0 += "('a',"+v1+", 'c','d',0,'f',1,'h','i',"+l1+"),";
		}
		
		for(int i = 0; i<restR0; i++) {
			long l1 = getVC1();
			query0 += "('a',"+v2+", 'c','d',0,'f',1,'h','i',"+l1+"),";
		}
		
		for (int i = 0; i<startR2; i++) {
			long l2 = getVC2();
			query1 += "('a',"+v1+", 'c','d',0,'f',1,'h','i',3,"+l2+"),";
		}
		
		for(int i = 0; i<restR2; i++) {
			long l2 = getVC2();
			query1 += "('a',"+v3+", 'c','d',0,'f',1,'h','i',3, "+l2+"),";
		}
		query0 = query0.substring(0, query0.length()-1)+";";
		query1 = query1.substring(0, query1.length()-1)+";";
		DatasetConfig.statement.executeUpdate(query0);
		DatasetConfig.statement.executeUpdate(query1);
		
		System.out.println("End of adding...");
		
	}catch(Exception e) {e.printStackTrace();}
}
//static String vio = "";
static long big = 1<<(vc);
static long value = 0;

//private static long getVC() {
//	long val = value;
//	value = value - 1;
//	if (value < 0) 
//		value = big - 1;
//	return val;
//}

static int e0 = -1;
static int e2 = -1;
static int e3 = -1;

static long getVC1() {
	e0++;
	if (e0==all0)
		e0 = 0;
	long v = (e0+1073741820)%(1<<vc);
	return v;
}

static long getVC2() {
	e2++;
	if (e2==all2)
		e2 = 0;
	long v = (e2+1000)%(1<<vc);
	return v;
}

static long getVC3() {
	e3++;
	if (e3==all3)
		e3 = 0;
	long v = (e3+1500)%(1<<vc);
	return v;
}


static void end() {
	try {
		DatasetConfig.statement.executeUpdate("DROP schema IF EXISTS "+DatasetConfig.schema+" CASCADE");
	}catch(Exception e) {e.printStackTrace();}

}

static void init() {
	try {
		
		e0 = -1;
		e2 = -1;
		big = 1<<(vc);
		value = big-1;
		
		if (all0>big)
			all0 = big;
		if (all2>big)
			all2 = big;
		
		String schema = "test_1";
		DatasetConfig.statement.executeUpdate("CREATE SCHEMA "+schema);
		DatasetConfig.statement.executeUpdate("SET search_path to "+schema);
		DatasetConfig.statement.executeUpdate("CREATE Table r0(a0 text, b0 int, c0 text, d0 text, e0 int, f0 text, g0 int, h0 text, i0 text, vioset bigint)");
		DatasetConfig.statement.executeUpdate("CREATE Table r2(a2 text, b2 int, c2 text, d2 text, e2 int, f2 text, g2 int, h2 text, i2 text, j2 int, vioset bigint)");
		DatasetConfig.statement.executeUpdate("CREATE INDEX  ON r0(vioset)");
		DatasetConfig.statement.executeUpdate("CREATE INDEX  ON r2(vioset)");
//		DatasetConfig.statement.executeUpdate("CREATE INDEX  ON r0(inc)");
//		DatasetConfig.statement.executeUpdate("CREATE INDEX  ON r2(inc)");
		DatasetConfig.schema = schema;
//		File file = new File("plans");
//		file.delete();
//		File file_ = new File("plans_");
//		file_.delete();
		System.out.println("End of init ...");
	}catch(Exception e) {e.printStackTrace();}
}

public static void init3() {
	try {
		String schema = "test_1";
		DatasetConfig.statement.executeUpdate("CREATE SCHEMA "+schema);
		DatasetConfig.statement.executeUpdate("SET search_path to "+schema);
		DatasetConfig.statement.executeUpdate("CREATE Table r0(a0 text, b0 int, c0 text, d0 text, e0 int, f0 text, g0 int, h0 text, i0 text, vioset bigint)");
		DatasetConfig.statement.executeUpdate("CREATE Table r2(a2 text, b2 int, c2 text, d2 text, e2 int, f2 text, g2 int, h2 text, i2 text, j2 int, vioset bigint)");
		DatasetConfig.statement.executeUpdate("CREATE Table r3(a3 text, b3 int, c3 text, d3 text, e3 int, f3 text, g3 int, h3 text, i3 text, vioset bigint)");
		DatasetConfig.statement.executeUpdate("CREATE INDEX  ON r0(vioset)");
		DatasetConfig.statement.executeUpdate("CREATE INDEX  ON r2(vioset)");
		DatasetConfig.statement.executeUpdate("CREATE INDEX  ON r3(vioset)");
//		DatasetConfig.statement.executeUpdate("CREATE INDEX  ON r0(inc)");
//		DatasetConfig.statement.executeUpdate("CREATE INDEX  ON r2(inc)");
		DatasetConfig.schema = schema;
//		File file = new File("plans");
//		file.delete();
//		File file_ = new File("plans_");
//		file_.delete();
		System.out.println("End of init ...");
	}catch(Exception e) {e.printStackTrace();}
}
private static Resource execute_semi(int k) {
	Resource res = new Resource();
	try {
		block = 0;
		for(int e=0;e<step;e++) {
			MostConsistentFirstMultiOccurence settop = MostConsistentFirstMultiOccurence.loadConfigure();
			settop.setK(k);
			settop.algorithm();
			res.addTime(settop.getRealTime());
			res.addMemory(settop.getRealMemory());
			for (Set<Long> l:settop.getReadBlocks())
				block += l.size(); 
			DatasetConfig.cleanCache();
		}
		res.div(step);
		block = block/step;
	} catch (Exception e) {e.printStackTrace();}
	
	return res;
}
private static Resource execute_full(int k) {
	Resource res = new Resource();
	String query = "";
	try {
		Properties prop = new Properties();
		prop.load(new FileInputStream(new File("config.properties")));
		query = prop.getProperty("query");
		query = query.substring(0, query.length()-2)+" "+k;
		
		System.out.println(query);
		
		for(int e=0;e<step;e++)
			res.add(memory_and_time(query));
		res.div(step);
		
		//add_over_plan(plan(query));
	} catch (Exception e) {e.printStackTrace();}
	
	return res;
}


private static void executeExperimentByK() {
		String res = "kvalue,semi_time,semi_memory,full_time,full_memory\n";
		try {

			for(int i=DatasetConfig.init; i<=DatasetConfig.end; i+=DatasetConfig.plus) {
				String str = i+",";
				System.out.println("====== K = "+i+" ======");
				System.out.println("\t Execute semi-materializing algorithm");		
				Resource r = execute_semi(i);
				str= str+r.getTime()+","+r.getMemory()+",";
				DatasetConfig.cleanCache();
		
				System.out.println("\t Execute full-materializing algorithm");
				Resource r1 = execute_full(i);
				str = str + r1.getTime()+","+r1.getMemory()+"\n";
				DatasetConfig.cleanCache();
				
				res += str; 
			}
			res = res.substring(0, res.length()-1);
			PrintWriter p = new PrintWriter(new File(file));
			p.print(res);
			p.flush();
			p.close();
		}catch(Exception e) {e.printStackTrace();}
	}

public static Resource memory_and_time(String query) throws Exception {
	
	String file = "/home/ousissa/eclipse-workspace/TOP_SET_RANK_JOIN/file.sql";
	PrintWriter pw = new PrintWriter(new File(file));
	pw.println("SET search_path to "+ DatasetConfig.schema+" ; \n EXPLAIN (ANALYZE, BUFFERS, FORMAT JSON) " + query+";");
	pw.close();
	Resource memory_and_time = new Resource();
	//8192 bytes by block
	InputStream res = executeCommand("sudo -S -u postgres psql -U postgres -d postgres -a -f "+file, "65515525");
	
//	System.out.println("Ok ...");
	
	String str  = "";
	Scanner sc = new Scanner(res);
	int i = 0;
	boolean b = sc.hasNext();
	while(b) {
		String value = sc.nextLine();
		b = sc.hasNext();
		if (i>5) {
			if (b)
				str+=value.substring(0, value.length()-1)+"\n";
		}
		i++;
	}
	
	res.close();
	sc.close();
	
//SELECT * FROM R0, R2 where R0.b0 = R2.b2 order by public.setsem(R0.inc, R2.inc) limit  20
	
	
	
//	if (str.startsWith(" [")) 
//		str = str.substring(2);
//	
//	if (str.endsWith("]"))
//		str = str.substring(0, str.length()-1);
	
	str = deleteBracketFrom(str);
//	System.out.println(str);
	
//	System.out.println(query);
	
	
	JSONObject object = new JSONObject(str);
	JSONObject plan = object.getJSONObject("Plan");
	
	float time = object.getFloat("Execution Time");
	
	int shb = plan.getInt("Shared Hit Blocks");
	int srb = plan.getInt("Shared Read Blocks");
	int sdb = plan.getInt("Shared Dirtied Blocks");
	int swb = plan.getInt("Shared Written Blocks");
	
	int lhb = plan.getInt("Local Hit Blocks");
	int lrb = plan.getInt("Local Read Blocks");
	int ldb = plan.getInt("Local Dirtied Blocks");
	int lwb = plan.getInt("Local Written Blocks");
	
	int trb = plan.getInt("Temp Read Blocks");
	int twb = plan.getInt("Temp Written Blocks");

	long size = ((shb+srb+sdb+swb+lhb+lrb+ldb+lwb+trb+twb)*8192)/1000;
	
	memory_and_time.setMemory(size);
	memory_and_time.setTime(time);
	
	
	return memory_and_time;
	
}
public static String deleteBracketFrom(String str) {
	if (str.equals(""))
		return "";
	String st = str;
	boolean accolade = false;
	int i = 0;
	while (!accolade&i<st.length()) {
		if (st.charAt(i)=='{')
			accolade = true;
		i++;
	}
	accolade = false;
	int j = st.length()-1;
	while (!accolade&i>=0) {
		if (st.charAt(j)=='}')
			accolade = true;
		j--;
	}
	return st.substring(i-1, j+2);
}
public static class Resource {
	private float memory;
	private float time;
	
	
	public Resource(float memory, float time) {
		this.memory=memory;
		this.time = time;
	}
	
	public void addTime(float time) {
		this.time += time;
	}
	
	public void addMemory(float memory) {
		this.memory += memory;
	}
	
	public void div(int step) {
		time = time/step;
		memory = memory/step;
	}


	public void add(Resource memory_and_time) {
		time = time + memory_and_time.time;
		memory = memory + memory_and_time.memory;
	}


	public float getTime() {
		return time;
	}
	
	public float getMemory() {
		return memory;
	}
	
	public Resource() {
		time = 0f;
		memory = 0f;
	}
	
	public void setMemory(float memory) {
		this.memory = memory;
	}
	public void setTime(float time) {
		this.time = time;
	}
	
	@Override
	public String toString() {
		return "Time: "+time+" Memory: "+memory;
	}
}


}

