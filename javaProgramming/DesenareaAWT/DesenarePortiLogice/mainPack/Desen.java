package mainPack;

import java.awt.Canvas;
import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.geom.GeneralPath;
import java.awt.geom.Path2D;
import java.awt.image.BufferedImage;
import java.io.BufferedOutputStream;
import java.io.FileOutputStream;

import javax.imageio.ImageIO;

public class Desen extends Canvas
{
	int x;
	int y;
	
	
	Desen()
	{
		this.setSize(100,100);
	
		 x = 50;
		 y = 50;
	}
	
	public void paint(Graphics g)
	{
		
		int size = -40;

		String nume ="abcd";
		g.setColor(Color.black);
		g.setFont(new Font("Arial", Font.PLAIN, 70));
		
		g.drawString(nume, 40+size*12/20, 40+size*18/12);
		
	

	



		
	}

}
