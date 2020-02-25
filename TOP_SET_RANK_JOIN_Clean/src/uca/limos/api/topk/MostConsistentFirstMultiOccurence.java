package uca.limos.api.topk;

import java.io.File;
import java.io.FileWriter;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Scanner;
import java.util.Set;

import org.json.JSONObject;

import uca.limos.MainSingleOccurence;
import uca.limos.api.DatasetConfig;

public class MostConsistentFirstMultiOccurence {
	public List<Set<Long>> buffers; 
//	public List<String> dcs;
	public long dcs;
	public List<Set<Long>> readBlocks;
	public List<List<Long>> lattices;
	//public List<Predicate> predicates;
	//public String predicates;
	public List<String> relations_names;
	public int resu = 0;
	public int k;
	
	public void setReadBlocks(List<Set<Long>> readBlocks) {
		this.readBlocks = readBlocks;
	}
	public List<Set<Long>> getReadBlocks() {
		return readBlocks;
	}
	public List<List<Long>> getLattices() {
		return lattices;
	}
	public int getResu() {
		return resu;
	}
	public void setResu(int resu) {
		this.resu = resu;
	}
	public List<String> getRelations_names() {
		return relations_names;
	}
	public int getK() {
		return k;
	}
//	public void setPredicates(String predicates) {
//		this.predicates = predicates;
//	}
	public List<Set<Long>> getBuffers() {
		return buffers;
	}
	public MostConsistentFirstMultiOccurence() {
		relations_names = new ArrayList<String>();
		lattices = new ArrayList<List<Long>>();
		buffers = new ArrayList<Set<Long>>();
		readBlocks = new ArrayList<Set<Long>>();
	}
	
	public void setK(int k) {
		this.k = k;
	}
	
	public void setRelations_names(List<String> relations_names) {
			this.relations_names = relations_names;
	}
		
	public static MostConsistentFirstMultiOccurence loadConfigure() {
		MostConsistentFirstMultiOccurence loadConfigure = new MostConsistentFirstMultiOccurence();
			try {
				loadConfigure.setK(DatasetConfig.k);
//				loadConfigure.setPredicates(DatasetConfig.predicate);
				loadConfigure.setRelations_names(DatasetConfig.relations);
				
				for (int i = 0; i < DatasetConfig.relations.size(); i++) {
					Set<Long> values = new HashSet<Long>();
					loadConfigure.getBuffers().add(values);
					loadConfigure.getReadBlocks().add(new HashSet<Long>());
				}
				
				System.out.println("-------------- End config ---------------");
				
			}catch(Exception e) {e.printStackTrace();}
			return loadConfigure;
	}
	
	public static void loadLattices(MostConsistentFirstMultiOccurence conf) throws SQLException {
		long dc  = 0;
		for (int i=0; i<conf.relations_names.size(); i++) {
			String relation = conf.relations_names.get(i);
			String query = "SELECT distinct vioset FROM "+relation.split("_")[0];
			ResultSet res = DatasetConfig.statement.executeQuery(query);
			List<Long> v = new ArrayList<Long>();
			while(res.next()) {
				long l = res.getLong(1);
				v.add(l);
				dc = dc | l;
			}
			res.close();
			conf.lattices.add(v);
		}
		conf.dcs = dc;
	}
		
	public void algorithm() throws Exception {
			loadLattices(this);
			int constraintSize = Long.bitCount(dcs);
			String space = "";
			for (List<Long> e:lattices)
				space += "x"+e.size();
			System.out.println(space.substring(1)+" dc="+constraintSize);
			int i = 0;
			while(resu<k){
//				System.out.println(i);
				effectiveJoin(new ArrayList<List<Long>>(lattices), new ArrayList<Long>(), 0l, i);
				i++;
			}
			System.out.println("Combunations: "+count+" Answer size: "+resu);
	}
	
	int count = 0;
	
