package tabelModel;

import javax.swing.table.AbstractTableModel;

public class ModelTabel extends AbstractTableModel
{

	String[] coloane = {"Nume", "Varsta", "Student"};
	Object[][] elemente = {{"Ionescu", new Integer(20), Boolean.TRUE},{"Popescu", new Integer(80), Boolean.FALSE}};

	public int getColumnCount() 
	{

		return coloane.length;
	}


	public int getRowCount()
	{

		return elemente.length;
	}

	
	public Object getValueAt(int row, int col)
	{

		return elemente[row][col];
	}
	public String getColumnName (int col)
	{
		return coloane[col];
	}
	
	public boolean isCellEditable(int row, int col)
	{
		return (col==0);
	}

}
