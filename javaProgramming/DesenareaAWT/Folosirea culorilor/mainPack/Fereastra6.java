package mainPack;

import java.awt.*;
import java.awt.event.*;

public class Fereastra6 extends Frame implements AdjustmentListener

{
	private Scrollbar rValue, gValue, bValue, aValue;
	private Culoare culoare = new Culoare();

	Fereastra6 (String titlu)
	{
		super(titlu);
		this.addWindowListener(new WindowAdapter()
		{
			public void windowClosing(WindowEvent e)
			{
				System.exit(0);
			}
		});
		
		Panel rgbValues = new Panel();
		rgbValues.setLayout(new GridLayout(4,1));
		rValue = new Scrollbar(Scrollbar.HORIZONTAL, 0,1,0,256);
		rValue.setBackground(Color.RED);
		
		gValue = new Scrollbar (Scrollbar.HORIZONTAL, 0, 1, 0 ,256);
		gValue.setBackground(Color.GREEN);
		
		bValue = new Scrollbar (Scrollbar.HORIZONTAL, 0 , 1, 0, 256);
		bValue.setBackground(Color.BLUE);
		
		aValue = new Scrollbar (Scrollbar.HORIZONTAL , 0 , 1 , 0,  256);
		aValue.setValue(255);
		aValue.setBackground(Color.lightGray);
		
		rgbValues.add(rValue);
		rgbValues.add(gValue);
		rgbValues.add(bValue);
		rgbValues.add(aValue);
		add(rgbValues, BorderLayout.SOUTH);
		setSize(200,200);
	
		add(culoare, BorderLayout.CENTER);
		
		rValue.addAdjustmentListener(this);
		gValue.addAdjustmentListener(this);
		bValue.addAdjustmentListener(this);
		aValue.addAdjustmentListener(this);
		
		
		this.addMouseMotionListener(new MouseMotionAdapter()
		{
			public void mouseMoved(MouseEvent e)
			{
				System.out.println("X= "+e.getX() +" Y= "+e.getY());
			}
		});
		
	}
	
	
	public void adjustmentValueChanged(AdjustmentEvent e)
	{
		int r = rValue.getValue();
		int g = gValue.getValue();
		int b = bValue.getValue();
		int a = aValue.getValue();
		Color c = new Color (r, g, b, a);
		culoare.color= c;
		culoare.repaint();
		
	}

}
