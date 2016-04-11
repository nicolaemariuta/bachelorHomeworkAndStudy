package cercuri;

public class Cerc extends Forma2D
{

	double raza;
	Cerc() 
	{
		super("Cerc");
		raza = 0;
	}
	public void setRaza(double r)
	{
		raza = r;
	}
	public double getRaza()
	{
		return raza;
	}
	
	public double lungimeCerc()
	{
		double L = 2* Math.PI*raza;
		System.out.println("Lungimea cercurlui este: " + L);
		return L;
	}
	
	public double arieCerc()
	{
		double A = Math.PI*raza*raza;
		System.out.println("Lungimea cercurlui este: " + A);
		return A;
	}


}
