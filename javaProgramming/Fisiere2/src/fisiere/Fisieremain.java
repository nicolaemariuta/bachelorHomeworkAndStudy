package fisiere;

import java.io.*;
import java.util.Scanner;



public class Fisieremain {
	
	
	public static void main(String[] args) {
		
		Scanner tastatura = new Scanner (System.in);
		String url;
		
		System.out.println("introduceti adresa catre fisier");
		url = tastatura.next();
		
		
		String rand;
		try{
		BufferedReader fisier = new BufferedReader(new FileReader(url));
		while ((rand = fisier.readLine()) != null)
				{
			System.out.println(rand);
				}
		
		}
		
		catch (IOException e)
		{
			System.out.println(e);
		}
		
		
	}
}
