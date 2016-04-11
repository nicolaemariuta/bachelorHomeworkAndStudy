package mainPack;

import java.awt.*;

public class Fereastra extends Frame{
	Fereastra(String nume)
	{
		super(nume);
		setLayout(new FlowLayout());
		setSize(100,200);
		Button b1 = new  Button ("OK");
		Button b2 = new  Button ("Cancel");
		Button b3 = new Button ("Schimba");
		add(b1);
		add(b2);
		add(b3);
		
		Ascultator listener = new Ascultator (this);
		b1.addActionListener(listener);
		b2.addActionListener(listener);
		b3.addActionListener(listener);
		
	}
	
}
