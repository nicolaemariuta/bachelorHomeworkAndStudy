package numrare;

import java.io.BufferedReader;
import java.io.DataInputStream;
import java.io.EOFException;
import java.io.FileInputStream;
import java.io.FileReader;
import java.io.IOException;
import java.util.Scanner;
import java.io.File;

public class FisiereNumarare {
	
	
	public static void main(String[] args) throws EOFException {
		
		
				try
				{
	
				
				Scanner tastatura = new Scanner (System.in);
				
				System.out.println("introduceti calea catre fisier");  	// se introduce calea catre fisier
				String url;
				url = tastatura.next();
				Scanner in = new Scanner(new File(url));            	 // folosim clasa scanner pentru a citi din fisier
				
				String cuvant;  										// introducerea cuvantului cautat 
				System.out.println("introduceti cuvantul cautat");
				cuvant = tastatura.next();
				int contor =0;										
				
				String cuvant2;
				
				while ( (in.hasNext()))					// se verifica fiecare cuvant care e in text pana la sfarsitul acestuia
				{
					cuvant2 = in.next();
					if (cuvant2.contains(cuvant))
					{
						contor =contor+1; 						// si se contorizeaza
					}
				}
				
				System.out.println("cuvantul "+ cuvant + " apare in text de "+ contor+" ori!");
				
				}
				catch (Exception e)
				{
					System.out.println(e);
				}
			
				
		}
	}


