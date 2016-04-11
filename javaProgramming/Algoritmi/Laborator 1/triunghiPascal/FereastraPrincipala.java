package triunghiPascal;

import java.awt.BorderLayout;
import java.awt.EventQueue;
import java.awt.FileDialog;

import javax.swing.JFrame;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import javax.swing.JTextField;

import javax.swing.JLabel;
import java.awt.Font;
import javax.swing.JButton;
import java.awt.Color;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

public class FereastraPrincipala extends JFrame implements ActionListener {

	private JPanel contentPane;
	private JTextField textField;
	JButton btnActivate;

	public FereastraPrincipala(String title) 
	{
		super(title);
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 345, 130);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		JLabel lblDimensiunea = new JLabel("Dimensiunea");
		lblDimensiunea.setFont(new Font("Tahoma", Font.PLAIN, 14));
		lblDimensiunea.setBounds(11, 11, 116, 30);
		contentPane.add(lblDimensiunea);
		
		textField = new JTextField();
		textField.setFont(new Font("Tahoma", Font.PLAIN, 14));
		textField.setBounds(134, 11, 109, 27);
		contentPane.add(textField);
		textField.setColumns(10);
		
		 btnActivate = new JButton("ACTIVATE");
		btnActivate.setOpaque(true);
		btnActivate.setBackground(Color.RED);
		btnActivate.setBounds(75, 52, 109, 23);
		contentPane.add(btnActivate);
		
		btnActivate.addActionListener(this);
	}


	public void actionPerformed(ActionEvent e)
	{
		if(e.getSource() ==btnActivate )
		{
			try
			{
			FileDialog fd = new FileDialog(this, "Choose File", FileDialog.SAVE);
			
			fd.setDirectory("C:/Users");
			fd.show();
	
			String numeFisier;
			numeFisier = fd.getDirectory()+fd.getFile();
		
			if (numeFisier.isEmpty()|| numeFisier == null)
			{
				System.out.println("EMPTY");
				JOptionPane.showMessageDialog(this,"!!!!!", "Error",JOptionPane.ERROR_MESSAGE);
			}
			
			int m = Integer.parseInt(textField.getText());
			System.out.println(numeFisier);
			new ThreadPascal(numeFisier,m).start();
			}
			catch (Exception w)
			{
				JOptionPane.showMessageDialog(this,w.toString(), "Error",JOptionPane.ERROR_MESSAGE);
			}
		
		}

		
	}
}
