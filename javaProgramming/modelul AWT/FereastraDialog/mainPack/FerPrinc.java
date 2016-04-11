package mainPack;

import java.awt.*;
import java.awt.event.*;

public class FerPrinc extends Frame implements ActionListener {

	
	FerPrinc ( String titlu)
	{
		super (titlu);
		this.addWindowListener(new WindowAdapter()
		{
			public void windowClosing(WindowEvent e)
			{
				System.exit(0);
			}
		});
		setLayout(new FlowLayout());
		setSize(300,80);
		Button b = new Button("Schimba Titlul");
		add(b);
		b.addActionListener(this);
	}
	

	
	public void actionPerformed(ActionEvent e) {
		
		FerDialog d = new FerDialog (this , " Dati titlul ", true );
		String titlu = d. raspuns ;
		
		if (titlu!= null)
		setTitle ( titlu );
		
		
	}

}
