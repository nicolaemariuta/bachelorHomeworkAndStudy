package mainPack;

import javax.swing.*;

public class Fereastra2 extends JFrame

{
	Fereastra2 (String titlu)
	{
		super(titlu);
		setSize(70,300);
		String[] elemente = new String[100];
		for (int i =0; i<elemente.length; i++)
		{
			elemente[i] = "Elementul "+i;
		}
		
		JList lista = new JList(elemente);
		
		JScrollPane sp = new JScrollPane(lista);
		getContentPane().add(sp);
		
	}
	

}
