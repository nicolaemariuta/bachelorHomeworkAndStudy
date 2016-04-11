package mainPack;

import java.awt.*;

public class Texte extends Canvas
{
	Dimension canvasSize = new Dimension(800,100);
	private String[] zile = {"Luni","Marti","Miercuri","Joi","Vineri","Sambata","Duminica"};
	private String[] luni = {"Ianuarie", "Februarie", "Martie","Aprilie", "Mai", "Iunie", "Iulie", "August", "Semptembrie", "Octombrie", "Noiembrie", "Decembrie"};
	
	
	public void paint(Graphics g)
	{
		FontMetrics fm;
		int x,y;
		String etZile = "Zilele Saptamanii: ";
		String etLuni = "Lunile anului: ",text;
		
		// Alegem un font si aflam metrica sa
		g.setFont(new Font("Arial", Font.BOLD, 20));
		fm = g.getFontMetrics();
		x = 0;
		y = fm.getHeight();
		g.drawString(etZile, x, y);
		x += fm.stringWidth(etZile);
		
		for (int i =0; i< zile.length; i++)
		{
			text = zile[i];
			if (i<zile.length-1)
			{
				text+= ", ";
				g.drawString(text, x, y);
				x+= fm.stringWidth(text);
			}
		}
		
		// schimbam fontul
		
		
		g.setFont(new Font ("Dialog", Font.PLAIN, 14));
		fm = g.getFontMetrics();
		x=0;;
		y+=fm.getHeight();
		g.drawString(etLuni, x, y);
		x += fm.stringWidth(etLuni);
		
		for (int i =0; i< luni.length; i++)
		{
			text = luni[i];
			if (i< luni.length-1)
			{
				text+= ", ";
				g.drawString(text, x, y);
				x+=fm.stringWidth(text);
			}
		}
		
	}
	
	public Dimension getPrefferedSize ()
	{
		return canvasSize;
	}
}
