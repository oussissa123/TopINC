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

import uca.limos.MainSingleOccurence2;
import uca.limos.SingleOccurMemory;
import uca.limos.api.DatasetConfig;
import uca.limos.api.Utils;

public class MostConsistentFirstSingleOccurence extends Results{
	public List<Set<Long>> buffers; 
	public long dcs;
	public List<List<Long>> lattices;
	public List<String> relations_names;
	
	public List<List<Long>> getLattices() {
		return lattices;
	}
	
	public List<String> getRelations_names() {
		return relations_names;
	}
	public List<Set<Long>> getBuffers() {
		return buffers;
	}
	public MostConsistentFirstSingleOccurence() {
		relations_names = new ArrayList<String>();
		lattices = new ArrayList<List<Long>>();
		buffers = new ArrayList<Set<Long>>();
		readBlocks = new ArrayList<Set<Long>>();
	}
		
	public void setRelations_names(List<String> relations_names) {
			this.relations_names = relations_names;
	}
		
	public static MostConsistentFirstSingleOccurence loadConfigure() {
		MostConsistentFirstSingleOccurence loadConfigure = new MostConsistentFirstSingleOccurence();
			try {
				loadConfigure.setK(DatasetConfig.k);
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
	
	public static void loadLattices(MostConsistentFirstSingleOccurence conf) throws SQLException {
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
			
			Utils.pw = new PrintWriter("plans/plan_"+DatasetConfig.schema+"_"+k+"_"+SingleOccurMemory.q+".sql");
			Utils.pw.println("SET search_path to "+ DatasetConfig.schema+";");
			
			Utils.pw.println("EXPLAIN (ANALYZE, BUFFERS, Format json ) (");
			
			for (int i = 0; i<=constraintSize; i++) {
				effectiveJoin(new ArrayList<List<Long>>(lattices), new ArrayList<Long>(), 0l, i);
				if (resu>=k) 
					break;
			}
			System.out.println("Combunations: "+count+" Answer size: "+resu);
			
			Utils.pw.flush();
			Utils.pw.close();
	}
	
	int count = 0;
	
	public void effectiveJoin(List<List<Long>> current, List<Long> list, long cumul, int nbrViol) throws Exception {
		List<Long> l0 = current.remove(0);
		for (long l:l0) {
			if (Long.bitCount(l) <= nbrViol) {
				List<Long> ll = new ArrayList<Long>(list);
				ll.add(l);
				long c = (cumul|l);
				if (current.isEmpty()) {
					if (Long.bitCount(c) == nbrViol) { 
						for (int j = 0; j<ll.size(); j++) 
							readBlocks.get(j).add(ll.get(j));
						doJoin(ll);
						count++;
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
		
//		Utils.pw.println("EXPLAIN(ANALYZE, BUFFERS, FORMAT json)"+query+";");
		Utils.pw.println("("+query+")\n\t UNION ALL ");
//		System.out.println(query);
		
		Utils.executeQuery_(query, this);
		iterate++;
		plans +=iterate+".\n\t"+plan_(query)+"\n";		
	}
	int iterate = 0;
	String plans = "";

	private long joinTime = 0;
	public long getJoinTime() {
		return joinTime;
	}
	
	static String plan_(String query) throws Exception {
		String file = DatasetConfig.path+"/file_1.sql";
		PrintWriter pw = new PrintWriter(new File(file));
		pw.println("SET search_path to "+ DatasetConfig.schema+" ; \n EXPLAIN  " + query+";");
		pw.close();
		InputStream res = MainSingleOccurence2.executeCommand("sudo -S -u postgres psql -U postgres -d postgres -a -f "+file, "65515525");
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

