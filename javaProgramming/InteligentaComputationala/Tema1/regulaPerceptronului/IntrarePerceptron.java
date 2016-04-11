package regulaPerceptronului;

import java.util.Arrays;

public class IntrarePerceptron {
	
	double[] x;
	double d;
	
	IntrarePerceptron( double[] x, double d)
	{
		this.x = x;
		this.d = d;
	}
	
	public double sumaPonderata( Perceptron p)
	{
		double suma = 0;
		for(int i =0; i <getX().length; i++)
		{
			suma = suma+getX()[i]*p.getW()[i];
		}
	//	System.out.println("**net= " + suma);
		return suma;
	}
	
	public int getSgn(Perceptron p)
	{
		if(sumaPonderata(p)<0)
		{
			return -1;
		}
		else {return 1;}
	}
	
	
	
	public double[] getX() {
		return x;
	}

	public void setX(double[] x) {
		this.x = x;
	}

	public double getD() {
		return d;
	}

	public void setD(double d) {
		this.d = d;
	}

	

}
