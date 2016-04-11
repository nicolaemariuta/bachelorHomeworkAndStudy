package ecuatie;

import java.util.Scanner;

public class Incercare {
	public static void main(String[] args) 
	{
		
		EcuatieGradN a1 = new EcuatieGradN();
		EcuatieGradN a2 = new EcuatieGradN();
		EcuatieGradN a3 = new EcuatieGradN();
		
		a1.Citire();
		a2.Citire();
		
		
		a3=EcuatieGradN.Suma(a1, a2);
		a3.Afisare();
		
		
		
	}

}
