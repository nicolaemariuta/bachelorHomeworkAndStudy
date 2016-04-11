package tema1;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Scanner;

public class Vocabular
{
	private int n;
	String vocabular;
	
	
	Vocabular(String vocabular)
	{
		this.vocabular = vocabular;
		this.n = vocabular.length();
	}
	
	
	public Vocabular(String vocabular, int n)
	{
		this.vocabular = vocabular;
		this.n = n;
	}
	
	
	Vocabular(int n)      
	{
		vocabular = "";
		
		System.out.println("Introduceti vocabularul:");
		
		while(vocabular.length()!=n)
		{
			Scanner scan = new Scanner(System.in);
			String c = scan.next();
			
			if(c.length() == 1 && !vocabular.contains(c))
			{
				vocabular = vocabular + c;
			}
			else
			{
				System.out.println("Ai introdus gresit!");
			}
			
		}
		
		this.n = n;
	}
	
	public String toString()
	{
		return vocabular;
	}
	
	public boolean apartine(String cuvant)
	{
		boolean c = true;
		
		
		for(int i = 0; i<cuvant.length(); i++)
		{
			
			if(!vocabular.contains(cuvant.subSequence(i, i+1)))
			{
				c = false;
				break;
			}
		}
		
		return c;
	}
	
	
	public int getN() {
		return n;
	}


	public void setN(int n) {
		this.n = n;
	}


	public String getVocabular() {
		return vocabular;
	}


	public void setVocabular(String vocabular) {
		this.vocabular = vocabular;
	}
	
	
	//exercitiul 1
	public static void main(String[] args) {
		
		Vocabular vocabular = new Vocabular(4);
		
		ArrayList<String> cuvinte = new ArrayList<String>();
		cuvinte.add("aabbde");
		cuvinte.add("abc");
		cuvinte.add("cb a");
		cuvinte.add("123");
		
		for(String cuvant : cuvinte)
		{
			if(vocabular.apartine(cuvant))
			{
				System.out.println("Cuvantul " + cuvant + " apartine vocabularului " + vocabular.toString());
			}
			else
			{
				System.out.println("Cuvantul " + cuvant + " nu apartine vocabularului " + vocabular.toString());
			}
		}
		
	
		
	}
	
	
	

}
