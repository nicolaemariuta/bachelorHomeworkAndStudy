package mainPack;

import java.awt.*;
import java.awt.event.ActionEvent;

import javax.swing.*;
import javax.swing.border.*;

public class Fereastra0 extends JFrame
{
	Fereastra0 (String titlu)
	{
		super(titlu);
		getContentPane().setLayout(new FlowLayout());
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		
		// folosirea chenarelor
		Border lowered, raised;
		TitledBorder title;
		
		lowered = BorderFactory.createLoweredBevelBorder();
		raised = BorderFactory.createLoweredBevelBorder();
		title = BorderFactory.createTitledBorder("Titlu");
		
		final JPanel panel = new JPanel();
		panel.setPreferredSize(new Dimension(400,200));
		panel.setBackground(Color.blue);
		panel.setBorder(title);
		getContentPane().add(panel);
		
		JLabel label1 = new JLabel("Lowered");
		label1.setBorder(lowered);
		panel.add(label1);
		
		JLabel label2 = new JLabel("Raised");
		label2.setBorder(raised);
		panel.add(label2);
		
		// controlul opacitatii
		JButton btn1 = new JButton("Opaque");
		btn1.setOpaque(true); //implicit
		panel.add(btn1);
		
		JButton btn2 = new JButton("Transparent");
		btn2.setOpaque(false);
		panel.add(btn2);
		
		// ToolTips
		label1.setToolTipText("Eticheta coborata");
		label2.setToolTipText("Eticheta ridicata");
		btn1.setToolTipText("Opac");
		//textul poate fi in HTML
		btn2.setToolTipText("<html ><b> Apasati <font color =red >F2</ font > " +" cand butonul are <u> focusul </u");
		
		//Asocierea unor actiuni(KeyBindings)
		//Apasarea tastei F2 cand focusul este pe butonul al doilea va determina schimbarea culorii panelului
		btn2.getInputMap().put(KeyStroke.getKeyStroke("R"), "schimbaCuloarea");
		btn2.getActionMap().put("schimbaCuloarea", new AbstractAction()
		{
			public Color color = Color.red;
			public void actionPerformed(ActionEvent e)
			{
				panel.setBackground(color);
				color =(color == Color.red ?  Color.blue : Color.red );
				
			}
		});
		
		pack();
	}
	
}
