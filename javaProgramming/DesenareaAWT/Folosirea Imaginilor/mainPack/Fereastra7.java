package mainPack;

import java.awt.*;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;

public class Fereastra7 extends Frame
{
	Fereastra7 (String titlu)
	{
		
		super(titlu);
		this.addWindowListener(new WindowAdapter()
		{
			public void windowClosing (WindowEvent e)
			{
				System.exit(0);
			}
			
		});
		setSize(800,800);
		add(new Imagini(),BorderLayout.CENTER);
		
		
	}

}
