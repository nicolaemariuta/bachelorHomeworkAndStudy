package mainPack;

import java.awt.*;
import java.awt.event.*;
import java.awt.print.PrinterException;
import java.awt.print.PrinterJob;

public class Fereastra9 extends Frame implements ActionListener
{
	private Plansa2 plansa = new Plansa2();
	private Button print = new Button("Print");
	
	Fereastra9 (String titlu)
	{
		super(titlu);
		this.addWindowListener(new WindowAdapter(){
			public void windowClosing (WindowEvent e)
			{
				System.exit(0);
			}
			
		});
		
		
		add(plansa, BorderLayout.CENTER );
		
		Panel south = new Panel();
		south.setLayout(new FlowLayout(FlowLayout.CENTER));
		south.add(print, BorderLayout.SOUTH);
		add(south, BorderLayout.SOUTH);
		
		print.addActionListener(this);
		pack();
		
	}
	


	
	
	
	public void actionPerformed(ActionEvent arg)
	
	{
		// Crearea unei sesiuni de tiparire
		PrinterJob printJob= PrinterJob.getPrinterJob();
		
		// Stabilirea obiectului ce va fi tiparit
		printJob.setPrintable(plansa);
		
		// Initierea dialogului cu utilizatorul
		if (printJob.printDialog())
		{
			try
			{
				// tiparirea efectiva
				printJob.print();
				
			}
			catch (PrinterException e)
			{
				System.out.println("Exceptie la tiparire!");
				e.printStackTrace();
			}
		}
		
		
		
		
	}
	

}
