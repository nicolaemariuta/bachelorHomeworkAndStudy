package mainPack;

import java.awt.*;
import java.awt.event.*;

public class Fereastra5 extends Frame implements ItemListener {

	private Label label;
	private List culori;
	
	Fereastra5 (String titlu)
	{
		super(titlu);
		
		this.addWindowListener(new WindowAdapter()
		{
			public void windowClosing(WindowEvent e)
			{
				System.exit(0);
			}
			
		});
		
		setLayout (new GridLayout(4,1));
		label = new Label ("Alegeti Culoarea", Label.CENTER);
		label.setBackground(Color.RED);
		
		culori = new List(3);
		culori.add("Rosu");
		culori.add("Verde");
		culori.add("Albastru");
		culori.select(3);
		
		
		add(label);
		add(culori);
		
		setSize(200,300);
		
		culori.addItemListener(this);
		
		
	}
	
	
	
	
	
	public void itemStateChanged(ItemEvent e) {
		
		switch(culori.getSelectedIndex())
		{
		case 0 : label.setBackground(Color.RED);
					break;
		case 1 : label.setBackground(Color.GREEN);
					break;
		case 2 : label.setBackground(Color.BLUE);
		}
	}

}
