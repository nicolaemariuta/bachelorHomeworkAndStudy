package citireLitere;

import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import javax.swing.JButton;
import java.awt.Font;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.ArrayList;

public class CitireLitere extends JFrame implements ActionListener{

	private JPanel contentPane;

	JButton btn1;
	JButton btn4;
	JButton btn7;
	JButton btn2;
	JButton btn5;
	JButton btn8;
	JButton btn3;
	JButton btn6;
	JButton btn9;
	JButton btnCitire;
	ArrayList<JButton> butoane;
	double[] w;

	/**
	 * Create the frame.
	 */
	public CitireLitere(double[] w) {
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 290, 358);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		btn1 = new JButton("");
		btn1.setBounds(0, 0, 89, 79);
		contentPane.add(btn1);
		
		btn4 = new JButton("");
		btn4.setBounds(0, 80, 89, 79);
		contentPane.add(btn4);
		
		btn7 = new JButton("");
		btn7.setBounds(0, 163, 89, 79);
		contentPane.add(btn7);
		
		btn2 = new JButton("");
		btn2.setBounds(93, 0, 89, 79);
		contentPane.add(btn2);
		
		btn5 = new JButton("");
		btn5.setBounds(93, 80, 89, 79);
		contentPane.add(btn5);
		
		btn8 = new JButton("");
		btn8.setBounds(93, 163, 89, 79);
		contentPane.add(btn8);
		
		btn3 = new JButton("");
		btn3.setBounds(185, 0, 89, 79);
		contentPane.add(btn3);
		
		btn6 = new JButton("");
		btn6.setBounds(185, 80, 89, 79);
		contentPane.add(btn6);
		
		btn9 = new JButton("");
		btn9.setBounds(185, 163, 89, 79);
		contentPane.add(btn9);
		
		btnCitire = new JButton("Citire litera");
		btnCitire.setFont(new Font("Tahoma", Font.PLAIN, 18));
		btnCitire.setBounds(0, 247, 274, 73);
		contentPane.add(btnCitire);
		
		butoane = new ArrayList<JButton>();
		butoane.add(btn1);
		butoane.add(btn2);
		butoane.add(btn3);
		butoane.add(btn4);
		butoane.add(btn5);
		butoane.add(btn6);
		butoane.add(btn7);
		butoane.add(btn8);
		butoane.add(btn9);
		this.w = w;
		
		for(int i =0; i< butoane.size(); i++)
		{
			butoane.get(i).setBackground(Color.WHITE);
			butoane.get(i).addActionListener(this);
		}
		
		btnCitire.addActionListener(this);
		
		
	}



	@Override
	public void actionPerformed(ActionEvent e) {
		
		if(e.getSource() == btnCitire)
		{
			double[] x = new double[9];
			
			for(int i =0; i<x.length; i++)
			{
				if(butoane.get(i).getBackground() == Color.WHITE )
				{
					x[i] = 0;
				} else
				{
					x[i] = 1;
				}
				
				System.out.print(x[i]);
				System.out.print("   ");
			}
			
			Pattern perturbatie = new Pattern(x);
			double o = perturbatie.iesire(w);
			System.out.println("Citire iesire " + o);
			if(o > 0.7)
			{
				this.setTitle("A fost citita litera L");
			}
			else if(o < -0.7)
			{
				this.setTitle("A fost citita litera I");
			}
			else
			{
				this.setTitle("Litera nu a putut fi citita");
			}
			
		}
		
		else
		{
			int index = butoane.indexOf(e.getSource());
			
			
			if(butoane.get(index).getBackground() == Color.WHITE)
			{
			butoane.get(index).setBackground(Color.BLACK);
			}
			else 
			{
				butoane.get(index).setBackground(Color.WHITE);
			}
			
		}
		
		
		
	}
}
