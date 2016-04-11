package mainPack;

import java.awt.*;
import java.awt.event.*;

public class Fereastra extends Frame 
{
	Fereastra (String titlu)
	{
		super(titlu);
		setSize(800,800);
		
		this.addWindowListener(new WindowAdapter()
		{
			public void windowClosing(WindowEvent e)
			{
				System.exit(0);
			}
		});
		
		
	}
	public void paint ( Graphics g)
	{
		super.paint(g);
		g.setFont(new Font(" Arial ", Font.BOLD,70));
		g.setColor(Color.red);
		g.drawString("Aplicatie DEMO", 10, 20);
		g.drawOval(150,150, 75, 75);

		g.setColor(Color.PINK);
		g.fillRoundRect(50, 100, 180,130, 50, 50);
		g.setColor(Color.black);
		g.draw3DRect(0, 0,40, 30, true);
		
		g.setColor(Color.green);
		g.fillPolygon(new Polygon());
		
	}

}
