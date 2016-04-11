package tabelModel;

import java.awt.BorderLayout;
import java.awt.Color;

import javax.swing.*;
import javax.swing.event.*;

public class Fereastra extends JFrame implements TableModelListener,ListSelectionListener

{		
	ModelTabel model = new ModelTabel();

	Fereastra (String titlu)
	{
		super(titlu);
		setSize(400,400);
		ModelTabel model = new ModelTabel();
		JTable tabel = new JTable(model);
		
		getContentPane().add(tabel,BorderLayout.CENTER);
		tabel.getModel().addTableModelListener(this);
		tabel.setDefaultRenderer(Color.class, new MyCellRenderer());
		tabel.setSelectionMode(ListSelectionModel.SINGLE_SELECTION);
		ListSelectionModel model2 = tabel.getSelectionModel();
		model2.addListSelectionListener(this);
	}


	public void tableChanged(TableModelEvent e) 
	{
		int row = e.getFirstRow();
		int col = e.getColumn();
		
		ModelTabel model = (ModelTabel)e.getSource();
		Object data = model.getValueAt(row, col);
		System.out.println(data);
	
		
	}



	public void valueChanged(ListSelectionEvent e)
	{
		if (e.getValueIsAdjusting())
		{
			System.out.println(e.getSource());
		}
		
	}

}
