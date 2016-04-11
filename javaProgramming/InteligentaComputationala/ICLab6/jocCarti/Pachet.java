package jocCarti;

import java.util.ArrayList;
import java.util.Arrays;

import minimZecimal.Cromozom;



public class Pachet {
	
	
	int[] cod;
	double fi=0;
	double pi=0;
	int suma = 0;
	int produs = 1;
	double valoare;
	
	public Pachet(int[] cod)
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
	
	public void sumaSiProdus()
	{
		for(int i =0; i < cod.length; i++)
		{
			if(cod[i] == 0)
			{
				
				produs = produs*(i+1);
			}
			else
			{
				suma = suma + (i+1);
			}
		}
	}
	
	public void evaluare()
	{
		valoare = Math.abs(suma-36)+Math.abs(produs-360);
	}
	
	

	public void evaluareFi()
	{
	    fi = 1/valoare;
	//    System.out.println(fi);
	}
	
	public void evaluarePi(ArrayList<Pachet> populatie)
	{
		double sumaFi = 0;
		for(Pachet pachet: populatie)
		{
			sumaFi = sumaFi + pachet.getFi();
		}
		
		pi = fi/sumaFi;
		
	}
	
	public static ArrayList<Pachet> selectie(ArrayList<Pachet> populatie)
	{
		
		int size = populatie.size();
		ArrayList<Pachet> selectie = new ArrayList<Pachet>(size);
		
		
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
	
	
	public static ArrayList<Pachet> incrucisare(ArrayList<Pachet> populatie)
	{
		int size = populatie.size();
		ArrayList<Pachet> incrucisare = new ArrayList<Pachet>(size);
		
		for(int i = 0; i <size; i++)
		{
			Pachet cr1 = populatie.get(i);
			Pachet cr2 = populatie.get(i+1);
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
			
			if(Math.random()<0.2)
			{
			
			 incrucisare.add(new Pachet(cod1));
			 incrucisare.add(new Pachet(cod2));
			}
			else
			{
				System.out.println("Are loc o incrucisare");
				incrucisare.add(new Pachet(cod3));
				incrucisare.add(new Pachet(cod4));
			}
		}
		
		
		
		
		return incrucisare;
	}

	
	public int[] getCod() {
		return cod;
	}

	public void setCod(int[] cod) {
		this.cod = cod;
	}

	public double getFi() {
		return fi;
	}

	public void setFi(double fi) {
		this.fi = fi;
	}

	public double getPi() {
		return pi;
	}

	public void setPi(double pi) {
		this.pi = pi;
	}

	public int getSuma() {
		return suma;
	}

	public void setSuma(int suma) {
		this.suma = suma;
	}

	public int getProdus() {
		return produs;
	}

	public void setProdus(int produs) {
		this.produs = produs;
	}

	public double getValoare() {
		return valoare;
	}

	public void setValoare(double valoare) {
		this.valoare = valoare;
	}

	
	
}
