package uca.limos;

import uca.limos.api.preprocess.PreprocessV2;

public class RunPreprocess {
	public static void main(String[] args) throws Exception{
		PreprocessV2 pr = new PreprocessV2();
//		pr.persisteConstraints();
		pr.preprocess();
//		PreprocessV2.separate();
		
		/*
		 * Hospital  egal = 3 other = 39
		 * Tax egal = 1  other = 49
		 * pstock egal = 1 other = 9
		 * synthetic egal = 6 other = 9
		 */
	}
}
