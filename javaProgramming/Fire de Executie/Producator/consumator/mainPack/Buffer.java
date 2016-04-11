package mainPack;

public class Buffer 
{
	// Fara sincronizare
/*	private int number = -1;
	
	public int get()
	{
		return number;
	}
	public  void put (int number)
	{
		this.number = number; 		
	}	*/
	
	//Cu sincronizare
	
	private int number = -1;
	private boolean available = false;
	public synchronized int get()
	{
		while (!available)
		{
			// buffer blocat de consumator	
			try
			{
				wait();  // asteapta producatorul sa puna o valoare
			}
			catch (InterruptedException E) {E.printStackTrace();}
			
		
		}
		available = false;
		notifyAll();
		return number;
			//buffer deblocat de consumator
		
		
	}
	
	public synchronized void put (int number)
	{
		//buffer blocat de producator
		while (available)
		{
			try
			{
				wait();
			}
			catch (InterruptedException e) {e.printStackTrace();};
		}
		this.number = number;
		available = true;
		notifyAll();
		//buffer deblocat de producator
	}

}
