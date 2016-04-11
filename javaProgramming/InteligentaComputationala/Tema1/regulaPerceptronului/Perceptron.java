package regulaPerceptronului;

public class Perceptron {
	
	double[] w;
	double c;
	


	public Perceptron( double[] w, double c)
	{
		this.w = w;
		this.c = c;
	}
	
	
	public double[] getW() {
		return w;
	}

	public void setW(double[] w) {
		this.w = w;
	}
	

	public double getC() {
		return c;
	}


	public void setC(double c) {
		this.c = c;
	}
	
	
	public void printw() {//afisarea matricii ponderilor
		double temp = 0;
		System.out.println();
		System.out.println("Valoarea ponderilor"
				+ ": ");
		for (int i = 0; i < this.w.length; i++) {
			temp = w[i];
			System.out.printf("%.1f", temp);
			System.out.println();
		}
	
	
	}

}
