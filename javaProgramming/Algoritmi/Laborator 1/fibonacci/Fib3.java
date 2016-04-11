package fibonacci;

import java.util.Scanner;

public class Fib3
{
	
	public static void main(String[] args) 
	
	{
		int i = 1;
		int j = 0;
		int k = 0;
		int h = 1;
		
		System.out.println("Introdu numarul");
		Scanner in = new Scanner(System.in);
		int n = in.nextInt();
		int contor =0;
		while(n>0)
		{
			contor++;
			int t;
			
				if(n%2 == 1)
				{
					t = j*h;
					j = i*h + j*k + t;
					i = i*k + t;
				}
				
			t = h*h;
			h = 2*h*k + t;
			k = k*k + t;
			n = n/2;
		}
		
		
		
		System.out.println("Numarul este+ " + j);
		System.out.println("Numarul de pasi: "+ contor);
		
	}

	
}
