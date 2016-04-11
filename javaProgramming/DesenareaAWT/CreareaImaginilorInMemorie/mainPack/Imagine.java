package mainPack;

import java.awt.*;
import java.awt.image.MemoryImageSource;

public class Imagine extends Canvas
{
	Dimension dim = new Dimension(100,100);
	
	public void paint (Graphics g)
	{
		int w = 300;
		int h = 300;
		int[] pix = new int[w*h];
		int index = 0;
		
		for (int y=0; y<h;y++)
		{
			for (int x=0; x<w; x++)
			{
				int red = (int) (Math.random()*255);
				int green = (int) (Math.random()*255);
				int blue =  (int) (Math.random()*255);
				pix[index++] = new Color(red,green,blue).getRGB();
				
			}
		}
		Image img = createImage(new MemoryImageSource(w,h,pix,0,w));
		g.drawImage(img, 0, 0, this);
	}

}
