package mainPack;

import java.awt.*;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;

public class Fereastra3 extends Frame{
	
	Fereastra3 (String titlu)
	{
		super(titlu);
		setSize(200,200);
		add(new Plansa(),BorderLayout.CENTER);
		this.addWindowListener(new WindowAdapter()
		{
			public void windowClosing (WindowEvent e)
			{
				System.exit(0);
			}
			
		});
		
	}

}
