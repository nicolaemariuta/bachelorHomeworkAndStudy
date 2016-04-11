package mainPack;

import java.awt.Color;
import java.awt.Component;

import javax.swing.JLabel;
import javax.swing.JList;
import javax.swing.ListCellRenderer;

public class MyCellRenderer extends JLabel implements ListCellRenderer
{
	public MyCellRenderer()
	{
		setOpaque(true);
	}


	public Component getListCellRendererComponent(JList list, Object value,int index, boolean isSelected, boolean cellHasFocus)
	
	{
		setText (value.toString());
		setBackground(isSelected ? Color.red : Color.green);
		setForeground(isSelected ? Color.white : Color.black);
		
	
		return this;
	}


	




}
