package stive;

import java.util.Scanner;

public class Incercari {
	
	
	public static void main(String[] args) {
		
		
		Scanner tastatura = new Scanner(System.in);
		
		String nume;
		
		Stiva animale = new Stiva();
		int i = 0;
		int j = 1;
		
		while (i <=3)
		{
			System.out.println("adaugati un nume de animal");
			nume = tastatura.next();
			animale.enqueue(nume);
			System.out.println("ati adaugat "+animale.size()+"nume de animale");
			i++;
			
		}
		
		for (int z = 0;z<=3;z++)
		{
			System.out.println(animale.afisare(z));
		}
		
		while (j==1)
		{
			System.out.println("introduceti inca un animal");
			animale.dequeue();
			nume = tastatura.next();
			animale.enqueue(nume);
			
			for (int z = 0;z<=3;z++)
			{
				System.out.println(animale.afisare(z));
			}
			System.out.println("scrie 1 daca vrei sa mai adaugi");
			
			j = tastatura.nextInt();
		}
		System.out.println(animale.afisare(1));
		
	}
	
	
	
	
	
	
	

}
