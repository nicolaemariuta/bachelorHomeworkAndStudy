package mainPakc;

import java.awt.*;
import java.awt.event.*;

public class TestareMeniuri {
	public static void main(String[] args) {
		Frame f = new Frame("Teste menu");
		MenuBar mb1 = new MenuBar();
		
		Menu fisier = new Menu ("File");
		fisier.add(new MenuItem("Open"));
		fisier.add(new MenuItem("Close"));
		fisier.addSeparator();
		fisier.add(new MenuItem("Exit"));
		
		Menu optiuni = new Menu ("Options");
		optiuni.add(new MenuItem("Copy"));
		optiuni.add(new MenuItem("Cut"));
		optiuni.add(new MenuItem("Paste"));
		
		Menu editare = new Menu ("Edit");
		editare.add(new MenuItem("Undo"));
		editare.add(optiuni);
		
		editare.addSeparator();
		editare.add(new CheckboxMenuItem("Bold"));
		editare.add(new CheckboxMenuItem ("Italic") );
		
		mb1.add(fisier);
		mb1.add(editare);
		
		f.setMenuBar(mb1);
		f.setSize(200,100);
		f.addWindowListener(new WindowAdapter()
		{
			public void windowClosing(WindowEvent e)
			{
				System.exit(0);
			}
		});
		
		
		f.show();
	}
}
