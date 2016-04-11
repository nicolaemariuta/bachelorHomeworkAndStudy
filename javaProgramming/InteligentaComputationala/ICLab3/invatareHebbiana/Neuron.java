package invatareHebbiana;

public class Neuron {
	
	double[] w;
	
	Neuron( double[] w)
	{
		this.w = w;
	}
	
	public String toString()
	{
		String cuv = "";
		for(int i =0; i<w.length; i++)
		{
			cuv = cuv+w[i]+",";
		}
		
		return cuv;
	}
	
	public void hebb(double x[]) {
		
		
		double temp[] = new double[x.length];
		double rez[] = new double[x.length];
		double a = 0;
		double b = 0;
		
		
		for (int i = 0; i < x.length; i++) {
			a = a + x[i] * this.w[i];
		}
		if (a < 0)
			b = -1;
		else
			b = 1;
		for (int i = 0; i < x.length; i++) {
			temp[i] = b * x[i];
		}

		for (int i = 0; i < x.length; i++) {
			rez[i] = this.w[i] + temp[i];
		}

		for (int i = 0; i < x.length; i++) {
			this.w[i] = rez[i];
		}

	}

}
