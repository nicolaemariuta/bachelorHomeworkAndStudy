package mainPack;

import java.awt.*;

public class Plansa extends Canvas implements Runnable
// Deoarece plansa extinde Canvas, nu mai putem extinde si clasa Thread

{
	Dimension dim = new Dimension  (300,300);
	Color culoare;
	String figura;
	int x=0, y=0, r=0;
	
	Plansa (String figura, Color culoare)
	{
		this.figura = figura;
		this.culoare = culoare;
		
		
	}
	
	public Dimension getPreferredSize()
	{
		return dim;
	}
	
	public void paint (Graphics g)
	{
		// desenam un chenar
		g.setColor(Color.black);
		g.drawRect(0, 0, dim.width-1, dim.height-1);
		
		//desenam figura la coodronatele calculate de firul de executie
		g.setColor(culoare);
		if (figura.equals("patrat"))
		{
			g.drawRect(x, y, r, r);
		}
		else
		{
			if (figura.equals("cerc"))
			{
				g.drawOval(x, y, r, r);
			}
		}
		
	}
	
	public void update (Graphics g)
	{
		repaint();
		// supradefinim update pentru ca sa nu mai fie stearsa suprafata de desenare
	}

	
	public void run()
	
	
	{
		/* Codul firului de executie :
		 * afisarea a 100 figuri geometrice la pozitii
		 * si dimensiuni calculate aleator.
		   Intre doua afisari facem o pauza de 50ms*/
		
		for (int i=0; i <100; i++)
		{
			x = (int)(Math.random()*dim.width);
			y = (int)(Math.random()*dim.height);
			r = (int)(Math.random()*100);
			
		
			try
			{
				Thread.sleep(5000);
				
			}
			catch (InterruptedException e)
			{
				repaint();
			}
		}
		
	}

}
