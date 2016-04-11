package citireLitere;

public class Pattern {
	
	
	double[] x;
	String litera;
	
	Pattern(double[] x)
	{
		this.x = x;
	}

	Pattern(double[] x, String litera)
	{
		this.x = x;
		this.litera = litera;
	}
	
	
	public double iesire(double[] w)
	{
		double net = 0;
		
		for (int i = 0; i < 9; i++) {
			net = net + w[i] * x[i];
		}
		
		return (2 / (1 + Math.pow(Math.E, -net))) - 1;
	}
	
	
	
	
}
