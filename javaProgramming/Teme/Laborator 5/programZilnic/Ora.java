package programZilnic;

public class Ora 
{
	int ora;
	String actiune;
	Ora(int ora, String actiune)
	{
		this.ora = ora;
		this.actiune = actiune;
	}
	
	public  void afisare()
	{
		System.out.println("La ora "+ ora+ " tu: "+ actiune);
	}
	

}
