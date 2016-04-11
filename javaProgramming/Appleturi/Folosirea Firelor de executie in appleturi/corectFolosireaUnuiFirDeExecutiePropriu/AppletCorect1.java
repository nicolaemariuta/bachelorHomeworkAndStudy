package corectFolosireaUnuiFirDeExecutiePropriu;

import java.applet.*;
import java.awt.Graphics;

public class AppletCorect1 extends Applet implements Runnable
{
	int x,y;
	Thread fir = null;
	
	public void init()
	{
		if (fir == null)
		{
			fir = new Thread(this);
			fir.start();			
		}
		
	}

	

	public void run()
	{
		while(true)
		{
			x = (int)(Math.random()*getWidth());
			y = (int)(Math.random()*getHeight());
			repaint();
			
			try
			{
				Thread.sleep(1000);
			}
			catch (InterruptedException e) {}
		}
	}
	
	public void paint(Graphics g)
	{
		g.drawString("Hello!", x, y);
	}

}
