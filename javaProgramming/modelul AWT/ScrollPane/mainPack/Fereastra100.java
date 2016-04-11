package mainPack;

import java.awt.*;
import java.awt.event.*;

public class Fereastra100 extends Frame 
{
	private ScrollPane sp;
	private List list;
	
	Fereastra100 (String titlu)
	{
		super(titlu);
		this.addWindowListener(new WindowAdapter()
		{
			public void windowClosing(WindowEvent e)
			{
				System.exit(0);
			}
		});
		
		
		list = new List(7);
		list.add("Luni");
		list.add("Marti");
		list.add("Miercuri");
		list.add("Joi");
		list.add("Vineri");
		list.add("Sambata");
		list.add("Duminica");
		list.select(1);
		
		sp = new ScrollPane (ScrollPane.SCROLLBARS_ALWAYS);
		sp.add(list);
		
		add(sp,BorderLayout.CENTER);
		setSize(200,200);
	}
	
	

}
