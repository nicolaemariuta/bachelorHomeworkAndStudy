package incorectBlocareaMetodeiPaint;

import java.applet.*;
import java.awt.*;

public class AppletRau1 extends Applet
{
	public void paint(Graphics g)
	{
		while(true)
		{
			int x = (int)(Math.random()*getWidth());
			int y = (int)(Math.random()*getHeight());
			g.drawString("Hello!", x, y);
			
			try 
			{
				Thread.sleep(1000);
			}
			catch (InterruptedException e) {}
		}
		
	}
}


/*
firul care se ocupa cu desenarea va ramane blocat in metoda paint, incercand sa o termine
*/