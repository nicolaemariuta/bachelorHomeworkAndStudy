package incercari;

import java.io.FileInputStream;
import java.io.InputStreamReader;

public class Conversie {
	public static void main(String[] args) {
		
		try
		{
			InputStreamReader fisier = new InputStreamReader (new FileInputStream("C:/Users/npiulitza/Desktop/poza/document.odt"));
			String caractere;
			while (true)
			{
				
				
				caractere = fisier.toString();
				System.out.println(caractere);
				if (caractere == null)
					break;
			}
			
			fisier.close();
			
		}
		catch (Exception e)
		{
			System.out.println(e);
		}
		
	}

}
