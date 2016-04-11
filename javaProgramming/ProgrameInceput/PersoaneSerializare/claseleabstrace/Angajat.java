package claseleabstrace;

public abstract class Angajat extends Persoane {
	
		protected double salariu;

	protected Angajat(String a) {
		super(a);
		nume = a;
	}
	
	public double getSalariu()
	{
		return salariu;
	}
	public void setSalariu(double x)
	{
		salariu = x;
	}
	

}
