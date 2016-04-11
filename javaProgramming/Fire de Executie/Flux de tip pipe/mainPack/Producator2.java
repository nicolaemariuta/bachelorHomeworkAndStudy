package mainPack;

import java.io.DataOutputStream;

public class Producator2 extends Thread
{
	private DataOutputStream out;
	
	Producator2(DataOutputStream out)
	{
		this.out = out;
		
	}
	public void run ()
	{
		for (int i =0; i<10; i++)
		{
			try 
			{
				out.writeInt(i);
				
			}
			catch (Exception e ){e.printStackTrace();}
			
			System.out.println("Producatorul a pus:\t"+i);
			
		try
			{
				sleep((int)(Math.random()*10000));
			}
			catch (InterruptedException e){e.printStackTrace();}
		 
		}
	}

}
