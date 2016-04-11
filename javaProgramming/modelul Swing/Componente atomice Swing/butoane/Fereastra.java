package butoane;

import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.ItemEvent;
import java.awt.event.ItemListener;

import javax.swing.*;

public class Fereastra extends JFrame implements ActionListener
{
	JRadioButton jrb1;
	JRadioButton jrb2;
	JRadioButton jrb3;
	
	Fereastra (String titlu)
	{
		super(titlu);
		
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		getContentPane().setSize(new Dimension(500,500));
		jrb1 = new JRadioButton("Rosu");
		jrb2 = new JRadioButton("Verde");
		jrb3 = new JRadioButton("Portocaliu");
		ButtonGroup grp = new ButtonGroup();
		grp.add(jrb1);
		grp.add(jrb2);
		grp.add(jrb3);
		JPanel panel = new JPanel();
		panel.add(jrb1, BorderLayout.NORTH);
		panel.add(jrb2, BorderLayout.CENTER);
		panel.add(jrb3, BorderLayout.SOUTH);
		getContentPane().add(panel,BorderLayout.CENTER);
		
		jrb1.addActionListener(this);
		
	}


	public void actionPerformed(ActionEvent e) 
	{
		if (e.getSource()==jrb1)
		{
			getContentPane().setBackground(Color.RED);
		}
		if (e.getSource()==jrb2)
		{
			getContentPane().setBackground(Color.GREEN);
		}
		if (e.getSource()==jrb3)
		{
			getContentPane().setBackground(Color.ORANGE);
		}
		
	}
	

}
