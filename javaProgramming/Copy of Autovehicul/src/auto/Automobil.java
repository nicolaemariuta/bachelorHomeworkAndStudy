package auto;

public class Automobil extends Autovehicul {
	public String NumeleAutovehicul()
	{
		Denumire = "Automobil";
		return Denumire;
	}
	public int NumarRoti()
	{
		roti = 4;
		return roti;
	}
	public String culoarea()
	{
		culoare = "rosie";
		return culoare;
	}
	public int NumarPasageri()
	{
		pasageri = 5;
		return pasageri;
	}
	
	public void Utilizare()
	{
		System.out.println("Plimbare");
	}
	

}
