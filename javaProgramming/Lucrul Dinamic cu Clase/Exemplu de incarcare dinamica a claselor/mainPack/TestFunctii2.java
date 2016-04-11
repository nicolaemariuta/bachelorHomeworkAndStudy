package mainPack;

import java.io.*;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.*;

public class TestFunctii2

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
		BufferedReader stdin = new BufferedReader( new InputStreamReader ( System.in));
		String numeFunctie = "";
		
		while (!numeFunctie.equals("gata"))
		{
			System.out.println("\n Functie: ");
			numeFunctie = stdin.readLine();
			
			try
			{
				//incarcam clasa
				Class c = Class.forName(numeFunctie);
				
				// cream un obiect de tip Functie
				Object f = c.newInstance();
				
				// setam vectorul (Setam direcat variabila v)
				Field vector = c.getField("V");
				vector.set(f, v);
				
				
				// apelam metoda executa
				// folosim null pentru ca nu avem argumenta
				Method m = c.getMethod("executa", null);
				Integer ret = (Integer)m.invoke(f, null);
				System.out.println("Cod returnat: \n"+ret);
				
				
			}
			catch (Exception e)
			{
				System.out.println("Eroare la apelarea functiei!");
			}
		}
		
		
	}

}
