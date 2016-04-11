package mainPack;

import java.awt.*;
import java.awt.event.*;

public class Plansa extends Canvas{
	
	Dimension dim = new Dimension(100,100);
	private Color color[] = {SystemColor.menu, Color.YELLOW};
	private int index = 0;
	
	Plansa()
	{
		this.addMouseListener(new MouseAdapter(){
			public void mouseClicked (MouseEvent e)
			{
				index = 1-index;
				repaint();
			}
			
		});
	}
	
	
	public void paint (Graphics g)
	{
		g.setColor(color[index]);
		g.drawRect(0, 0, dim.width, dim.height);
		g.setColor(color[1-index]);
		g.fillOval(0, 0, dim.width, dim.height);
		
		
	}
}
