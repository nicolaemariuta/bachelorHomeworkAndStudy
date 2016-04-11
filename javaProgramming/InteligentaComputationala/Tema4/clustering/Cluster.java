package clustering;

import java.util.ArrayList;

public class Cluster {
	
	ArrayList<Punct> cluster ;
	
	Cluster(ArrayList<Punct> cluster)
	{
		this.cluster = cluster;
	}
	
	
	Cluster()
	{
		cluster = new ArrayList<Punct>();
	}

}
