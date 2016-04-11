package mainPacl;

import java.awt.*;
import java.awt.event.*;

public class Fereastra extends Frame implements ActionListener {

	private PopupMenu popup;
	private Component origin;
	
	Fereastra (String titlu)
	{
		super(titlu);
		origin = this;
		
		addWindowListener(new WindowAdapter()
				{
			public void windowClosing(WindowEvent e)
			{
				dispose();
			}
			
				});
		
		addMouseListener(new MouseAdapter()
		{
			public void mousePressed(MouseEvent e)
			{
				if (e.isPopupTrigger())
				{
					popup.show(origin, e.getX(), e.getY());
					
				}
			}
			public void mouseReleased(MouseEvent e)
			{
				if (e.isPopupTrigger())
				{
					popup.show(origin, e.getX(), e.getY());
				}
			}
			
			
		});
		setSize(300,300);
		
		popup = new PopupMenu("Options");
		popup.add(new MenuItem("New"));
		popup.add(new MenuItem("Edit"));
		popup.addSeparator();
		popup.add(new MenuItem("Exit"));
		add(popup);
		popup.addActionListener(this);
	}
	
	
	
	
	public void actionPerformed(ActionEvent e) {
		if (e.getActionCommand()=="Exit")
		{
			System.exit(0);
		}
		
		
	}

}
