package fibonacci;

import java.util.Scanner;

public class Fib2 
{
	public static void main(String[] args)
	{
		
		
		
		int i = 1;
		int j = 0;
		
		
		System.out.println("Introdu numarul");
		Scanner in = new Scanner(System.in);
		int n = in.nextInt();
		
		int contor = 0;
		
		for (int k =1; k<n; k++)
		{
			int a = j;
			j = i+j;
			i = a;
			contor++;
		}
		
		System.out.println("Numarul este+ " + j);
		System.out.println("Numarul de pasi: "+ contor);
		
	}

}
