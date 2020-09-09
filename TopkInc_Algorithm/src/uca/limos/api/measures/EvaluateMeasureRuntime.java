package uca.limos.api.measures;

import java.io.File;
import java.io.PrintWriter;
import java.util.Scanner;
import java.util.regex.Pattern;

import uca.limos.MainSingleOccurence2;
import uca.limos.api.DatasetConfig;

public class EvaluateMeasureRuntime {
	public static String pathBag = MainSingleOccurence2.path+"results/"+DatasetConfig.schema+"/measure_bag_times.csv";
	public static String pathSet = MainSingleOccurence2.path+"results/"+DatasetConfig.schema+"/measure_set_times.csv";
		
//	public float queryRuntime(String query) throws SQLException {
//		long res = 0l;
//		for (int i =0; i<Main.step;i++) {
//			long time = System.currentTimeMillis();
//			DatasetConfig.statement.executeQuery(query);
//			long t = System.currentTimeMillis()-time;
//			res +=t;
//			System.out.println(t);
//			DatasetConfig.cleanCache();
//		}
//		return (res/Main.step);
//	}
	
	
	
public void run2() {
		
		String bag = "query,B_1,S_1,B_2,S_2";
		String set = "query,Bmin_1,Bmax_1,Smin_1,Smax_1,Bmin_2,Bmax_2,Smin_2,Smax_2";
		
		try {
			Scanner sc = new Scanner(new File(DatasetConfig.queries));
			String val = "";
			while(sc.hasNext()) {
				val += sc.nextLine()+"\n";
			}
			sc.close();
			String [] values = val.split(";");
			
			String regex = "^(( )|\n|\t|\r)*$";
			
			for(String query:values) {
				
				String q_bag = query;//query.toLowerCase();
				if (Pattern.matches(regex, q_bag))
					continue;
				String strs [] = q_bag.split("FROM");
				String strs1 [] = strs[0].split("SELECT");
				String strs2 [] = strs[1].split("WHERE");
				
				String projectPart = strs1[1];
				String fromPart = strs2[0];
				String wherePart = "";
				if (strs2.length == 2)
					wherePart = " WHERE "+strs2[1];
				
				String inc_set = "", inc_bag = "", il = "";
				
				String temp1[] = fromPart.split("( )*,( )*");
				for(String r:temp1) {
					String str[] = {"",""};
					String [] temp = r.split("( )+");
					int i = 0;
					for(String a:temp) {
						 if (!a.equals("")) {
							 str[i] = a;
							 i++;
						}
					}
					if (!str[1].equals("")) {
						inc_set += str[1]+".vioset| ";
						inc_bag += "public.bitNumber("+str[1]+".vioset)+ ";
						il += str[1]+".inc_id, ";
					}else {
						inc_set += str[0]+".vioset| ";
						inc_bag += "public.bitNumber("+str[0]+".vioset)+ ";
						il += str[0]+".inc_id, ";
					}
				}
					
				inc_set = inc_set.substring(0, inc_set.length()-2);
				inc_bag = inc_bag.substring(0, inc_bag.length()-2);
				il = il.substring(0, il.length()-2);
				
//				String inc_bag = "public.bagsem("+inc+")";
//				String inc_set = "public.setsem("+inc+")";
				String il_bag = "public.bagsem("+il+")";
				String il_set = "public.setsem("+il+")";
				

				
				MainSingleOccurence2.Resource queryb = time_memory(query);
				
				
				System.out.println("SELECT "+projectPart+","+il_bag+" FROM "+fromPart+" "+wherePart);
				
				MainSingleOccurence2.Resource ilb = time_memory("SELECT "+projectPart+","+il_bag+" FROM "+fromPart+" "+wherePart);
//				Main.Resource b = time_memory("SELECT "+projectPart+",public.bag_func2("+inc_bag+") FROM "+fromPart+" "+wherePart);
				MainSingleOccurence2.Resource b = time_memory("SELECT "+projectPart+","+inc_bag+" FROM "+fromPart+" "+wherePart);
				MainSingleOccurence2.Resource s = time_memory("SELECT "+projectPart+",public.bitNumber("+inc_set+") FROM "+fromPart+" "+wherePart);
				MainSingleOccurence2.Resource ils = time_memory("SELECT "+projectPart+","+il_set+" FROM "+fromPart+" "+wherePart);
				
				bag +="\n"+queryb.getTime()+","+b.getTime()+","+s.getTime()+","+ilb.getTime()+","+ils.getTime();
				bag +="\n"+queryb.getMemory()+","+b.getMemory()+","+s.getMemory()+","+ilb.getMemory()+","+ils.getMemory();
				
				MainSingleOccurence2.Resource querys = time_memory("SELECT distinct "+projectPart+" FROM "+fromPart+" "+wherePart);
				MainSingleOccurence2.Resource bmin = time_memory("SELECT "+projectPart+",min("+inc_bag+") FROM "+fromPart+" "+wherePart+" GROUP BY "+projectPart);
				MainSingleOccurence2.Resource bmax = time_memory("SELECT "+projectPart+",max("+inc_bag+") FROM "+fromPart+" "+wherePart+" GROUP BY "+projectPart);
				MainSingleOccurence2.Resource smin = time_memory("SELECT "+projectPart+",min(public.bitNumber("+inc_set+")) FROM "+fromPart+" "+wherePart+" GROUP BY "+projectPart);
				MainSingleOccurence2.Resource smax = time_memory("SELECT "+projectPart+",max(public.bitNumber("+inc_set+")) FROM "+fromPart+" "+wherePart+" GROUP BY "+projectPart);
				MainSingleOccurence2.Resource ilbmin = time_memory("SELECT "+projectPart+",min("+il_bag+") FROM "+fromPart+"  "+wherePart+" GROUP BY "+projectPart);
				MainSingleOccurence2.Resource ilbmax = time_memory("SELECT "+projectPart+",max("+il_bag+") FROM "+fromPart+"  "+wherePart+" GROUP BY "+projectPart);
				MainSingleOccurence2.Resource ilsmin = time_memory("SELECT "+projectPart+",min("+il_set+") FROM "+fromPart+"  "+wherePart+" GROUP BY "+projectPart);
				MainSingleOccurence2.Resource ilsmax = time_memory("SELECT "+projectPart+",max("+il_set+") FROM "+fromPart+"  "+wherePart+" GROUP BY "+projectPart);
				
				set +="\n"+querys.getTime()+","+bmin.getTime()+","+bmax.getTime()+","+smin.getTime()+","+smax.getTime()+","+ilbmin.getTime()+","+ilbmax.getTime()+","+ilsmin.getTime()+","+ilsmax.getTime();
				set +="\n"+querys.getMemory()+","+bmin.getMemory()+","+bmax.getMemory()+","+smin.getMemory()+","+smax.getMemory()+","+ilbmin.getMemory()+","+ilbmax.getMemory()+","+ilsmin.getMemory()+","+ilsmax.getMemory();
			}
			PrintWriter pbag = new PrintWriter(new File(pathBag));
			PrintWriter pset = new PrintWriter(new File(pathSet));
			
			pbag.print(bag);
			pset.print(set);
			pbag.flush();
			pset.flush();
			pbag.close();
			pset.close();
			
		}catch(Exception e) {e.printStackTrace();}
		
	}
	
public static MainSingleOccurence2.Resource time_memory(String query) throws Exception {
	MainSingleOccurence2.Resource res = new MainSingleOccurence2.Resource(0, 0);
	for (int i =0; i<MainSingleOccurence2.step;i++) {	
		//System.out.println("\n\n================================================");
//		System.out.println(query);
//		System.out.println("================================================\n\n");	
		res.add(MainSingleOccurence2.memory_and_time(query));
		DatasetConfig.cleanCache();
	}
	res.div(MainSingleOccurence2.step);
	
	System.out.println("\n\n================================================");
	System.out.println(query);
	System.out.println("================================================\n\n");	
	
	return res;
}
	
	
	
}
