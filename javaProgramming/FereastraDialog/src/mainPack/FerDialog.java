package mainPack;

import java.awt.*;
import java.awt.event.*;


public class FerDialog extends Dialog implements ActionListener, TextListener{
	public String raspuns;
	private TextField text;
	private Button ok, cancel;
	
	
	public FerDialog(Frame parinte, String titlu, boolean modala) {
		super(parinte, titlu, modala);
		this.addWindowListener(new WindowAdapter()
		{
			public void windowClosing(WindowEvent e)
			{
				raspuns = null;
				dispose();
			}
			
		});
		text = new TextField("",30);
		add(text,BorderLayout.CENTER);
		
		Panel panel = new Panel();
		ok = new Button("OK");
		cancel = new Button("Cancel");
		panel.add(ok);
		panel.add(cancel);
		
		add(panel, BorderLayout.SOUTH);
		pack();
		
		
		text.addActionListener(this);
		ok.addActionListener(this);
		cancel.addActionListener(this);
		
		show();
	}


	
	public void actionPerformed(ActionEvent e) {
		Object sursa = e.getSource();
		if (sursa==ok || sursa == text)
		{
			raspuns = text.getText();
			dispose();
			
		}
		else {
			raspuns = null;
			dispose();
		}
		
		
	}



	
	public void textValueChanged(TextEvent e )
	{
		
		
	}

	

}
