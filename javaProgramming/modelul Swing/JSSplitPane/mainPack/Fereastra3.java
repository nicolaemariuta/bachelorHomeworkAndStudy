package mainPack;

import java.awt.*;

import javax.swing.*;

public class Fereastra3 extends JFrame

{
	Fereastra3 (String titlu)
	{
		super(titlu);
		String elem[] = {"Unu", "Doi", "Trei"};
		JList list = new JList (elem);
		
		JPanel panel = new JPanel (new GridLayout(3,1));
		panel.add(new JButton("Adauga"));
		panel.add(new JButton("Salveaza"));
		panel.add(new JButton("Sterge"));
		
		JTextArea text = new JTextArea("Mai multe componente separate prin \n" + "intermediul containerelor JSplitPane");
		
		// separam lista de grupul celor 3 butoane
		JSplitPane sp1 = new JSplitPane( JSplitPane.HORIZONTAL_SPLIT, list, panel);
		
		// separam containerul cu lista si butoanele de componenta de editare text
		JSplitPane sp2 = new JSplitPane (JSplitPane.VERTICAL_SPLIT, sp1 , text);
		
		getContentPane().add(sp2);
	
		pack();
		
		
		
	}

}
