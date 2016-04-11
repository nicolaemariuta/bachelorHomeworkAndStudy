package dfads;

import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

public class Ascultator implements ActionListener {
	Button b1 = new Button ("Cancel");

	@Override
	public void actionPerformed(ActionEvent e) {
		if (e.getSource()==b1)
		{
			System.exit(20);
		}
		
	}
	
	
	
	

}
