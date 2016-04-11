
package numereComplex;

import java.util.HashSet;
import java.util.Iterator;
import java.util.Scanner;

public class MainClass
{
	public static void main(String[] args)
	{
		HashSet set = new HashSet();
		meniu();
		Scanner scan = new Scanner(System.in);
		int optiune;
		
		do
		{
			optiune = scan.nextInt();
			switch(optiune)
			{
			case (1) :
						{ 
						System.out.println("Lungimea listei este: " + set.size());
						meniu();
						break;
						}
			case (2) : 
					{
					System.out.println("Introdu numarul complex: ");
					System.out.println("Introdu partea reala:");
					int arg = scan.nextInt();
					System.out.println("Introdu partea imaginara:");
					int rez = scan.nextInt();
					NumarComplex numar = new NumarComplex(arg,rez);
					
					if(set.contains(numar))
					{
						System.out.println("Numarul acesta este deja !");
					}
					
					set.add(numar);
					
				
				
					meniu();
					break;
				
					}
			case (3) : 
					{
					System.out.println("Introdu elementul pe care vrei sa il elimini: ");
					System.out.println("Introdu partea reala:");
					int arg = scan.nextInt();
					System.out.println("Introdu partea imaginara:");
					int rez = scan.nextInt();
					NumarComplex numar = new NumarComplex(arg,rez);
					if(set.contains(numar))
					{
					set.remove(numar);
					}
					else
					{
					System.out.println("Elementul nu se afla in lista !!");
					}
					meniu();
					break;
					}
			case (4):
					{
					NumarComplex suma = new NumarComplex(0,0);
					Iterator<NumarComplex> it = set.iterator();
					while(it.hasNext())
					{
					Object o = it.next();
					NumarComplex numar = (NumarComplex)o;
					suma = NumarComplex.adunare(suma,numar);
					}
					System.out.println("Suma elementelor din lista este: "+suma.toString());
					meniu();
					break;
				}
			case (5) :
					{
			
					Iterator<NumarComplex> it = set.iterator();
					int c = 0;
					while(it.hasNext())
					{
					Object o = it.next();
					NumarComplex numar = (NumarComplex)o;
					System.out.println("Elementul de pe pozitia" + c+ " este: " +numar.toString());
					c++;
					}
					meniu();
					break;
				}
			case (6) :
					{
					break;
					}
			default:
					{
						meniu();
						break;
					}
			}
		}while(optiune!= 6);		
		
	
		
	}
	
	public static void meniu()
	{
		System.out.println("1. Afiseaza lungimea listei");
		System.out.println("2. Adauga un numar in lista, daca nu exista deja");
		System.out.println("3. Elimina un element din lista");
		System.out.println("4. Afisati suma elementelor din lista");
		System.out.println("5. Afisati elementele listei");
		System.out.println("6. Terminare program");
	}

}
