
package mainPack;


public class Propagation {

	public double[] x = new double[3];
	public double d;
	public double[] w;
	public double [][] v;
	public double[] y;
	public double o;
	public double err;
	public double[] error = new double[3];
	
	
	
	public Propagation(double[] x, double d)
	{
		
		for(int i =0; i<x.length; i++)
		{
			this.x[i] = x[i]/100;
		}
		
		
		
		this.d = d/100;
		w = new double[x.length+1];
		
		for(int i =0; i<w.length; i++)
		{
			w[i] = -1+Math.random()*2;
		}
		
		v = new double[x.length][x.length];
		for(int i =0; i<v.length; i++)
		{
			for(int j =0; j<v.length; j++)
			{
				v[i][j] = -1+Math.random()*2;
			}
		}
		
		y = new double[4];
		y[3] = -1;
		
		
	}
	
	
	public static double fNet(double f)
	{
		return (2/(1+Math.pow(Math.E, -f)) )-1;
	}
	
	public void afisarePatternuri()
	
	{
		for(int i =0; i < 3; i++)
		{
			System.out.println("z" + (i+1) + "= " + x[i]);
		}
		
		
		System.out.println("Iesirea dorita= " + d);
		System.out.println("Iesirea calculata= " + o);
	}
	
	public void afisareConexiuni()
	{
		System.out.println("Conexiunile v   ");
		System.out.println();
		for(int i =0; i < 3; i++)
		{
			
			for(int j = 0; j < 3; j++)
			{
				System.out.print(v[i][j]+ "  ");
			}
			System.out.println();
		}
		
		System.out.println("Conexiunile w   ");
		for(int i =0 ; i <3; i++)
		{
			System.out.print(w[i] + "  " );
		}
	}
	
}
