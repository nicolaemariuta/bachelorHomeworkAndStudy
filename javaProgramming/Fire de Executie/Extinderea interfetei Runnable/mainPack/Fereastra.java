package mainPack;

import java.awt.*;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;

public class Fereastra extends Frame
{
	Fereastra (String titlu)
	{
		super(titlu);
		this.addWindowListener(new WindowAdapter(){
			public void windowClosing(WindowEvent e)
			{
				System.exit(0);
			}
		});
		
		//Cream doua obiecte active de tip plansa
		Plansa p1 = new Plansa("patrat", Color.green);
		Plansa p2 = new Plansa("cerc", Color.RED);
		
		//Acestea extind Canvas, le plasam pe fereastra
		setLayout(new GridLayout(2,1));
		add(p1);
		add(p2);
		
		

		// Pornim doua fire de executie care vor actualiza desenul celor doua planse
		new Thread(p1).start();
		new Thread(p2).start();
		
		pack();
		
		
		
		
	}
	
}
