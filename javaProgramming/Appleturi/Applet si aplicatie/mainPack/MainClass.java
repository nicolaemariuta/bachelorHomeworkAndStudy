package mainPack;

import java.awt.*;

public class MainClass
{
	public static void main(String[] args)
	{
	AppletAplicatie applet = new AppletAplicatie();
	Frame f = new Frame ("Applet si aplicatie");
	f.setSize(200,200);
	
	f.add(applet, BorderLayout.NORTH);
	applet.init();
	applet.start();
	
	f.show();
	}

}
