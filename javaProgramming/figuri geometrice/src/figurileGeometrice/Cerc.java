package figurileGeometrice;

public class Cerc {
	public double Raza;
	public final static double PI = 3.14;
	
	public Cerc () 
	
	{
		Raza = 0;
	}
	
	public Cerc (double r)
	{
		Raza = r;
	}
	
	public double LungimeCerc()
	{
		return 2*PI*Raza;
	}
	
	public double RazaCerc ()
	{
		return PI*Raza*Raza;
	}



	public void setRaza(double raza) {
		Raza = raza;
	}



	public double getRaza() {
		return Raza;
	}

}
