package mainPack;

import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.Graphics2D;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;
import java.awt.image.BufferedImage;
import java.io.BufferedOutputStream;
import java.io.FileOutputStream;

import javax.imageio.ImageIO;
import javax.swing.JFrame;

public class ImagineaFereastra
{
	public static void main(String[] args)
	
	{
		
		Desen desen = new Desen();
		JFrame f = new JFrame();
		f.setSize(100,100);
		f.setBackground(Color.white);
		f.setLayout(null);
		f.add(desen);
		
		f.show();
		f.addWindowListener(new WindowAdapter() 
		{
			public void windowClosing(WindowEvent e)
			{
				System.exit(0);
			}
		});
		
	
		
	}

}
