package produs;

public class Produs {
	private String Denumire;
	private int Stoc;
	private double Pret;
	
	
	Produs()
	{
		Denumire = "";
		Stoc = 0;
		Pret = 0;
		
	}
	
	Produs (String x, int y, double z)
	{
		Denumire = x;
		Stoc = y;
		Pret = z;
		
	}
	
	public void setDenumire (String x)
	{
		Denumire = x;
	}
	public String getDenumire ()
	{
		return Denumire;
	}
	
	public void setStoc (int x)
	{
		Stoc = x;
	}
	
	public int getStoc()
	{
		return Stoc;
	}
	
	public void setPret (double x)
	{
		Pret = x;
	}
	public double getPret ()
	{
		return Pret;
	}
	public void print()
	{
		System.out.println("denumire produs:"+Denumire);
		System.out.println("stoc:"+Stoc);
		System.out.println("pret:"+Pret);
	}

}
