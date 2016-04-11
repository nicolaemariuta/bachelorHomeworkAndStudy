package tabelModel;

import java.awt.Color;
import java.awt.Component;

import javax.swing.JTable;
import javax.swing.table.TableCellRenderer;

public class MyCellRenderer extends JTable implements TableCellRenderer {


	public Component getTableCellRendererComponent(JTable table, Object value,boolean isSelected, boolean cellHasFocus, int col, int row) {
		

		setToolTipText (value.toString());
		setBackground(isSelected ? Color.red : Color.green);
		setForeground(isSelected ? Color.white : Color.black);
		return this;
	}

}
