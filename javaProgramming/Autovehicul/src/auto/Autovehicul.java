package auto;

public class Autovehicul {
	
	protected String Denumire;
	protected String culoare;
	protected int roti;
	protected int pasageri;
	
	
	public String NumeleAutovehicul()
	{
		Denumire = "autohevicul";
		return Denumire;
	}
	
	public String culoarea()
	{
		culoare = "";
		return culoare;
	}
	public int NumarRoti()
	{
		roti=0;
		return roti;
	}
	
	public void Utilizare()
	{
		System.out.println("");
	}
	
}
