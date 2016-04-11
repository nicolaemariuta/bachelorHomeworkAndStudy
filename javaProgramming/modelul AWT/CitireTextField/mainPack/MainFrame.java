package mainPack;

import java.awt.*;
import java.awt.event.*;

public class MainFrame extends  Frame implements ActionListener {
	
	MainFrame(String name)
	{
		super(name);
		setSize(100,200);
		
		this.addWindowListener(new WindowAdapter()
		{
			public void windowClosing(WindowEvent e)
			{
				System.exit(0);
			}
		});
		Button b1 = new Button ("Touch me");
		add(b1);
		b1.addActionListener(this);
	}


	public void actionPerformed(ActionEvent e) 
	{
		if (e.getActionCommand()=="Touch me");
		{
			new FereastraDialog(this, "write", true);
		}
		
	}

}
