package mainPack;

import java.awt.*;
import java.awt.event.*;


public class Fereastra2 extends Frame implements AdjustmentListener{
	
	private Scrollbar scroll;
	private Label valoare;
	Fereastra2 (String titlu)
	{
		super(titlu);
		this.addWindowListener(new WindowAdapter ()
		{
			public void windowClosing(WindowEvent e)
			{
				System.exit(0);
				
			}
		});
		
		setLayout (new GridLayout (2,1));
		
		valoare = new Label ("", Label.CENTER);
		valoare.setBackground(Color.lightGray);
		
		
		scroll = new Scrollbar (Scrollbar.HORIZONTAL, 0,1,0,20);
		
		add(valoare);
		add(scroll);
		
		scroll.addAdjustmentListener(this);
	}


	public void adjustmentValueChanged(AdjustmentEvent e) {
		valoare.setText(e.getValue()+"%");
		
		
	}

}
