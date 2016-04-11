package kruskal;

public class MainClass 
{
	public static void main(String[] args) 
	
	{
		int[] varfuri  = {1, 2,3,4,5};
		Muchie[] m = {new Muchie(1,2,4), new Muchie(2,4,1), new Muchie(4,5,5), new Muchie(5,1,1),
					  new Muchie(1,3,3),new Muchie(2,3,2), new Muchie(4,3,7), new Muchie(5,3,4)};
		
		
		int[] etichete = new int[varfuri.length];
		
		
		//construire array etichete
		for(int i = 0 ; i<etichete.length; i++)
		{
			etichete[i] = i;
		}
		
		//Algoritmul
		sortareMuchii(m);                              // sortare muchii in functie de cost
		int n = varfuri.length;                       // numarul total de varfuri
		Muchie[] A = new Muchie[100];					// muchiile arborelui partial de cost minim
		for(int i = 0; i<A.length; i++)
		{
			A[i] = null;
		}
		
		
		int[][] disjuncte = new int[20][20];              // array pentru multimile disjuncte
		for(int i = 0; i< 20; i++)
		{
			for (int j = 0; j<20; j++)
			{
				disjuncte[i][j] = 0;
			}
		}
		
		for(int i = 0; i< n; i++)
		{
			disjuncte[i][0] = varfuri[i];
		}
	
		
		for(int i = 0; i<n-1; i++)
		{
			
			Muchie muchie = m[i];
			int ucomp = find(m[i].getV1(), etichete);
			int vcomp = find(m[i].getV2(), etichete);
			if(ucomp!=vcomp)
			{
				
				merge(ucomp,vcomp,etichete);
				A[i] = new Muchie(m[i].getV1(),m[i].getV2(),muchie.getC());
				
			}
			
		}
			
		
		for(int i = 0; i<A.length-1; i++)
		{
			try
			{
			System.out.println("Muchia cu numarul "+ i+" are varfurile: ("+A[i].getV1()
								+","+A[i].getV2()+") si are costul:"+ A[i].getC());
			}
			catch(NullPointerException e) {}
		}
		
	}
	
	
	
	
	public static void sortareMuchii(Muchie[] M)
	{
		for ( int i = 1; i< M.length; i++)
		{
			Muchie m = M[i];
			int x = M[i].getC();
			int j = i-1;
			
				while(j>=0 && x<M[j].getC())
				{
					M[j+1] = M[j];
					j = j-1;
				}
				
			M[j+1] = m;
		}	
			
			
	}
	
	public static int find(int x, int[] etichete)
	{
		
		return etichete[x-1];
	}
	
	
	public static void merge(int a, int b, int[] etichete)
	{
		int i = a;
		int j = b;
		
		if(i<j)
		{
			int k = i;
			i = j;
			j = k;
		}
		
		for(int k = 0; k<etichete.length; k++) 
		{
			if(etichete[k] == j)
			{
				etichete[k] = i;
			}
		}
	}
	

}
