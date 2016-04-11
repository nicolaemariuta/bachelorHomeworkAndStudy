package aplicatiaSwing;


import java.awt.*;
import java.awt.event.*;

import javax.swing.*;

public class ExempluSwing extends JFrame implements ActionListener
{
	ExempluSwing (String titlu)
	{
		super(titlu);
		// metoda setLayout nu se aplica direct ferestrei
		getContentPane().setLayout(new FlowLayout());
		
		// componentele au denumiri ce incep cu litera J
		// textul poate fi si in format HTML
		getContentPane().add(new Label("<html><b><u>T</u>wo</b><br>lines</html>"));
		JButton b = new JButton ("<html><b><u>T</u>wo</b><br>lines</html>");
		b.addActionListener(this);
		
		
		// metoda add nu se aplicat direct ferestrei
		getContentPane().add(b);
		pack();
		show();
		
		
		
		
	}
	
	
	
	

	public void actionPerformed(ActionEvent e)
	{
		// Tratarea evenimentelor se face ca in AWT
		System.exit(0);
		
	}

}
