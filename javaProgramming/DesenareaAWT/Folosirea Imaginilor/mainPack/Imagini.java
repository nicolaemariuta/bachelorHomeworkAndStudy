package mainPack;

import java.awt.*;

public class Imagini extends Canvas

{
	Dimension dim = new Dimension (800,800);
	
	public void paint (Graphics g)
	{
		g.setColor(Color.WHITE);
		Image img = Toolkit.getDefaultToolkit().getImage("C:\\Users\\npiulitza\\Desktop\\altele\\folder\\Tom+y+Jerry.gif");
		
		g.drawImage(img,0,0,this);
		g.drawImage(img,0,500,100,100,this);
	
		g.drawImage(img,600,0,200,400,Color.yellow,this);
	
	}
	
}
