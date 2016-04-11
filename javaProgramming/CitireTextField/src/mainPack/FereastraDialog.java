package mainPack;

import java.awt.*;
import java.awt.event.*;

public class FereastraDialog extends Dialog implements ActionListener{

	TextField tf;
	Button b;
	public FereastraDialog(Frame parinte, String name, boolean x) 
	{
		super(parinte, name, x);
		setSize(100,200);
		setBackground(Color.lightGray);
		
		this.addWindowListener(new WindowAdapter()
		{
			public void windowClosing(WindowEvent e)
			{
				System.exit(0);
			}
		});
		
		Label f1 = new Label ("Write ", Label.CENTER);
		tf = new TextField("",50);
		b = new Button ("OK");
		
		add(f1,BorderLayout.WEST);
		add(tf,BorderLayout.EAST);
		add(b, BorderLayout.SOUTH);
		
		tf.addActionListener(this);
		b.addActionListener(this);
		
		show();
		
	}

	
	public void actionPerformed(ActionEvent e) 
	{
		if (e.getSource()==b)
		{
			String  s1;
			s1 = tf.getText();
			System.out.println(s1);
			dispose();
		}
		
	}

}
