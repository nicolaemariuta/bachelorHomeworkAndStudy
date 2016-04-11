package mainPack;

import java.applet.Applet;
import java.awt.Graphics;
import java.awt.Image;

public class Imagini extends Applet
{
	Image img = null;
	
	public void init()
	{
		img = getImage(getCodeBase(), "tom.gif");
	}
	public void paint(Graphics g)
	{
		g.drawImage(img, 0, 0, this);
	}
	
}
