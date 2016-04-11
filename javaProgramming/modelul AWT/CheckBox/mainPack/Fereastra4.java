package mainPack;

import java.awt.*;
import java.awt.event.*;

public class Fereastra4 extends Frame implements ItemListener{

	private Label label1, label2;
	private Checkbox cbx1;
	private Checkbox cbx2, cbx3;
	private CheckboxGroup cbg;
	
	Fereastra4 (String titlu)
	{
		super(titlu);
		this.addWindowListener(new WindowAdapter()
		{
			public void windowClosing(WindowEvent e)
			{
				System.exit(0);
			}
		});
		
		setLayout(new GridLayout(5,1));
		label1 = new Label ("Ingrediente Pizza:", Label.CENTER);
		label1.setBackground(Color.ORANGE);
		label2 = new Label ("");
		label2.setBackground(Color.lightGray);
		
		cbg = new CheckboxGroup();
		cbx1 = new Checkbox("Cascaval",cbg,false);
		cbx2 = new Checkbox("Sunca",cbg, false);
		cbx3 = new Checkbox("Ardei", cbg, false);
		
		add(label1);
		add(label2);
		add(cbx1);
		add(cbx2);
		add(cbx3);
		
		setSize(200,200);
		
		cbx1.addItemListener(this);
		cbx2.addItemListener(this);
		cbx3.addItemListener(this);
		
		
		
	}
	
	private void add(CheckboxGroup cbx12) {
		
		
	}

	public void itemStateChanged(ItemEvent e)
	{
		StringBuffer ingrediente = new StringBuffer();
		if (cbx1.getState()==true)
		{
			ingrediente.append("Cascaval");
			
		}
		if (cbx2.getState()==true)
		{
			ingrediente.append("Sunca");
			
		}
		if (cbx3.getState()==true)
		{
			ingrediente.append("Ardei");
			
		}
		label2.setText(ingrediente.toString());
		
		
		
	}

}
