package mainPack;

import java.awt.BorderLayout;
import java.awt.Frame;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;

public class Fereastra extends Frame
{
	Fereastra(String titlu)
	{
		super(titlu);
		setSize(100,100);
		this.addWindowListener(new WindowAdapter()
		{
			public void windowClosing(WindowEvent e)
			{
				dispose();
			}
			
		});
		add(new Imagine(),BorderLayout.CENTER);
	}

}