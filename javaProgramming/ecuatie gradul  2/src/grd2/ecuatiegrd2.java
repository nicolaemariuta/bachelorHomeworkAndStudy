package grd2;

import java.io.InputStream;
import java.util.Scanner;

public class ecuatiegrd2 {
	
	public static void main(String[] args) {
		
		double a;
		double b;
		double c;
		double delta;
		double x1;
		double x2;
		
		Scanner tastatura = new Scanner(System.in);
		System.out.println("Acest program va calcula solutiile unei ecuatii de gradul 2");
		
		System.out.println("a=");
		a = tastatura.nextDouble();
		System.out.println("b=");
		b = tastatura.nextDouble();
		System.out.println("c=");
		c = tastatura.nextDouble();
		
		System.out.println("Ecuatia de gradul 2 este: ");
		System.out.println(a+"*x2+"+b+"*x+"+c);
		
		delta = b*b- 4*a*c;
		
		if (delta>=0)
		{
			System.out.println("ecuatia are solutii reale");
			
			x1 = (-b- Math.sqrt(delta))/(2*a);
			System.out.println("x1= "+x1);
			
			x2 = (-b+ Math.sqrt(delta))/(2*a);
			System.out.println("x2= "+x2);
			
		
			
		}
		else 
		{
			System.out.println("ecuatia are solutii imaginare");
			
		}
		
		
	}
		
	}


