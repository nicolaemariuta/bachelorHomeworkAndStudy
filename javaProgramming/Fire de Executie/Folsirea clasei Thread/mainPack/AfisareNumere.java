package mainPack;

public class AfisareNumere extends Thread
{
	private int a,b,pas;

	AfisareNumere (int a, int b, int pas)
	{
		this.a = a;
		this.b = b;
		this.pas = pas;
		
	}
	
	public void run ()
	{
		for (int i = a; i<=b; i+=pas)
		{
			System.out.println(i+ " ");
			try {
				
				sleep(1000);   // face o pauza de o secunda
				} 
			catch (InterruptedException e)
			{
				
				System.out.println(e);
			}
		}
	}
}
