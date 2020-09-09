package uca.limos.api.preprocess;

import java.io.File;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

import uca.limos.api.DatasetConfig;
import uca.limos.api.Utils;
import uca.limos.api.topk.Results;

public class PreprocessV2 {

	private List<String> equalConstr;
	private List<String> otherConstr;
	
	int cstr = 0;
	
	public PreprocessV2() throws Exception{
		loadConstraints();
	}
	
	public void loadConstraints() throws Exception{
		
		otherConstr = new ArrayList<String>();
		equalConstr = new ArrayList<String>();
		
		Scanner sc = new Scanner(new File(DatasetConfig.schema+"/dcs_equal"));
//		String res = "";
		while(sc.hasNext()) {
			String q = sc.nextLine();
//			if (q.endsWith(";"))
			q = q.split(";")[0];
			equalConstr.addAll(intoQuery(q, (1<<cstr)));
			cstr++;
			equalConstrSize++;
		}
		sc.close();
		
		sc = new Scanner(new File(DatasetConfig.schema+"/dcs_other"));
		while(sc.hasNext()) {
			String q = sc.nextLine();
//			if (q.endsWith(";"))
			q = q.split(";")[0];
			otherConstr.addAll(intoQuery(q, (1>>cstr)));
			cstr++;
			otherConstrSize++;
		}
		sc.close();
	}
	
	public List<String> intoQuery(String query, long constr) {
		List<String> intoQuery = new ArrayList<String>();
		
//		System.out.println(query);
		
		String [] splits = query.split(":");
		String rels = splits[0];
		String where = splits[1];
		String [] splits1 = rels.split("( )*,( )*");
		
		for(int pos = 0; pos<splits1.length;pos++) {
			String rel = splits1[pos];
			String r [] = rel.split("_");
			String from = getFrom(splits1, pos);
			String into  = "";
			if (!from.isEmpty())
				into = "UPDATE "+r[0]+" "+r[1]+" SET vioset = "+r[1]+".vioset|"+constr+" FROM "+from+" WHERE "+where+";\n";
			else
				into = "UPDATE "+r[0]+" "+r[1]+" SET vioset = "+r[1]+".vioset|"+constr+" WHERE "+where+";\n";
			intoQuery.add(into);
		}
		
		return intoQuery;
	}

	private String getFrom(String[] splits1, int pos) {
		String tab = "";
		for (int i =0; i<splits1.length; i++) {
			if (i!=pos) {
				tab += splits1[i].replace("_", " ")+",";
			}
		}
		if (!tab.isEmpty()) 
			tab = tab.substring(0, tab.length()-1);
		return tab;
	}

	public void addViosetColumn() throws Exception{
		String query = "select table_name from information_schema.tables where table_schema = '"+DatasetConfig.schema+"'";
		ResultSet res = DatasetConfig.statement.executeQuery(query);
		List<String> relations = new ArrayList<String>();
		while(res.next()) 
			relations.add(res.getString(1));
		res.close();
		String q = "set search_path to "+DatasetConfig.schema+";\n";
		for (String rel:relations) {
			q += "ALTER TABLE "+rel+" add column if not exists vioset bigint;\n";
			q += "UPDATE "+rel+" set vioset = 0;\n";
		}
		DatasetConfig.statement.executeUpdate(q);
	}
	
	public void persisteConstraints() throws Exception{
//		loadConstraints();
		String equal = "", other = "";
		for(String v:equalConstr)
			equal += v+"\n";
		for(String v:otherConstr)
			other += v+"\n";
		
		PrintWriter equ = new PrintWriter("equal.sql");
		PrintWriter oth = new PrintWriter("other.sql");
		
		equ.println(equal);
		oth.println(other);
		
		equ.flush();
		equ.flush();
		equ.close();
		oth.close();
	}
	
	long timeEqual = 0;
	long timeOther = 0;
	
	int equalConstrSize = 0;
	int otherConstrSize = 0;
	
	public void preprocess() throws Exception{
		
		timeEqual = 0;
		timeOther = 0;
		
		//persisteConstraints();
//		loadConstraints();
		addViosetColumn();
	
		Utils.restartServer();
		System.out.println("=============== start for equal ================");
		for(String query:equalConstr) {
//			String q = "SET search_path to "+DatasetConfig.schema+"\n";
//			q += "EXPLAIN (ANALYZE,FORMAT json) "+query;
			
			System.out.println(query);
			
			Results res = new Results();
			Utils.executeQuery_(query, res);
			timeEqual+=res.getRealTime();
		}
		
		Utils.restartServer();
		System.out.println("=============== start for other ================");
		for(String query:otherConstr) {
//			String q = "SET search_path to "+DatasetConfig.schema+"\n";
//			q += "EXPLAIN (ANALYZE,FORMAT json) "+query;
			System.out.println(query);
			Results res = new Results();
			Utils.executeQuery_(query, res);
			timeOther+=res.getRealTime();
		}

		PrintWriter pw = new PrintWriter("preprocess_runtime");
		pw.println("equalTime="+timeEqual);
		pw.println("equalTime="+equalConstrSize);
		pw.println("other="+timeOther);
		pw.println("otherConstraintsSize="+otherConstrSize);
		
		pw.flush();
		pw.close();
	}



	public static void separate() throws Exception{
		
		System.out.println("Start ...");
		
		PrintWriter equal = new PrintWriter(DatasetConfig.schema+"/dcs_equal");
		PrintWriter other = new PrintWriter(DatasetConfig.schema+"/dcs_other");
		Scanner sc = new Scanner(new File(DatasetConfig.schema+"/dcs"));
		while(sc.hasNext()) {
			String val = sc.nextLine();
			if (!(val.contains(">")||val.contains("<")))
				equal.println(val);
			else
				other.println(val);
		}
		sc.close();
		equal.flush();
		other.flush();
		equal.close();
		other.close();
		
		System.out.println("End ...");
	}

}
