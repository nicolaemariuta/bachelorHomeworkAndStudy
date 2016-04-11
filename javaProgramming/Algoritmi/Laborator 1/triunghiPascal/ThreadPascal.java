package triunghiPascal;

import java.io.*;
import java.util.Arrays;

public class ThreadPascal extends Thread
{
	String url;
	int m;
	
	ThreadPascal(String url, int m)
	{
		this.url = url;
		this.m = m;		
	}
	
	public void run()
	{   m = m+1;
		int[][] array = new int[m][m];
		System.out.println(m);
		
		for (int i = 0; i < m; i++)
		{
			for (int j = 0; j<m; j++)
			{
				array[i][j] = 0;
			}
			
		}
	
		for (int i = 0 ; i<m; i++)
		{
			for(int j =0; j<i; j++)
			{
			array[i][j] = 1;
			
			}
		}
		
		for (int i = 1; i<m; i++)
		{
			for (int j = 1; j<i-1; j++)
			{
				System.out.println("...");
				array[i][j] = array[i-1][j] + array[i-1][j-1];
				
			}
		}
		
		try 
		{
			PrintWriter out = new PrintWriter(new FileWriter(url));
			
			for (int i = 0; i < m; i++)
			{
				for (int j = 0; j<m; j++)
				{
					
					if (array[i][j]!=0)
					{

					System.out.println(array[i][j]);
					out.print(array[i][j]);
					out.print(" ");
					}
				}
				out.println();
			}
			out.close();
		} 
		
		
		catch (Exception e) 
		{
			
			e.printStackTrace();
		}
		
	}
	
	

}
