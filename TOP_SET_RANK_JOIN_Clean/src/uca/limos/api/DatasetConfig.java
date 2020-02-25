package uca.limos.api;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;
import java.util.Scanner;

import net.sourceforge.sizeof.SizeOf;

public class DatasetConfig {
	public static Statement statement;

	public static String result ;
	public static String update ;
	public static String schema ;
	
	public static boolean  do_preprocess;
	public static boolean  topk;
	public static boolean do_graph;
	public static boolean fixedk;
	public static boolean evaluate_measure;
	
	public static int constPart = 0;
	public static int answerstepsize = 0;
	public static int answerfinalsize = 0;
	public static int answerstepiterate = 0;
	
	public static int k;
	public static List<String> relations;
	public static String predicate;
	
	public static String queries;
	
	public static int init;
	public static int end;
	public static int plus;
	
	
	
	static {
		relations = new ArrayList<String>();
		Connection c = null;
        try {
			SizeOf.skipFinalField(true);
			SizeOf.setLogOutputStream(new FileOutputStream("debugMemory.debug"));
			
		    Class.forName("org.postgresql.Driver");
	        c = DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres", "postgres", "65515525");
	        statement = c.createStatement();
	        Properties p = new Properties();
	        p.load(new FileInputStream(new File("config.properties")));
	        
	        do_preprocess = Boolean.parseBoolean(p.getProperty("do_preprocess").toLowerCase());
	        topk = Boolean.parseBoolean(p.getProperty("topk").toLowerCase());
	        
	        fixedk = Boolean.parseBoolean(p.getProperty("fixedk").toLowerCase());
	        answerfinalsize = Integer.parseInt(p.getProperty("answerfinalsize"));
	        answerstepsize = Integer.parseInt(p.getProperty("answerstepsize"));
	        answerstepiterate = Integer.parseInt(p.getProperty("answerstepiterate"));
	        
	        init = Integer.parseInt(p.getProperty("init"));
	        end = Integer.parseInt(p.getProperty("end"));
	        plus = Integer.parseInt(p.getProperty("plus"));
	        
	        
	        
	        do_graph = Boolean.parseBoolean(p.getProperty("do_graph").toLowerCase());
	        result = p.getProperty("result");
	        update = p.getProperty("update");
	        
	        schema = p.getProperty("schema");
	        
	        
	        queries = p.getProperty("query_path");
	        evaluate_measure = Boolean.parseBoolean(p.getProperty("evaluate_measure").toLowerCase());
	        		
	        constPart = Integer.parseInt(p.getProperty("step_constraint"));
	        
			k = Integer.parseInt(p.getProperty("k"));
			//load predicate
			predicate = p.getProperty("predicates");
			//load relation
			
			
			String [] rels = p.getProperty("relations").split("( )*,( )*");
			for (String r:rels) 
				relations.add(r);
			
			Scanner sc = new Scanner(new File("utils.sql"));
			String query = "";
			while(sc.hasNext())
				query +=sc.nextLine()+"\n";
			sc.close();
			statement.executeUpdate(query);
			
	        statement.executeUpdate("SET search_path to "+schema);
	        
	        cleanCache();
	        
		System.out.println("Connecter ...");
	   } catch (Exception e) {
           e.printStackTrace();
           System.err.println(e.getClass().getName()+": "+e.getMessage());
           System.exit(0);
	   }
	}


	public static void cleanCache() {
		try {
			
			
//			System.out.println("start ...");
			
			String command1 = "sudo -S service postgresql stop"; 
			String command2 = "echo 3 > /proc/sys/vm/drop_caches";
			String command3 = "sudo -S service postgresql start";
			String b = "65515525\n\r";
			
			Runtime run = Runtime.getRuntime();
			
			Process p = run.exec(command1);
			PrintWriter pw =  new PrintWriter(p.getOutputStream());
			pw.print(b);
			pw.close();
			p.waitFor();

			p = run.exec(command2);
			pw =  new PrintWriter(p.getOutputStream());
			pw.print(b);
			pw.close();
			p.waitFor();
			
			p = run.exec(command3);
			pw =  new PrintWriter(p.getOutputStream());
			pw.print(b);
			pw.close();
			p.waitFor();
			if (p.exitValue()!=0)
				printError(p);
			Class.forName("org.postgresql.Driver");
		    DatasetConfig.statement = DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres", "postgres", "65515525").createStatement();
		    DatasetConfig.statement.executeUpdate("SET search_path to "+DatasetConfig.schema);
			
		}catch(Exception e) {e.printStackTrace();}
	}

	public static void printError(Process p) {
 		try {
			Scanner sc = new Scanner(p.getErrorStream());
			String sd = "";
			while(sc.hasNext()) 
				sd+=sc.nextLine();
			sc.close();
			System.out.println(sd);
			System.out.println(p.exitValue());
 		}catch(Exception e) {e.printStackTrace();}
	}
	
}
