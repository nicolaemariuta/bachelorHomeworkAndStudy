package mainPack;

import java.awt.*;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;

public class Fereastra1 extends Frame 
{
	Fereastra1 (String titlu)
	{
		super(titlu);
		setSize(800,800);
		add(new Imagine1(), BorderLayout.CENTER);
		
		this.addWindowListener(new WindowAdapter()
		{
			public void windowClosing (WindowEvent e)
			{
				System.exit(0);
			}
			
		});
		
	}

}