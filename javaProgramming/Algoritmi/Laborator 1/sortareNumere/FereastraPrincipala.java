package sortareNumere;

import java.awt.BorderLayout;
import java.awt.EventQueue;
import java.awt.FileDialog;

import javax.swing.JFrame;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import javax.swing.JButton;
import java.awt.Font;
import javax.swing.JLabel;
import java.awt.Color;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;
import java.io.*;
import java.util.Scanner;
import java.util.Stack;

public class FereastraPrincipala extends JFrame implements ActionListener {

	private JPanel contentPane;
	String numeFisier;
	int[] array;
	public JLabel lblNewLabel;

	public FereastraPrincipala()
	{
		setTitle("Sortate Numere");
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 450, 300);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		JButton btnNewButton = new JButton("Alege fisierul");
		btnNewButton.setFont(new Font("Tahoma", Font.PLAIN, 12));
		btnNewButton.setBounds(134, 11, 117, 39);
		contentPane.add(btnNewButton);
		
		JButton btnNewButton_1 = new JButton("Sortare prin insertie");
		btnNewButton_1.setFont(new Font("Tahoma", Font.PLAIN, 12));
		btnNewButton_1.setBounds(10, 61, 196, 39);
		contentPane.add(btnNewButton_1);
		
		JButton btnNewButton_2 = new JButton("Sortare prin selectie");
		btnNewButton_2.setFont(new Font("Tahoma", Font.PLAIN, 12));
		btnNewButton_2.setBounds(213, 110, 211, 49);
		contentPane.add(btnNewButton_2);
		
		lblNewLabel = new JLabel("");
		lblNewLabel.setForeground(Color.RED);
		lblNewLabel.setFont(new Font("Tahoma", Font.PLAIN, 12));
		lblNewLabel.setBounds(10, 175, 414, 63);
		contentPane.add(lblNewLabel);
		
		this.addWindowListener(new WindowAdapter()
		{
			public void windowClosing(WindowEvent e)
			{
				System.exit(0);
			}
		});
		
		
		btnNewButton.addActionListener(this);
		btnNewButton_1.addActionListener(this);
		btnNewButton_2.addActionListener(this);
		
	}



	public void actionPerformed(ActionEvent e)
	{
		if (e.getActionCommand() == "Alege fisierul")
		{
			FileDialog fd = new FileDialog(this, "Choose File", FileDialog.LOAD);
			
			fd.setDirectory("C:/Users");
			fd.show();
	
			
			numeFisier = fd.getDirectory()+fd.getFile();
			
			try
			{
				
				Scanner citire = new Scanner(new File(numeFisier));
				Stack<Integer> stack = new Stack();
				
				while(citire.hasNext())
				{
					stack.add(citire.nextInt());
				}
				array = new int[stack.size()];
				
				for(int i = 0; i < stack.size(); i++)
				{
					array[i] = stack.get(i);
				}
				
				
		
			}
			catch (Exception ww)
			{
				JOptionPane.showMessageDialog(this,ww.toString(), "Error",JOptionPane.ERROR_MESSAGE);
			}
			
			
		}
		
		if (e.getActionCommand() == "Sortare prin insertie")
		{
			if (array != null)
			{
				new SortareInsertie(this).start();
			}
			else
			{
				JOptionPane.showMessageDialog(this,"Trebuie sa alegi fisier intai!!!", "Error",JOptionPane.ERROR_MESSAGE);
			}
		}
		
		if(e.getActionCommand() == "Sortare prin selectie")
		{
			if (array != null)
			{
				new SortareSelectie(this).start();
			}
			else
			{
				JOptionPane.showMessageDialog(this,"Trebuie sa alegi fisier intai!!!", "Error",JOptionPane.ERROR_MESSAGE);
			}
		}
		
		
		
	}
}
