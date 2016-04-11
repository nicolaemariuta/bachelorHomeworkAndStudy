package clustering;

import java.util.ArrayList;

public class Kmeans {
	
	public static void main(String[] args)
	{
		ArrayList<Punct> puncte = new ArrayList<Punct>();    // lista de puncte
		puncte.add(new Punct(45,85,"P1"));
		puncte.add(new Punct(50,43,"P2"));
		puncte.add(new Punct(40,80,"P3"));
		puncte.add(new Punct(55,42,"P4"));
		puncte.add(new Punct(200,43,"P5"));
		puncte.add(new Punct(48,40,"P6"));
		puncte.add(new Punct(195,41,"P7"));
		puncte.add(new Punct(43,87,"P8"));
		puncte.add(new Punct(190,40,"P9"));
		
		for(Punct punct: puncte)
		{
			System.out.println(punct.toString());
		}
		
		// initializare numar de clustere
		int k = 3;
		
		
			
			ArrayList<Punct> centroizi = new ArrayList<Punct>();
			
			for(int i = 0; i < k; i++)   // sunt alesi aleator cei k centroizi
			{
				while(true)
				{
					int aleator = (int)(Math.random()*9);
					System.out.println("aleator = "+ aleator);
					
					if(!centroizi.contains(puncte.get(aleator)))
					{
						centroizi.add(puncte.get(aleator));
						break;
					}
					
				}
			}
			
			
			
			
	for(int j =0; j<5; j++)
		{	
		
			System.out.println("Centroizi sunt:");
			for(Punct punct:centroizi)
			{
				System.out.println(punct.toString());
			}
			
			
			
			//fiecarui punct ii este asignat cate un centroid
			for(Punct punct: puncte)   
			{
				punct.setAsignat(punct.getMin(centroizi));
				
			}
			
			
			
			// creare clustere
			ArrayList<Cluster> clustere = new ArrayList<Cluster>();
			for(int i = 0; i <k; i++)
			{
				clustere.add(new Cluster());
				clustere.get(i).cluster.add(centroizi.get(i));
				for(Punct punct: puncte)
				{
					if(!clustere.get(i).cluster.contains(punct) && punct.getAsignat().equals(clustere.get(i).cluster.get(0)))
					{
						clustere.get(i).cluster.add(punct);
					}
				}
				
			}
			
			
			
 			for(Cluster cluster: clustere)
 			{
 		//		System.out.println("Clusterul contine:");
 				for(Punct punct: cluster.cluster)
 				{
 			//		System.out.println(punct.toString() + " are asignat " + punct.getAsignat().nume);
 				}
 			}
 			
 			centroizi.clear();
 			for(Cluster cluster: clustere)
 			{
 				double x = 0;
 				double y = 0;
 				
 				for(Punct punct : cluster.cluster)
 				{
 					x = x + punct.x;
 					y = y + punct.y;
 				}
 				Punct punct = new Punct(x/cluster.cluster.size(), y/cluster.cluster.size() );
 				centroizi.add(punct.getMin(cluster.cluster));
 			}
 			
 			
			
		
			
		}
		
		
		
		
		
	}

}
