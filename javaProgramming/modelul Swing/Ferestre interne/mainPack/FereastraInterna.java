package mainPack;

import java.awt.*;

import javax.swing.*;

public class FereastraInterna extends JInternalFrame
{
	static int n =0;  // nr de clase interne
	static final int x= 30, y = 30;
	
	FereastraInterna()
	{
		super("Document #" + (++n),
				true,    //resizable
				true,	//closable
				true,	//maximizable
				true);	//iconifiable
		
		setLocation(x*n,y*n);
		setSize(new Dimension(200,100));
		
	}
	
	
	
}
