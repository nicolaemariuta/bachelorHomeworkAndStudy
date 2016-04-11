package ecuatie;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Scanner;

 public class EcuatieGradN {
	
	public int x;
	public  int[] ecuatie = new int[20];
	Scanner tastatura = new Scanner(System.in);
	
	EcuatieGradN()
	{
		for (int i=0; i<20; i++)
		{
			ecuatie[i]= 0;
		}
	}
	
	public int Citire ()
	{
		System.out.println("Introduceti gradul ecuatiei:");
		x = tastatura.nextInt();
		
		System.out.println("introduceti coeficientii ecuatiei");
		
		
		for (int i = 0; i < x+1; i++)
		{
			System.out.println("x"+i+"=");
			ecuatie[i] = tastatura.nextInt();
		}
		
		return ecuatie[x+1];
		
	}
	
	public void Afisare ()
	{
		
		for (int j = 0; j <= x; j++)
		{
			System.out.println(ecuatie[j]+"x^"+j+"+");
			
		}
		
	}
	
	public static EcuatieGradN Suma (EcuatieGradN a1, EcuatieGradN a2)
	{
		EcuatieGradN a3 = new EcuatieGradN();
		int y;
		if (a1.x>=a2.x)
		{
			y = a1.x;
		}
		else {
			y = a2.x;
		}
		
	   a3.x = y;
	   for (int i = 0; i<=y; i++)
	   {
		   a3.ecuatie[i] = a1.ecuatie[i]+a2.ecuatie[i];
	   }
	   
		return a3;
		
	}
	public static EcuatieGradN Scadere (EcuatieGradN a1, EcuatieGradN a2)
	{
		EcuatieGradN a3 = new EcuatieGradN();
		int y;
		if (a1.x>=a2.x)
		{
			y = a1.x;
		}
		else {
			y = a2.x;
		}
		
	   a3.x = y;
	   for (int i = 0; i<=y; i++)
	   {
		   a3.ecuatie[i] = a1.ecuatie[i]-a2.ecuatie[i];
	   }
	   
		return a3;
		
	}
}
