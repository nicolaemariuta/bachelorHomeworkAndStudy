package mainPack;

public class Beeper implements Runnable
{


	public void run()
	
	{
		while (true)
		{
			java.awt.Toolkit.getDefaultToolkit().beep();
			try
			{
				Thread.sleep(1000);
			}
			catch(InterruptedException e)
			{
				System.out.println(e);
			}
			
			
		}
		
	}

}
