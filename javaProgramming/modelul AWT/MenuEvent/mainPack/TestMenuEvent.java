package mainPack;

import java.awt.*;
import java.awt.event.*;

public class TestMenuEvent extends Frame implements ActionListener, ItemListener{

	TestMenuEvent(String titlu)
	{
		super(titlu);
		
		MenuBar mb = new MenuBar();
		Menu test = new Menu("Test");
		CheckboxMenuItem check = new CheckboxMenuItem ("Check me");
		test.add(check);
		test.addSeparator();
		test.add(new MenuItem("Exit", new MenuShortcut(KeyEvent.VK_P,true)));
		
		mb.add(test);
		setMenuBar(mb);
		
		Button btnExit = new Button("Exit");
		add(btnExit, BorderLayout.SOUTH);
		setSize(200,300);
		
		
		test.addActionListener(this);
		check.addItemListener(this);
		btnExit.addActionListener(this);
	}
	
	
	
	
	
	
	
	
	public void actionPerformed(ActionEvent e)
	{
		String command = e.getActionCommand();
		if (command.equals("Exit"))
		{
			System.exit(0);
		}
	}

	
	public void itemStateChanged(ItemEvent e)
	{
		if (e.getStateChange()==ItemEvent.SELECTED)
		{
			setTitle("Checked!");
		}
		else
		{
			setTitle("Not Checked!");
		}
	}

}
