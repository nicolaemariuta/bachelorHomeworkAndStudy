package mainPack;

import java.util.ArrayList;
import java.util.Arrays;

public class Perceptron {
	
	ParametruPerceptron w1;
	ParametruPerceptron w2;
	ParametruPerceptron w3;
	int[] cod;
	double valoare;
	double fi;
	double pi;
	
	Perceptron (ParametruPerceptron w1, ParametruPerceptron w2, ParametruPerceptron w3)
	{
		this.w1 = w1;
		this.w2 = w2;
		this.w3 = w3;
	
		int[] cod = new int[w1.getCod().length + w2.getCod().length + w3.getCod().length];
		
		for(int i =0; i<cod.length; i++)
		{
			if(i<cod.length/3)
			{
				cod[i] = w1.getCod()[i];
			}
			else if (2*i<cod.length/3)
			{
				cod[i] = w2.getCod()[i%3];
			}
			else
				
			{
				cod[i] = w3.getCod()[i%3];
			}
		}
		
		
	}
	
	Perceptron (int[] cod)
	{
		this.cod = cod;
		
		int[] cod1 = Arrays.copyOfRange(cod, 0, cod.length/3);
		int[] cod2 = Arrays.copyOfRange(cod, cod.length/3, 2*cod.length/3);
		int[] cod3 = Arrays.copyOfRange(cod, 2*cod.length/3, cod.length);
		
		w1 = new ParametruPerceptron(cod1);
		w2 = new ParametruPerceptron(cod2);
		w3 = new ParametruPerceptron(cod3);
		
	}
	
	
	public String toString()
	{
		return w1.toString()+ w2.toString() + w3.toString() + " Adica : " + w1.getInt()+","+ w2.getInt()+","+ w3.getInt();
	}
	
	
	public void evaluare(Intrare x, Intrare d)
	{
		w1.evaluare(x, d, 0);
		w2.evaluare(x, d, 1);
		w3.evaluare(x, d, 2);
		
		valoare = w1.valoare + w2.valoare + w3.valoare ;
	}
	
	public void evaluareFi()
	{
	    fi = 1/valoare;

	}
	
	public void evaluarePi(ArrayList<Perceptron> populatie)
	{
		double sumaFi = 0;
		for(Perceptron pachet: populatie)
		{
			sumaFi = sumaFi + pachet.fi;
		}
		
		pi = fi/sumaFi;
		
	}
	
	
	public static ArrayList<Perceptron> selectie(ArrayList<Perceptron> populatie)
	{
		
		int size = populatie.size();
		ArrayList<Perceptron> selectie = new ArrayList<Perceptron>(size);
		
		
		int[] roata = new int[10000];
		int contor = 0;
		Arrays.fill(roata, 0);
		
		for(int i = 0; i<size; i++)
		{
		
			for(int j =0; j < populatie.get(i).pi*10000-1; j++)
			{
				if(contor!=10000)
				{
				roata[contor]= i;
				contor++;
		//		System.out.println(contor);
				}
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
	
	
	
	public static ArrayList<Perceptron> incrucisare(ArrayList<Perceptron> populatie)
	{
		int size = populatie.size();
		ArrayList<Perceptron> incrucisare = new ArrayList<Perceptron>(size);
		
		for(int i = 0; i <size; i++)
		{
			Perceptron cr1 = populatie.get(i);
			Perceptron cr2 = populatie.get(i+1);
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
			
			 incrucisare.add(new Perceptron(cod1));
			 incrucisare.add(new Perceptron(cod2));
			}
			else
			{
				System.out.println("Are loc o incrucisare");
				incrucisare.add(new Perceptron(cod3));
				incrucisare.add(new Perceptron(cod4));
			}
		}
		
		
		
		
		return incrucisare;
	}

	
	
	

}
