package uca.limos.api.topk;

import java.io.File;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import uca.limos.api.DatasetConfig;
import uca.limos.api.Utils;

public class Results {
	protected List<Set<Long>> readBlocks;
	protected float realTime = 0; 
	protected long realMemory = 0;
	protected long blockMemory = 0;
	protected int resu = 0;
	protected int k;
	
	protected long otherMemory = 0;
	
	
	
	public long getBlockMemory() {
		return blockMemory;
	}
	public void setBlockMemory(long blockMemory) {
		this.blockMemory = blockMemory;
	}
	
	protected Map<String, Integer> statistiques;
	
	public Results() {
		statistiques = new HashMap<String, Integer>();
		realMemory = 0;
		blockMemory = 0;
	}
	
	public Map<String, Integer> getStatistiques() {
		return statistiques;
	}
	
	public long getOtherMemory() {
		return otherMemory;
	}
	public void setOtherMemory(long otherMemory) {
		this.otherMemory = otherMemory;
	}
	
	public void setStatistiques(Map<String, Integer> statistiques) {
		this.statistiques = statistiques;
	}
	
	public int getK() {
		return k;
	}
	
	public List<Set<Long>> getReadBlocks() {
		return readBlocks;
	}
	
	public float getRealTime() {
		return realTime;
	}
	public long getRealMemory() {
		return realMemory;
	}
	public int getResu() {
		return resu;
	}
	
	public void setRealMemory(long realMemory) {
		this.realMemory = realMemory;
	}
	
	public void setResu(int resu) {
		this.resu = resu;
	}
	
	public void setRealTime(float realTime) {
		this.realTime = realTime;
	}
	
	
	public void addTime(float time) {
		realTime += time;
	}
	
	public void addResu(int res) {
		resu += res;
		if (k<resu)
			resu = k;
	}
	public void AddMemory(long realMemory2) {
		realMemory += realMemory2;
	}
	
	public void setReadBlocks(List<Set<Long>> readBlocks) {
		this.readBlocks = readBlocks;
	}
	
	public void setK(int k) {
		this.k = k;
	}
	
	public long getbufferSize() {
		HashMap<String, Long> rels = new HashMap<String, Long>();
		for (String rel:DatasetConfig.relations) {
			String name = rel.split("_")[0];
			if (!rels.containsKey(name))
				rels.put(name, 0l);
		}
		
		for (int i= 0; i<readBlocks.size(); i++) {
			Set<Long> set = readBlocks.get(i); 
			String name = DatasetConfig.relations.get(i).split("_")[0];
			rels.put(name, Math.max(rels.get(name), count(set, i)));
		}
		long res = 0l;
		for (long l:rels.values())
			res += l;
		return res;
	}
	
	private long count(Set<Long> blocs, int position) {
		int c = 0;
		try {
			String query = "SELECT COUNT(*) FROM "+DatasetConfig.schema+"."+DatasetConfig.relations.get(position).split("_")[0] +" WHERE ";
			String where = "";
			for (long l:blocs)
				where = "vioset = "+l+" OR ";
			where = where.substring(0, where.length()-4);
			query = query + " "+ where;
			
			ResultSet res = DatasetConfig.statement.executeQuery(query);
			res.next();
			c = res.getInt(1);
			res.close();
		}catch(Exception e) {e.printStackTrace();}
		
		return c*DatasetConfig.tuplesizes.get(position);
	}
	
	public long getSizeInOctet() {
		long res = 0;
		for (long l:DatasetConfig.tuplesizes)
			res += l;
		return (k*res + getbufferSize());
	}
	
	public long getSizeInKo() {
		long res = 0;
		for (long l:DatasetConfig.tuplesizes)
			res += l;
		return (k*res + getbufferSize())/Utils.pow(2, 10);
	}
	
	public long getSizeInMo() {
		long res = 0;
		for (long l:DatasetConfig.tuplesizes)
			res += l;
		return (k*res + getbufferSize())/Utils.pow(2, 20);
	}
	
	
	public void save(String file) {
		String value = "constraints,instance\n";
		for (String va:statistiques.keySet()) 
			if (statistiques.get(va)!=0)
				value += va.replace(",",";") + "," + statistiques.get(va)+"\n";
		try {
			PrintWriter pw = new PrintWriter(new File(file));
			pw.println(value);
			pw.flush();
			pw.close();
		}catch(Exception e) {e.printStackTrace();}
	}
	
}
