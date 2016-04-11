package probabilitati;
import java.util.Scanner;
public class Probab {
	public static void main(String[] args) {
		
	 int i ;                                          // numarul de caractere pe care il  citim 
	 char[] array = new char[30];              		  // sirul de caractere
	 char c;  								  		  // caracterul pentru care calculam probabilitatea de aparitie in text
	 int x = 0;  									  // contor pentru numarul de aparitii al caracterului
	 Scanner tastatura = new Scanner(System.in);
	 
	 do          				  					  // citirea numarului de caractere al sirului
	 {
	 System.out.println("introduceti un numar de caractere care sa fie mai mic de 30 de caractere:"); 
	 i = tastatura.nextInt();
	 }
	 while (i>30);
	 
	 System.out.println("introduceti caractele");
	 
	 for ( int j = 0; j<i; j++ )   					  // cititrea sirului de la tastatura
	 {
		 array[j] = tastatura.next().charAt(0);
	 }
	 
	 System.out.println("introduceti caracterul pentru care vreti sa calculati probabilitatea");
	 c = tastatura.next().charAt(0);
	 
	 for (int j = 0; j<i; j++)                      // calcularea numarului de aparitii al caracterului cautat
	 {
		 if (c==array[j])
		 {
			 x = x+1;
		 }
	 }
	 
	 System.out.println("probabilitatea de aparitie a caracterului "+c+" in sir este "+ x + "/" + i );
	 System.out.println("Adica " +((double)x/(double)i)*100 + "%" );   // afiseaza probabilitatea sub forma de procent
	}

}
