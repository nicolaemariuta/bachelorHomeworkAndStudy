package mainPack;
import java . awt .*;
import java . awt. event .*;


public class TestCardLayout extends Frame implements ActionListener {

	
	
	Panel tab;

	TestCardLayout()
	{
		super("TestCardLayout");
		Button button1 = new Button ("Card 1");
		Button button2 = new Button ("Card 2");
		
		Panel butoane = new Panel();
		butoane.add(button1);
		butoane.add(button2);
		
		tab = new Panel();
		tab.setLayout(new CardLayout());
		
		TextField tx = new TextField ("Scrie numele");
		tx.setSize(1000, 40);
		tx.setBackground(Color.RED);
		Button b1 = new Button ("Apasa!");
		b1.setSize(800, 40);
		tab.add("Card 1",tx);
		tab.add("Card 2",b1);
		
		add(butoane, BorderLayout.NORTH);
		add(tab, BorderLayout.SOUTH);
		
		pack();
		tab.show();
		button1.addActionListener(this);
		button2.addActionListener(this);
		
		
		
		
		
		
	}
	


	public void actionPerformed(ActionEvent e) {
		CardLayout gestionar = ( CardLayout ) tab. getLayout ();
		gestionar . show (tab , e. getActionCommand ());
		
		
		
	}

}
