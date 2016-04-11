package mainPack;

import java.awt.*;
import java.awt.print.PageFormat;
import java.awt.print.Printable;
import java.awt.print.PrinterException;

public class Plansa2 extends Canvas implements Printable {


	Dimension d = new Dimension(400,400);
	public Dimension getPreferredSize()
	{
		return d;
	}
	
	public void paint(Graphics g)
	{
		g.drawRect(200, 200, 100, 100);
		g.drawOval(200, 200, 100, 100);
		g.drawString("Hello", 200, 200);
		
	}
	
	
	public int print(Graphics g, PageFormat pf, int pi)
	
		
	throws PrinterException
	{
		if (pi >=1)
		{
			return Printable.NO_SUCH_PAGE;
		}
		paint(g);
		g.drawString("Numai la imprimanta", 200, 300);
		
		

		return Printable.PAGE_EXISTS;
	}

}
