
package fractie;


public class Fractie
{
	int numitor;
	int numarator;
	Fractie()
	{
		numitor=0;
		numarator=0;
	}
	Fractie (int a, int b)
	{
		numarator =a;
		numitor = b;
	}
	
	
	public void setNumitor(int a)
	{
		numitor =a;
	}
	
	public void setNumarator(int a)
	{
		numarator = a;
	}
	
	public int getNumitor()
	{
		return numitor;
	}
	public int getNumarator()
	{
		return numarator;
	}
	public void afisareFractie()
	{
		System.out.println("Fractia este: " + numarator + "/" + numitor);
	}
	
	public static Fractie adunareFractie(Fractie f1, Fractie f2)
	{
		int n;
		int m;
		if (f1.numitor != f2.numitor)
		{
			n = f1.numarator*f2.numitor + f2.numarator*f1.numitor;
			m = f1.numitor*f2.numitor;
		}
		else
		{
			n = f1.numarator + f2.numarator;
			m = f1.numitor;
		}
		
		
		
		Fractie suma = new Fractie(n,m);
		return suma;
		
	}
	public static Fractie scadereFractie(Fractie f1, Fractie f2)
	{
		int n;
		int m;
		if (f1.numitor != f2.numitor)
		{
			n = f1.numarator*f2.numitor - f2.numarator*f1.numitor;
			m = f1.numitor*f2.numitor;
		}
		else
		{
			n = f1.numarator - f2.numarator;
			m = f1.numitor;
		}
		
		
		
		Fractie scadere = new Fractie(n,m);
		return scadere;
		
	}
	
	public static Fractie inmultireFractie(Fractie f1, Fractie f2)
	{
		int n;
		int m;
		n = f1.numarator * f2.numarator;
		m = f1.numitor * f2.numitor;
		
		Fractie inmultire = new Fractie(n,m);
		return inmultire;
	}
	public static Fractie impartireFractie(Fractie f1, Fractie f2)
	{
		int n;
		int m;
		n = f1.numarator * f2.numitor;
		m = f1.numitor * f2.numarator;
		
		Fractie impartire = new Fractie (n,m);
		return impartire;
	}
	public static Fractie simplificareFractie(Fractie f)
	{
		int n;
		int m;
		int k  =0 ;
		
		for (int j = f.numarator; j>0; j--)
		{
			if(f.numarator%j==0 && f.numitor%j==0)
			{
				k = j;
				break;
			}
		}
		System.out.println("k= " + k);
		
		if (k != 0)
		{
			n = f.numarator/k;
			m = f.numitor /k;
		}
		else
		{
			n = f.numarator;
			m = f.numitor ;
		}
		
		Fractie simplificare = new Fractie (n,m);
		return simplificare;
		
	}
}
