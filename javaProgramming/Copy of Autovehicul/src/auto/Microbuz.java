package auto;

public class Microbuz extends Autovehicul {
	
	public String NumeleAutovehicul()
	{
		Denumire = "Microbuz";
		return Denumire;
	}
	public int NumarRoti()
	{
		roti = 6;
		return roti;
	}
	public String culoarea()
	{
		culoare = "alb";
		return culoare;
	}
	public int NumarPasageri()
	{
		pasageri =20;
		return pasageri;
	}
	
	public void Utilizare()
	{
		System.out.println("Transport persoane");
	}
	

}
