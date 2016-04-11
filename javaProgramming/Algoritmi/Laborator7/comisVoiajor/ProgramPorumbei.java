package comisVoiajor;

import java.util.Arrays;
import java.util.Stack;

public class ProgramPorumbei
{
	public static void main(String[] args)
	{
		
		
		int[][] A = {{0,1,1,2},{1,0,4,2},{1,4,0,3},{2,2,3,0}};
		
		int[] solutie = comisVoiajor(0,A,4);
		
		for(int i = 0; i <solutie.length; i++)
		{
			if(solutie[i]!=0)
			{
			System.out.println("Am mers prin orasul " + solutie[i]);
			}
		}
		
 		
	}
	
	public static int[] comisVoiajor(int v, int[][] A, int n)
	{
	

		
		boolean[] vizitat = new boolean[n];
		for(int i = 0; i < vizitat.length; i++)
		{
			vizitat[i] = false;
		}
		
		vizitat[0] = true;
		
		int orasDestinatie = 0;
		int orasSursa = v;
		int nr = 0;
		
		
		int[] solutie = new int[10000];
		for(int i = 0; i<solutie.length; i++)
		{
			solutie[i] = 0;
		}
		
		solutie[nr] =orasDestinatie;
		int cost = 0;
		
		for(int i = 0 ; i <n-1; i++)
		{
			int min =10000;
		
			for(int j = 0; j<n; j++)
			{
				
				if(A[orasSursa][j] !=0 && vizitat[j] == false && A[orasSursa][j]<min)
				{
					System.out.println(j);
					System.out.println(vizitat[j]);
					min = A[orasSursa][j];
					orasDestinatie = j;
				}
			}
			
			orasSursa = orasDestinatie;
			vizitat[orasSursa] = true;
	//		cost = cost+min;
			nr = nr+1;
			solutie[nr] = orasDestinatie;
		}
		

		if(A[orasSursa][v]!=0)
		{
		//	cost = cost+A[orasSursa][v];
			nr = nr+1;
			solutie[nr] = orasDestinatie;
		}
			
		
		return solutie;
		
		
	}

}
