package fisiere;

import java.io.*;
import java.util.Scanner;



public class Fisieremain {
	
	
	public static void main(String[] args) {
		
		
		
		
		int B;
		int G;
		int R;
		
		
		try{
		BufferedInputStream fisier = new BufferedInputStream(new FileInputStream("C:/Users/npiulitza/Desktop/poza/pisica.bmp"));
		BufferedOutputStream  fisier2 = new BufferedOutputStream (new FileOutputStream("C:/Users/npiulitza/Desktop/poza/poze2094.bmp"));
		
		for (int i =0; i<54; i++)
		{
			fisier2.write(fisier.read());
		}
		
		while (true)
		{
			B = fisier.read();
			G = fisier.read();
			R = fisier.read();
			
			fisier2.write(-B+10);
			if (B==-1)
				break;
			fisier2.write(-G+10);
			fisier2.write(-R+10);
			
			
		}
		
		
		
		
		
		
		fisier.close();
		fisier2.close();
		
		}
		
		catch (IOException e)
		{
			System.out.println(e);
		}
		
		
	}
}
