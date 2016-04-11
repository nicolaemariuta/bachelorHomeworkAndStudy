package tema1;

import java.util.ArrayList;
import java.util.Arrays;

public class Diagrama {
	
	public static void main(String[] args) {
		
		Vocabular vocabular = new Vocabular("abcd");
		
		ArrayList<String> cuvinte = new ArrayList<String>();
		cuvinte.add("abacd");
		cuvinte.add("daadc");
		
		int[] frecventa = new int[vocabular.getVocabular().length()];
		Arrays.fill(frecventa, 0);
		
		for(String cuvant : cuvinte)
		{
			for(int i = 0; i<cuvant.length(); i++)
			{
				String c = cuvant.substring(i,i+1);
				int index = vocabular.getVocabular().indexOf(c);
				
				frecventa[index] = frecventa[index]+1;
			}
		}
		
		
		System.out.println("Numar de tranzitii:");
		for(int i =0; i < frecventa.length; i++)
		{
			System.out.println(vocabular.getVocabular().substring(i,i+1) + " = " + frecventa[i]);
		}
		
		
		
	}
	

}
