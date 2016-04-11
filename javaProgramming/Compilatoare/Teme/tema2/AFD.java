package tema2;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.Scanner;

import tema1.Vocabular;

/*
 * Format fisier
 * 
   3 // n = numarul de stari
   3 // m = numarul de simboluri
   a b c // simbolurile automatului
   1 2 0 // matricea T de tranzitii
   2 1 0
   0 2 2
   1 // p = numarul de stari finale
   2 // indicele singurei stari finale
   0 // indice stare start
 */

public class AFD {
	
	public int nrStari;
	public int nrSimboluri;
	public Vocabular vocabular;
	public int[][] matriceTranzitii;
	public int stariFinale;
	public int[] indiciSF;
	public int start;
	
	AFD(int nrStari, int nrSimboluri, Vocabular vocabular, int[][] matriceTranzitii, int stariFinale, int[] indiciSF, int start)
	{
		this.nrStari = nrStari;
		this.nrSimboluri = nrSimboluri;
		this.vocabular = vocabular;
		this.matriceTranzitii = matriceTranzitii;
		this.stariFinale = stariFinale;
		this.indiciSF = indiciSF;
		this.start =start;
		
	}
	
	AFD() {}

	
	public static AFD citireFisier(String url)
	{
		AFD afd = null;
		
		try {
			Scanner in = new Scanner(new File(url));    
			
			
			
			int nrStari = in.nextInt();       // citeste nr stari
			int nrSimboluri = in.nextInt();   // citeste nr simboluri
			
			String vocab = "";
			for (int i =0; i<nrSimboluri; i++)    // creeaza vocabularul
			{
				String litera = in.next();
				
				if(!vocab.contains(litera))
				{
					vocab = vocab+litera;
				}
			}
			Vocabular vocabular = new Vocabular(vocab, nrSimboluri);
			
			
			
			int[][] matriceTranzitii = new int[nrStari][nrSimboluri];    // citire matrice tranzitii
			
			for(int i = 0; i< nrStari; i++)
			{
				for(int j = 0; j< nrSimboluri; j++)
				{
					matriceTranzitii[i][j] = in.nextInt();
				}
			}
			
			int stariFinale = in.nextInt();     // citire nr stari finale 
			
			int[] indiciSF = new int[stariFinale];   // citire indici stari finale
			for(int i =0; i<stariFinale; i++)
			{
				indiciSF[i] = in.nextInt();
			}
			
			int start = in.nextInt();
			
			afd = new AFD(nrStari, nrSimboluri, vocabular, matriceTranzitii, stariFinale, indiciSF, start);  // construire afd
			
			
		} catch (FileNotFoundException e) {
			System.out.println("Fisierul nu a fost gasit");
			e.printStackTrace();
			
		}   
		
		catch (Exception e)
		{
			e.printStackTrace();
			System.out.println("Fisierul a fost scris gresit!");
		}
	
		return afd;
	}
	
	public void parcurgere(String cuvant)
	{
		
		
		
		int l = cuvant.length();
		
		for(int i = 0; i < l; i++)
		{
			System.out.println( (i+1) + ". " + start + "," +cuvant);
			start = this.matriceTranzitii[start][vocabular.getVocabular().indexOf(cuvant.substring(0, 1))];
			cuvant = cuvant.substring(1,cuvant.length());
		}
		
		boolean acceptat = false;
		
		for (int i : indiciSF)
		{
			if (start == i)
			{
				acceptat = true;
				break;
			}
		}
		
		
		if(acceptat)
		{
			System.out.println("Cuvantul a fost acceptat");
		}
		else
		{
			System.out.println("Cuvantul nu a fost acceptat");
		}
	}
	
	
	
	public static void main(String[] args)   // testare automat
	{
		AFD afd = citireFisier("fisierAFD");
		
		// parcurgere AFD
	
		afd.parcurgere("baa");
		
		
		
		
	}
	
	

}
