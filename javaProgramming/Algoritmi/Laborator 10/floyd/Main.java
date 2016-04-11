package floyd;

public class Main 


{
	public static void main(String[] args)
	{
		
		int adj[][] = {{0,5,999,999},
						{50,0,15,5},
						{30,9999,0,15},
						{15,999,5,0}};
		
		
		
		int adj2[][] = adj;
		int path = 0;
				
		for (int k = 0; k < 3; k++) 
		{
			for(int i = 0; i < 3; i++)
			{
				for(int j = 0; j <3; j++)
				{
					adj2[i][j] = Math.min(adj[i][j],  adj[i][k]+adj[k][j]);
				}
			}
			
			
			
		}
		
	
 		
	
			
			
			System.out.println("Matricea drumurilor");
			for (int a = 0; a < adj2.length; a++) {
				for (int b = 0; b < adj2.length; b++) {
					System.out.print(adj2[a][b] + " ");
				}
				System.out.println();
			}
 		
		
	}
	
	
	

}
