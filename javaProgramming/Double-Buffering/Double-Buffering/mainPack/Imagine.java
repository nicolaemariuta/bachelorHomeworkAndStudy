package mainPack;

import java.awt.*;

public class Imagine extends Canvas



{
	Dimension dim = new Dimension (800,800);
	
	
	public  void update (Graphics g)
	{
		paint(g);
	}
	
	
	public void paint (Graphics g)
	{
		Image img = createImage(80, 80);
		Image img2 = Toolkit.getDefaultToolkit().getImage("C:\\Users\\npiulitza\\Desktop\\altele\\folder\\Tom+y+Jerry.gif");
		
		Graphics gmem = img.getGraphics();
		gmem.drawImage(img2 , 0, 30, this);
		
		gmem.dispose();
		
		
		
	}
	
	
	
	

}
