package auto;

public class Camion extends Autovehicul {

	public String NumeleAutovehicul()
	{
		Denumire = "Camion";
		return Denumire;
	}
	public int NumarRoti()
	{
		roti = 8;
		return roti;
	}
	public String culoarea()
	{
		culoare = "portocaliu";
		return culoare;
	}
	public int NumarPasageri()
	{
		pasageri = 1;
		return pasageri;
	}
	
	public void Utilizare()
	{
		System.out.println("Transport marfuri");
	}
	
}
