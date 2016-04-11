package russe;

public class MainClass
{
	public static void main(String[] args)
	{
		FereastraPrincipala fp = new FereastraPrincipala();
		fp.show();
		
		
	}
	
	public static int inmultireRusse(int a, int b)
	{
		int[] x =new int[1000];
		int[] y =new int[1000];
		x[0] = a;
		y[0] = b;
		int produs = 0;
		int i = 0;
		
		while(a>1)
		{
			a = a/2;
			x[i+1] = a;
			y[i+1] = y[i] + y[i];
			i++;
		
		}
		
		
		
		while (i>0)
		{
			
			if (x[i]%2 == 1)
			{
				produs = produs + y[i];
			}
			i = i-1;
			
		}
		
		return produs;
	}

}
