package mainPack;

public class NumaraSecunde extends Thread
{
	public int sec =0;
	//folosim o variabila de terminare
	public boolean executie = true;
	
	public void run()
	{
		while (executie)
		{
			try {
				Thread.sleep(1000);
				sec++;
				System.out.println(".");
			} 
			catch (InterruptedException e)
			{
			}
			
		}
	}
}
