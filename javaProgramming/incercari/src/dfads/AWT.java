package dfads;
import java . awt .*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.Scrollable;
public class AWT  {
	
	@SuppressWarnings("deprecation")
	public static void main(String[] args) {
		
		
		Frame F = new Frame("O fereastra");
		F.setLayout(new GridLayout(3,2));
		
		// Crearea celor doua butoane
		Button b1 = new Button ("OK");
		Button b2 = new Button (" Cancel ");
		Button b3 = new Button ("Apasa");
		Button b4 = new Button ("Mai Apasa o data");
		Button b5 = new Button ("Si inca o data");
		
		
		// Adaugarea butoanelor
		F.add(b1);
		F.add(b2);
		F.add(b3);
		F.add(b4);
		F.add(b5);
		
		
		F. pack ();
		F. show ();

	
	}}

	
			
	
		
	
		