package auto;

public class Autobuz extends Autovehicul {
	public String NumeleAutovehicul()
	{
		Denumire = "Autobuz";
		return Denumire;
	}
	public int NumarRoti()
	{
		roti = 8;
		return roti;
	}
	public String culoarea()
	{
		culoare = "negru";
		return culoare;
	}
	public int NumarPasageri()
	{
		pasageri = 50;
		return pasageri;
	}
	
	public void Utilizare()
	{
		System.out.println("Transport international de persoane");
	}
	

}
