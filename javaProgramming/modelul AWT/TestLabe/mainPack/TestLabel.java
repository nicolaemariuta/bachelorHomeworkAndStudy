package mainPack;

import java.awt.*;
import java.awt.event.*;

public class TestLabel {
	public static void main(String[] args) {
		Frame f = new Frame ("LABEL");
		
		Label nord,sud,est,vest,centru;
		
		nord = new Label ("Nord", Label.CENTER);
		nord.setForeground(Color.blue);
		
		sud = new Label ("Sud", Label.CENTER);
		sud.setForeground(Color.red);
		
		vest = new Label ("Vest", Label.LEFT);
		vest.setFont(new Font ("Dialog", Font.ITALIC, 14));
		
		est = new Label ("Est", Label.RIGHT);
		est.setFont(new Font ("Dialog", Font.ITALIC, 14));
		
		centru = new Label ("CENTRU", Label.RIGHT);
		centru.setBackground(Color.yellow);
		centru.setFont(new Font("Arial", Font.BOLD, 20));
		
		f.add(nord, BorderLayout.NORTH);
		f.add(sud, BorderLayout.SOUTH);
		f.add(vest, BorderLayout.WEST);
		f.add(est, BorderLayout.EAST);
		f.add(centru, BorderLayout.CENTER);
		
		f.addWindowListener(new WindowAdapter()
		{
			public void windowClosing(WindowEvent e)
			{
				System.exit(0);
			}
			
		});
		
		f.pack();
		f.show();
		
		
		
	}

}
