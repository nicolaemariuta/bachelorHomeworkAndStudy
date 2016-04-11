package ecuatieGrad2;



public class Equation2
{
	double a;
	double b;
	double c;
	
	public Equation2() 
	{
		a = 0;
		b = 0;
		c = 0;
		}
	public Equation2(double a, double b, double c)
	{
		this.a = a;
		this.b = b;
		this.c = c;
	}
	
	public void afisare()
	{
		System.out.println(a+"*x^2+"+b+"*x+"+c+"=0");
	}
	
	public void solutieEcuatie()
	{
		if (a==0 && b==0 && c==0)
		{
			System.out.println("Orice valoare reala este solutie a ecuatiei! ");
		}
		else
		if (a==0 && b==0 && c!=0)
		{
			System.out.println("Ecuatia nu are solutii! ");
		}
		else
		if (a==0 && b!=0)
		{
			System.out.println("Ecuatia are o singura solutie: "+ (-c/b));
		}
		
		else
		{
			double delta;
			delta = b*b - 4*a*c;
			
			
			if(delta>=0)
			{
				double radical = Math.sqrt(delta);
				System.out.println("Prima solutie a ecuatiei este " + ((-b+radical)/(2*a)));
				System.out.println("A doua solutie a ecuatiei este " + ((-b-radical)/(2*a)));
			}
			else
			{
				System.out.println("Ecuatia nu are radacini reale");
			}
			
		
		}
	}
	

	public static void main(String[] args)
	{
		Equation2 e = new Equation2(1,4,2);
		e.afisare();
		e.solutieEcuatie();
	}
}

