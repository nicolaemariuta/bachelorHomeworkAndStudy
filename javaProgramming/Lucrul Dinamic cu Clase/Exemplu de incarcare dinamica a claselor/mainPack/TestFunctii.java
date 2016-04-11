package mainPack;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.*;

public class TestFunctii
{
	public static void main(String[] args) throws IOException
	{
		// generam un vector aleator
		int n = 10;
		int v[] = new int[n];
		Random rand = new Random();
		for (int i =0; i<n; i++)
		{
			v[i] = rand.nextInt(100);
		}
		
		// citim numele unei functii
		BufferedReader stdin = new BufferedReader (new InputStreamReader(System.in));
		String numeFunctie = "gata";
		while(! numeFunctie.equals("gata"));
		{
			System.out.println("\n Functie:");
			numeFunctie = stdin.readLine();
			
			try
			{
				// incarcam clasa
				Class c = Class.forName(numeFunctie);
				
				// cream un obiect de tip functie
				Functie f = (Functie) c.newInstance();
				
				// setam vectorul
				f.setVector(v); // sau f.v = v
				
				// executam functia
				int ret = f.executa();
				System.out.println("\n Cod returna: " +ret);
				
			}
			catch(ClassNotFoundException e)
			{
				System.err.println("Functie inexistenta!");
								
			}
			catch (InstantiationException e)
			{
				System.err.println("Functia nu poate fi instantiata!");
			}
			catch (IllegalAccessException e)
			{
				System.err.println("Functia nu poate fi accesata!");
			}
			
		}
		
		
		
	}
	

}
