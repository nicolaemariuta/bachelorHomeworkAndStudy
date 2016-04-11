/*
 * Created on Nov 8, 2012
 *
 * TODO To change the template for this generated file go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
package minimZecimal;

import java.util.ArrayList;
import java.util.Arrays;

/**
 * @author user
 *
 * TODO To change the template for this generated type comment go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
public class Cromozom {
	
	public int[] cod = new int[6];
	public double fi=0;
	public double pi=0;
	
	public Cromozom(int[] cod)
	{
		this.cod = cod;
	}
	
	public String toString()
	{
		String cd = "";
		
		for(int i=0; i<cod.length; i++)
		{
			cd = cd+cod[i];
		}
		
		return cd;
	}
	
	public void evaluare()
	{
		String codificare = "";
		for(int i =0; i < cod.length; i++)
		{
			codificare = codificare+cod[i];
		}
		fi =Integer.parseInt(codificare,2);
		fi = 1/fi;
//		System.out.println(fi);
	}
	
	public static void evaluarePi(ArrayList<Cromozom> populatie)
	{
		
		
		double suma = 0;
		
		for(Cromozom cr: populatie)
		{
			suma = suma+cr.fi;
		}
		
		for(Cromozom cr:populatie)
		{
			cr.pi = cr.fi/suma;
		}
	}
	
	public static ArrayList<Cromozom> selectie(ArrayList<Cromozom> populatie)
	{
		
		int size = populatie.size();
		ArrayList<Cromozom> selectie = new ArrayList<Cromozom>(size);
		
		
		int[] roata = new int[10000];
		int contor = 0;
		Arrays.fill(roata, 0);
		
		
		
		for(int i = 0; i<size; i++)
		{
		
			for(int j =0; j < populatie.get(i).pi*10000-1; j++)
			{
				
				roata[contor]= i;
				contor++;
		//		System.out.println(contor);
			}
		}
		
		int pozitie = 0;
		
		for(int i =0; i<size; i++)
		{
	
			pozitie = (pozitie +(int)(Math.random()*10000))%10000;
	//		System.out.println(pozitie);
			selectie.add(populatie.get(roata[pozitie]));
		}
		
		
		return selectie;
		
	}
	
	
	public static ArrayList<Cromozom> incrucisare(ArrayList<Cromozom> populatie)
	{
		int size = populatie.size();
		ArrayList<Cromozom> incrucisare = new ArrayList<Cromozom>(size);
		
		for(int i = 0; i <size; i++)
		{
			Cromozom cr1 = populatie.get(i);
			Cromozom cr2 = populatie.get(i+1);
			i++;
			
			
			int[] cod1 = cr1.cod;
			int[] cod2 = cr2.cod;
			
			int[] cod3 = new int[cod1.length];
			int[] cod4 = new int[cod2.length];
			
			for(int j = 0; j<cod1.length; j++)
			{
				if(j<cod1.length/2)
				{
					cod3[j] = cod1[j];
					cod4[j] = cod2[j];
				}
				else
				{
					cod3[j] = cod2[j];
					cod4[j] = cod1[j];
				}
			}
			
			if(Math.random()<0.1)
			{
			
			 incrucisare.add(new Cromozom(cod1));
			 incrucisare.add(new Cromozom(cod2));
			}
			else
			{
				System.out.println("Are loc o incrucisare");
				incrucisare.add(new Cromozom(cod3));
				incrucisare.add(new Cromozom(cod4));
			}
			
		}
		
		
		
		
		return incrucisare;
	}

}
