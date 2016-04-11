package mainPack;

import java.awt.*;
import java.awt.event.*;


public class Fereastra extends Frame implements TextListener {

	private TextField nume,parola;
	private Label acess;
	private static final String UID= "Duke", PWD= "java";
	
	Fereastra (String titlu)
	{
		super (titlu);
		this . addWindowListener (new WindowAdapter () {
			public void windowClosing ( WindowEvent e) {
			System . exit (0);
			}
			});
		
		setLayout(new GridLayout(3,1));
		setBackground(Color.lightGray);
		
		nume = new TextField ("",30);
		parola = new TextField ("",10);
		parola.setEchoChar('*');
		
		Panel p1 = new Panel();
		p1.setLayout(new FlowLayout(FlowLayout.LEFT));
		p1.add(new Label ("Nume"));
		p1.add(nume);
		
		Panel p2 = new Panel();
		p2.setLayout(new FlowLayout(FlowLayout.LEFT));
		p2.add(new Label ("Parola"));
		p2.add(parola);
		
		acess = new Label("Introduceti numele si parola", Label.CENTER);
		add(p1);
		add(p2);
		add(acess);
		
		setSize(350,100);
		
		nume.addTextListener(this);
		parola.addTextListener(this);
		
		
	}
	
	
	public void textValueChanged(TextEvent e)
	{
		if(nume.getText().length()==0 || parola.getText().length()==0)
		{
			acess.setText("");
			return;
		}
		if ( nume . getText (). equals ( UID) &&parola . getText (). equals (PWD))
		{
				acess . setText (" Acces permis !");
				nume.requestFocus();
				}
				else
				{
					acess . setText (" Acces interzis !");
				}

		
	}

}
