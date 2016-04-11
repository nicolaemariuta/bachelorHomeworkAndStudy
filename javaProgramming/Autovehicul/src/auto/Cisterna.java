package auto;

public class Cisterna extends Autovehicul {
	public String NumeleAutovehicul()
	{
		Denumire = "Cisterna";
		return Denumire;
	}
	public int NumarRoti()
	{
		roti = 8;
		return roti;
	}
	public String culoarea()
	{
		culoare = "alba";
		return culoare;
	}
	public int NumarPasageri()
	{
		pasageri = 1;
		return pasageri;
	}
	
	public void Utilizare()
	{
		System.out.println("Transport Petrol");
	}
	
}
