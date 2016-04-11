package figurileGeometrice;

public class Cilindru extends Cerc {
	private double lungimea;
	
	Cilindru(double r, double l)
	{
		Raza = r;
		lungimea = l;
	}

	public void setLungimea(double lungimea) {
		this.lungimea = lungimea;
	}

	public double getLungimea() {
		return lungimea;
	}
	
	public double  volumCilindru()
	{
		double r = Raza;
		double l = lungimea;
		return PI*r*r*l;
	}
	
	

}
