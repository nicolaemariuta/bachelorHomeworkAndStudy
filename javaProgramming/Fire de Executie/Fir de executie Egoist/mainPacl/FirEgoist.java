package mainPacl;

public class FirEgoist extends Thread
{
	FirEgoist (String name)
	{
		super(name);
	}
	
	public void run ()
	{
		int i =0;
		while(i<100000)
		{
			//Bucla care acapareaza procesorul
			i++;
			if(i%100 == 0)
			{
				System.out.println(getName()+ " a ajuns la "+i);
			yield();     // face firul sa nu mai fie egoist
			}
			
		}
	}
	
}
