package mainPack;

import uk.ac.shef.wit.simmetrics.similaritymetrics.JaroWinkler;

public class TestSimetrics {
	
	public static void main(String[] args) {
		JaroWinkler algorithm = new JaroWinkler();
	    System.out.println(algorithm.getSimilarity("hip hop", "hip-hop"));
	}

}
