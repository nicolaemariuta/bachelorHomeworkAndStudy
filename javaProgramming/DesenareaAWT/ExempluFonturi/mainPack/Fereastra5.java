package mainPack;

import java.awt.*;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;

public class Fereastra5 extends Frame


{
	Fereastra5(String titlu)
	{
		super(titlu);
		this.addWindowListener(new WindowAdapter(){  public void windowClosing(WindowEvent e)
		{	System.exit(0);}	});
		ScrollPane sp = new ScrollPane();
		sp.setSize(400,400);
		sp.add(new Fonturi());
		add(sp, BorderLayout.CENTER);
		pack();
		
	}
	
	

}
