package mainPack;

import java.awt.BorderLayout;
import java.awt.event.*;

import javax.swing.*;

public class Fereastra5	extends JFrame implements ActionListener
{
	public static String data1[] = {"rosu","galben","albastru"};
	public static String data2[] = {"red", "yellow","blue"};
	int tipModel = 1;
	JList lst;
	ListModel model1, model2;
	
	
	Fereastra5 (String titlu)
	{
		super(titlu);
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		
		// lista initiala nu are nici un model
		lst = new JList();
		getContentPane().add(lst, BorderLayout.CENTER);
		
		// la apasarea butonului schimbam modelul
		JButton btn = new JButton ("Schimba modelul");
		getContentPane().add(btn, BorderLayout.SOUTH);
		btn.addActionListener(this);
		
		// creem obiectele corespunzatoare celor doua modele
		model1 = new Model1();
		model2 = new Model2();
		lst.setModel(model1);
		pack();
		
		
		
	}
	
	
	
	
	public void actionPerformed(ActionEvent e) 
	{
		if (tipModel == 1)
		{
			lst.setModel(model2);
			tipModel=2;
		}
		else
		{
			lst.setModel(model1);
			tipModel =1;
		}
	}

}
