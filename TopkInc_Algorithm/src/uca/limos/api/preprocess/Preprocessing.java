package uca.limos.api.preprocess;
import java.io.File;
import java.io.PrintWriter;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Scanner;
import uca.limos.api.DatasetConfig;

public class Preprocessing {

public static String  preprocess(String query) throws Exception {
	Statement stm = DatasetConfig.statement;
	stm.executeUpdate("CREATE SCHEMA IF NOT EXISTS test");
	stm.executeUpdate("SET search_path to "+DatasetConfig.schema);
	stm.executeQuery("SELECT public.clean('"+DatasetConfig.schema+"')");
	stm.executeUpdate("DROP TABLE IF EXISTS test.tab0");
	stm.executeUpdate("DROP TABLE IF EXISTS test.tab1");
	long prov = System.currentTimeMillis();
	String q = "CREATE TABLE test.tab0 as "+query;
	
//	System.out.println(q);
	
	stm.executeUpdate(q);
	stm.executeUpdate("CREATE TABLE test.tab1 as SELECT id, public.or_agg(set) as set FROM test.tab0 GROUP BY id");
	prov = System.currentTimeMillis()-prov;
	long rest = System.currentTimeMillis();
	stm.executeQuery("SELECT public.finalUpdate_()");
	rest = System.currentTimeMillis() - rest;
	
	//stm.executeUpdate("DROP TABLE IF EXISTS test.tab0");
	//stm.executeUpdate("DROP TABLE IF EXISTS test.tab1");
	stm.executeUpdate("DROP SCHEMA IF EXISTS test CASCADE");
	return prov+","+(prov+rest);
}
public static int max = 0;
public static void preprossing() {
	try {
		Scanner sc = new Scanner(new File("utils.sql"));
		String q = "";
		while(sc.hasNext())
			q+=sc.nextLine()+"\n";
		sc.close();
		DatasetConfig.statement.executeUpdate(q);
		
		DatasetConfig.cleanCache();
		Map<String, String> maps = read_();
		String res = "X,Y,Z";
		Statement stm = DatasetConfig.statement;
		stm.executeQuery("SELECT public.clean('"+DatasetConfig.schema+"')");
		
		for (String key:maps.keySet()) {
			if (Integer.parseInt(key)==max)
				continue;
			System.out.println(key);
			res +="\n"+key+","+preprocess(maps.get(key));
		}
		System.out.println(max);
		res +="\n"+max+","+preprocess(maps.get(max+""));
		PrintWriter pw = new PrintWriter(new File(DatasetConfig.result+".csv"));
		pw.println(res);
		pw.flush();
		pw.close();
	}catch(Exception e) {e.printStackTrace();}
}
private static Map<String, String> read_() {
	Map<String, String> read_ = new HashMap<String, String>();
	String file = DatasetConfig.update;
	int nbr = DatasetConfig.constPart;
	String read = "";
	String value = read(file).replaceAll("(\n)*", "");
	String values [] = value.split(";");
	max = values.length;
	int i=0;
	while (i<values.length) {
		String v = values[i];
		String val = read_help_(v, i);
		i++;
		if ((i%nbr==0 && (nbr <= values.length-i ))||(i==values.length)) 
			read_.put(i+"", read+val);
		read +=val+"\n \t UNION \n";
	}
	return read_;
}
private static String read_help_(String q, int j) {
	String query = "";
	try {
		String parts[] = q.split(":");
		String rels[] = parts[0].replaceAll("(\n| |\t|\r)*", "").split(",");
		String predicate = parts[1];
		List<String> lists = new ArrayList<String>();
		for(String str:rels)
			lists.add(str);
		String from = lists.toString().replace("]", "").replace("[", "").replaceAll("_", " ");
		for(int i=0;i<lists.size();i++) {
			String up =lists.get(i).split("_")[1]+".id,"+Math.pow(2, j)+"::bigint as set";
			query += "\n SELECT "+up+ " FROM "+ from +" WHERE " + predicate +"\n \t UNION "; 
		}
		query = query.substring(0, query.length() - "\n \t UNION ".length());
	}catch(Exception e) {return "";}
	return query;
}
private static String read(String file) {
	try {
		Scanner sc = new Scanner(new File(file));
		String query = "";
		while(sc.hasNext())
			query += sc.nextLine()+"\n";
		sc.close();
		return query;
	}catch(Exception e) {e.printStackTrace();}
	return null;
}	
}
