package mainPack;

import java.awt.*;
import java.awt.event.*;
import java.io.BufferedWriter;
import java.io.FileWriter;

import javax.swing.*;

public class Fereastra4 extends JFrame implements ActionListener
{
	JButton colorat = new JButton ("Schimba culoarea");
	JColorChooser jcc = new JColorChooser();
	JTextArea text = new JTextArea("",40,50);
	JButton salveaza = new JButton ("Salveaza textul");
	Fereastra4 (String titlu)
	{
		super (titlu);
		
		JPanel Butoane = new JPanel(new FlowLayout());
		Butoane.add(colorat);
		
		getContentPane().add(Butoane, BorderLayout.SOUTH);
		
		
		JPanel scrie = new JPanel();
		scrie.add(text, BorderLayout.NORTH);
		scrie.add(salveaza, BorderLayout.SOUTH);

		getContentPane().add(scrie, BorderLayout.NORTH);
		
		salveaza.addActionListener(this);
		colorat.addActionListener(this);
		
		pack();
		
	}
	
	

	public void actionPerformed(ActionEvent e)
	{
		if (e.getActionCommand()=="Schimba culoarea")
		{
			getContentPane().add(jcc);
			colorat.setBackground(jcc.getColor());
		//	JOptionPane.showMessageDialog(this,"Eroare de sistem !", "Eroare",JOptionPane.ERROR_MESSAGE);
		}
		if (e.getActionCommand()== "Salveaza textul")
		{
			String string = text.getText();
			JFileChooser filechoose = new JFileChooser();
			
			filechoose.show();
			String url = filechoose.getName();
			
			try
			{
				BufferedWriter file = new BufferedWriter(new FileWriter(url));
				file.write(string);
				file.close();
				
			}
			catch (Exception E)
			{
				System.out.println(E);
			}
		}
		
	}

}
