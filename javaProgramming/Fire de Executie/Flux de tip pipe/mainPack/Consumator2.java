package mainPack;

import java .io .*;

public class Consumator2 extends Thread
{
	private DataInputStream in;
	Consumator2(DataInputStream in)
	{
		this.in = in;
	}
	
	public void run ()
	{
		int value = 0;
		for (int i =0; i<10; i++)
		{
			try 
			{
				value = in.readInt();
			}
			catch (Exception e ){e.printStackTrace();}
			System.out.println("Consumatorul a primit:\t" + value);
		}
	}
}
