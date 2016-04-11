

import java.applet.*;
import java.awt.Font;
import java.awt.Graphics;

public class TestParametri extends Applet
{
	String text, numeFont;
	int dimFont;
	
	public void init()
	{
		text = getParameter (" textAfisat ");
		if (text == null)
		{
			text = "Hello!";   // caloare implicita
		}
		numeFont = getParameter("numeFont");
		if (numeFont == null)
		{
			numeFont = "Arial";
			
		}
		
		try
		{
			dimFont = Integer.parseInt(getParameter("dimFont"));
		}
		catch(NumberFormatException e )
		{
			dimFont =16;
		}
		
	}
	
	public void paint (Graphics g )
	{
		g.setFont(new Font(numeFont, Font.BOLD, dimFont));
		g.drawString(text, 20, 20);
	}
	
	public String[][] getParameterInfo()
	{
		String[][] info  =  {
			// Nume             Tip               Descriere
			{ "textAfisat",   "String",      "Sirul ce va fi afisat"},
			{ "numeFont",     "String",      "Numere Fontului"    },
			{ "dimFont",      "int",           "Dimensiunea Fontului" }
				
		};
		return info;
			
		
	}
}