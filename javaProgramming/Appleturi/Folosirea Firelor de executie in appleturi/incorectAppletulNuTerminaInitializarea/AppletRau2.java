package incorectAppletulNuTerminaInitializarea;

import java.applet.*;
import java.awt.*;



public class AppletRau2 extends Applet
{
	int x,y;
	
	public void init()
	{
		while (true)
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
