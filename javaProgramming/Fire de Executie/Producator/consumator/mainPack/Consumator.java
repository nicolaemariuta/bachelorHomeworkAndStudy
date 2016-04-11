package mainPack;

public class Consumator extends Thread
{
	private Buffer buffer;
	public Consumator (Buffer b)
	{
		buffer = b;
		
	}
	
	public void run ()
	{
		int value = 0;
		for (int i=0; i<10; i++)
		{
			value = buffer.get();
			System.out.println("Consumatorul a primit: \t " + i);
		}
	}

}
