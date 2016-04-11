package fisiere;

import java.io.*;
import java.util.Scanner;



public class Fisieremain {
	
	
	public static void main(String[] args) {
		
		
		
		
		int B;
		int G;
		int R;
		
		
		try
		{
		BufferedInputStream fisier = new BufferedInputStream(new FileInputStream("C:\\Users\\npiulitza\\Desktop\\altele\\folder\\Tom+y+Jerry.bmp"));
		BufferedOutputStream  fisier2 = new BufferedOutputStream (new FileOutputStream("C:\\Users\\npiulitza\\Desktop\\altele\\folder\\Tom+y+Jerry2.bmp"));
		
		for (int i =0; i<54; i++)
		{
			fisier2.write(fisier.read());
		}
		
		while (true)
		{
			B = fisier.read();
			G = fisier.read();
			R = fisier.read();
			
			fisier2.write(0);
			if (B==-1)
				break;
			fisier2.write((B+G+R)/2);
			fisier2.write(0);
			
			
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
