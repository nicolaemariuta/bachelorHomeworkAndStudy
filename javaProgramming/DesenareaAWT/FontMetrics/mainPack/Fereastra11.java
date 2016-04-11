package mainPack;

import java.awt.BorderLayout;
import java.awt.Frame;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;

public class Fereastra11 extends Frame 


{
	
	Fereastra11 (String titlu)
	{
		super(titlu);
		this.addWindowListener(new WindowAdapter ()
		{
			public void windowClosing(WindowEvent e)
			{
				System.exit(0);
				
			}
		});
		
		add(new Texte(), BorderLayout.CENTER);
		pack();
	}
	

}