	public void effectiveJoin(List<List<Long>> current, List<Long> list, long cumul, int nbrViol) throws Exception {
		List<Long> l0 = current.remove(0);
		for (long l:l0) {
			if (Long.bitCount(l) <= nbrViol) {
				List<Long> ll = new ArrayList<Long>(list);
				ll.add(l);
				long c = cumul + Long.bitCount(l);
				if (current.isEmpty()) {
					if (c == nbrViol) { 
						for (int j = 0; j<ll.size(); j++) 
							readBlocks.get(j).add(ll.get(j));
						doJoin(ll);
						count++;
//						System.out.println(count);
						if (resu>=k)
							return;
					}
					continue;
				}
				List<List<Long>> current1 =  new ArrayList<List<Long>>();
				for(List<Long> l_:current) {
					List<Long> l_l = new ArrayList<Long>(l_);
					current1.add(l_l);
				}
				effectiveJoin(current1, ll, c, nbrViol);
				if (resu>=k)
					return;
			}
		}
	}

	private float realTime = 0; 
	
	public float getRealTime() {
		return realTime;
	}
	
	int iterate = 0;
	String plans = "";
	
	long realMemory = 0;
	
	public long getRealMemory() {
		return realMemory;
	}
	private void doJoin(List<Long> list) throws Exception {
		String from = "";
		String where = DatasetConfig.predicate;
		int remaind = k - resu;
		String inc = "";
		
		
		for (int i = 0; i<list.size(); i++) {
			String rel = relations_names.get(i).split("_")[0];
			inc += " AND " + "t"+i+".vioset="+list.get(i);
			
			where = where.replace(relations_names.get(i)+".", "t"+i+".");
			from += ", "+rel+" t"+i;
			
		}
		String wh = "";
		if ((where.replaceAll("( )*", "").replaceAll("(\n)*", "").replaceAll("(\t)*", "")).isEmpty())
			wh = inc.substring(6);
		else
			wh = where + inc;
		String query = "SELECT * FROM "+from.substring(2) + " WHERE "+ wh + " LIMIT "+remaind;
		
//		System.out.println(query);
		
		executeQuery_(query);
		iterate++;
		plans +=iterate+".\n\t"+plan_(query)+"\n";		
	}
	private void executeQuery_(String query) throws Exception {
		String val = "EXPLAIN (ANALYZE, BUFFERS, FORMAT json) "+query;
		val = "SET search_path to "+DatasetConfig.schema+";\n"+val;
		String file = "/home/ousissa/eclipse-workspace/TOP_SET_RANK_JOIN/file.sql";
		PrintWriter pw = new PrintWriter(new File(file));
		pw.println(val);
		pw.close();
		InputStream res = MainSingleOccurence.executeCommand("sudo -S -u postgres psql -U postgres -d postgres -a -f "+file, "65515525");
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
		
		if (str.startsWith(" [")) 
			str = str.substring(2);
		if (str.endsWith("]"))
			str = str.substring(0, str.length()-1);
		
		JSONObject object = new JSONObject(str);
		JSONObject plan = object.getJSONObject("Plan");
		
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
		
		float tim = object.getFloat("Execution Time");
		realTime += tim;
		
		resu += plan.getInt("Actual Rows");
		realMemory = Math.max(realMemory, ((shb+srb+sdb+swb+lhb+lrb+ldb+lwb+trb+twb)*8192)/1000);
	}

	private long joinTime = 0;
	public long getJoinTime() {
		return joinTime;
	}
	
	static String plan_(String query) throws Exception {
		String file = "/home/ousissa/eclipse-workspace/TOP_SET_RANK_JOIN/file_1.sql";
		PrintWriter pw = new PrintWriter(new File(file));
		pw.println("SET search_path to "+ DatasetConfig.schema+" ; \n EXPLAIN  " + query+";");
		pw.close();
		InputStream res = MainSingleOccurence.executeCommand("sudo -S -u postgres psql -U postgres -d postgres -a -f "+file, "65515525");
		String str  = "";
		Scanner sc = new Scanner(res);
		sc.hasNext();
		sc.nextLine();
		sc.hasNext();
		sc.nextLine();
		while(sc.hasNext())
			str += sc.nextLine()+"\n";
		sc.close();
		
		return str;
	}
	
	
	static void plan_save_(String str) {
		try {
			String plan = "";
			plan += "=============================================================================";
			plan +="\n";
			plan +=str+"\n\n";
			FileWriter file = new FileWriter("plans_", true); 
			PrintWriter pw = new PrintWriter(file);
			pw.println(plan);
			pw.flush();
			pw.close();
			
			System.out.println("Saving plan");
			
		}catch(Exception e) {e.printStackTrace();}
	}
	
	
}

