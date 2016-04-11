package mainPack;

import java.awt.BorderLayout;

import javax.swing.*;
import javax.swing.event.*;

public class Fereastra9 extends JFrame implements ListSelectionListener

{
	int[] array = {1,2,3,4,5};
	int ales = (int)(Math.random()*5+1);
	JLabel numarAles = new JLabel("Selecteaza numarul "+ ales);
	JLabel gresit;
	ModelLista model = new ModelLista();
	JList lista = new JList (model);
	
	Fereastra9 (String titlu)
	{
		super(titlu);
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		getContentPane().setSize(400, 400);
		
		
		lista.setSelectionMode(ListSelectionModel.SINGLE_SELECTION);
		lista.setCellRenderer(new MyCellRenderer());
		getContentPane().add(numarAles, BorderLayout.NORTH );
		getContentPane().add(lista, BorderLayout.CENTER);
		
		ListSelectionModel mod = lista.getSelectionModel();
		pack();
		mod.addListSelectionListener(this);
		
	}

	
	
	public void valueChanged(ListSelectionEvent e)
	
	{
		if (e.getValueIsAdjusting())
		{
			int index = lista.getSelectedIndex();
			System.out.println(model.getElementAt(index));
			if (ales == 1)
			{
			if (model.getElementAt(index)=="Unu")
			{
				getContentPane().add(new JLabel ("Raspuns Corect"), BorderLayout.SOUTH);
			}
			else
			{
				getContentPane().add(new JLabel ("Raspuns gresit"), BorderLayout.SOUTH);
			}
			}
			
			if (ales == 2)
			{
			if (model.getElementAt(index)=="Doi")
			{
				getContentPane().add(new JLabel ("Raspuns Corect"), BorderLayout.SOUTH);
			}
			else
			{
				getContentPane().add(new JLabel ("Raspuns gresit"), BorderLayout.SOUTH);
			}
			}
			
			if (ales == 3)
			{
			if (model.getElementAt(index)=="Trei")
			{
				getContentPane().add(new JLabel ("Raspuns Corect"), BorderLayout.SOUTH);
			}
			else
			{
				getContentPane().add(new JLabel ("Raspuns gresit"), BorderLayout.SOUTH);
			}
			}
			
			if (ales == 4)
			{
			if (model.getElementAt(index)=="Patru")
			{
				getContentPane().add(new JLabel ("Raspuns Corect"), BorderLayout.SOUTH);
			}
			else
			{
				getContentPane().add(new JLabel ("Raspuns gresit"), BorderLayout.SOUTH);
			}
			}
			
			if (ales == 5)
			{
			if (model.getElementAt(index)=="Cinci")
			{
				getContentPane().add(new JLabel ("Raspuns Corect"), BorderLayout.SOUTH);
			}
			else
			{
				getContentPane().add(new JLabel ("Raspuns gresit"), BorderLayout.SOUTH);
			}
			}
			
			
			
			
			
		}
		
	}

}
