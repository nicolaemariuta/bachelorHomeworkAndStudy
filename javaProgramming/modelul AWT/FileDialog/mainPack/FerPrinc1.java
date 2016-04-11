package mainPack;

import java.awt.*;
import java.awt.event.*;
import java .io .*;

public class FerPrinc1 extends Frame implements ActionListener {
	
	public static void main(String[] args) {
		FerPrinc1 f1 = new FerPrinc1("Testare");
		f1.show();
	}
	
	
	FerPrinc1(String  titlu)
	{
		super(titlu);
		this.addWindowListener(new WindowAdapter()
		{
			public void windowClosing(WindowEvent e)
			{
				dispose();
			}
			
		});
		Button b1 = new Button ("Alege fisier");
		add(b1, BorderLayout.CENTER);
		pack();
		b1.addActionListener(this);
	}
	
	
	
	
	
	
	public void actionPerformed(ActionEvent e) {
		FileDialog fd = new FileDialog(this, "Alege fisier", FileDialog.LOAD);

		fd.setFilenameFilter(new FilenameFilter()
		{

			@Override
			public boolean accept(File dir, String numeFis) {
				
				return (numeFis.endsWith(".txt"));
			}
			
		});
		fd.show();
		setTitle("Fisierul ales este"+fd.getFile());
		
	}
	
	


}
