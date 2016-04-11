package mainPack;

import javax.swing.*;

public class FereastraPrincipala extends JFrame
{
	FereastraPrincipala(String titlu)
	{
		super(titlu);
		setSize(200,300);
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		
		FereastraInterna fin1 = new FereastraInterna();
		fin1.setVisible(true);
		FereastraInterna fin2 = new FereastraInterna();
		fin2.setVisible(true);
		
		JDesktopPane desktop = new JDesktopPane();
		desktop.add(fin1);
		desktop.add(fin2);
		setContentPane(desktop);
		
		fin2.moveToFront();
	}
}
