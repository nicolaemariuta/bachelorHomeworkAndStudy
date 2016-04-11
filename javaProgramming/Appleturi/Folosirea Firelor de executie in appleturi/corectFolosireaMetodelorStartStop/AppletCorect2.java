package corectFolosireaMetodelorStartStop;

import java.applet.Applet;
import java.awt.Graphics;

public class AppletCorect2 extends Applet implements Runnable
{
	int x,y;
	Thread fir = null;
	boolean activ = false;
	int n =0;
	
	public void start()
	{
		if (fir == null)
		{
			fir = new Thread(this);
			activ = true;
			fir.start();
		}
		
	}
	
	public void stop()
	{
	activ = false;
	fir = null;
	
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
		System.out.println(activ);
	}

}
