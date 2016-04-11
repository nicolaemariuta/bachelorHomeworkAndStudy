

import java.applet.*;
import java.awt.*;

public class FirstApplet extends Applet
{
	Image img;
	public void init()
	{
		img = getImage(getCodeBase(), "tom.gif");
		
	}
	public void paint(Graphics g)
	{
		g.drawImage(img, 50, 50, this);
		g.drawOval(100, 0, 150, 50);
		g.drawString("Ce faci FOCA?", 110, 25);
		
	}

}
