package mainPack;

import java.awt.event.KeyEvent;

import javax.swing.*;

public class Fereastra1	extends JFrame
{
	Fereastra1 (String titlu)
	{
		super(titlu);
		JTabbedPane tabbedPane = new JTabbedPane();
		ImageIcon icon = new ImageIcon ("smiley.gif");
		
		JComponent panel1 = new JPanel();
		panel1.setOpaque(true);
		panel1.add(new JLabel ("Hello"));
		tabbedPane.addTab("Tab 1", icon, panel1, "Aici avem o eticheta");
		tabbedPane.setMnemonicAt(0, KeyEvent.VK_1);
		
		JComponent panel2 = new JPanel();
		panel2.setOpaque(true);
		panel2.add(new JButton ("OK"));
		tabbedPane.addTab("Tab 2", icon , panel2, "Aici avem un buton");
		tabbedPane.setMnemonicAt(1,KeyEvent.VK_2);
		
		getContentPane().add(tabbedPane);
		
		pack();
		
	}

}
