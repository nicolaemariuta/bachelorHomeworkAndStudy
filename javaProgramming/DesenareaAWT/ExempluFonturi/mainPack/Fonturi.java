package mainPack;

import java.awt.*;

public class Fonturi extends Canvas

{
	private Font[] fonturi;
	Dimension canvasSize = new Dimension(400,1000);
	
	
	Fonturi()
	{
		fonturi= GraphicsEnvironment.getLocalGraphicsEnvironment().getAllFonts();
		canvasSize.height = (1+fonturi.length)*20;
		
	}
	
	
	
	public void paint (Graphics g)
	{
		String nume;
		for (int i =0; i<fonturi.length;i++)
		{
			nume = fonturi[i].getFontName();
			g.setFont(new Font(nume, Font.PLAIN,30));
			g.drawString(i+". "+nume, 20, (i+1)*20);
			
		}
	}
	
	
	public Dimension getPrefferedSize()
	{
		return canvasSize;
	}
	
	
	

}
