package aplicatieAWT;

import java.awt.*;
import java.awt.event.*;

public class ExempluAWT extends Frame implements ActionListener 
	{

	ExempluAWT(String titlu)
	{
		super(titlu);
		setLayout(new FlowLayout());
		add(new Label("Hello AWT"));
		Button b = new Button ("Close");
		b.addActionListener(this);
		add(b);
		pack();
		show();
		
	}
	

	public void actionPerformed(ActionEvent e)
	
	{
		System.exit(0);
	
	}

}
