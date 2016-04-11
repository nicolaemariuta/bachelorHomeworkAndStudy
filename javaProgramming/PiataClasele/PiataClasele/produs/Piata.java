package produs;

import java.util.Scanner;

public class Piata {
	
	public static void main(String[] args) {
		
		 String denumire="";
		 double pret =0;
		 int stoc=0;
		 Scanner tastatura = new Scanner(System.in);
		 Produs cumparaturi = new Produs();
		 int i;
		 Produs[] temp = new Produs[2];
		 
		 for ( i = 0; i < temp.length; i++)
		 {
			 
			 System.out.println("Introduceti denumirea produsului");
			 denumire = tastatura.next();
			 cumparaturi.setDenumire(denumire);
			 
			 System.out.println("Introduceti pretul");
			 pret = tastatura.nextDouble();
			 cumparaturi.setPret(pret);
			 
			 System.out.println("Introduceti stocul");
			 stoc = tastatura.nextInt();
			 cumparaturi.setStoc(stoc);
			 
			 temp[i] = cumparaturi;
			 
		 }
		 for (i = 0; i<temp.length; i++)
		 {
			 temp[i].print();
		 }
		 
	}
}
