package russe;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import javax.swing.JOptionPane;
import javax.swing.JTextField;
import javax.swing.JLabel;
import javax.swing.JButton;
import java.awt.Font;
import java.awt.Color;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;


public class FereastraPrincipala extends JFrame implements ActionListener 
{

	private JPanel contentPane;
	private JTextField textFieldA;
	private JTextField textFieldB;
	JLabel lblNewLabel_2 ;
	JButton btnOK;

	
	public FereastraPrincipala() {
		setTitle("Inmultire a la Russe");
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 393, 165);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		JLabel lblNewLabel = new JLabel("   A =");
		lblNewLabel.setFont(new Font("Tahoma", Font.PLAIN, 14));
		lblNewLabel.setBounds(10, 11, 35, 32);
		contentPane.add(lblNewLabel);
		
		textFieldA = new JTextField();
		textFieldA.setFont(new Font("Tahoma", Font.PLAIN, 14));
		textFieldA.setBounds(46, 11, 61, 32);
		contentPane.add(textFieldA);
		textFieldA.setColumns(10);
		
		textFieldB = new JTextField();
		textFieldB.setFont(new Font("Tahoma", Font.PLAIN, 14));
		textFieldB.setColumns(10);
		textFieldB.setBounds(225, 11, 61, 32);
		contentPane.add(textFieldB);
		
		JLabel lblB = new JLabel("  B =");
		lblB.setFont(new Font("Tahoma", Font.PLAIN, 14));
		lblB.setBounds(190, 11, 35, 32);
		contentPane.add(lblB);
		
		btnOK = new JButton("OK");
		btnOK.setBounds(296, 13, 71, 28);
		contentPane.add(btnOK);
		
		JLabel lblNewLabel_1 = new JLabel("Rezultatul inmultirii este : ");
		lblNewLabel_1.setFont(new Font("Tahoma", Font.PLAIN, 14));
		lblNewLabel_1.setBounds(21, 67, 160, 32);
		contentPane.add(lblNewLabel_1);
		
		lblNewLabel_2 = new JLabel("");
		lblNewLabel_2.setFont(new Font("Tahoma", Font.PLAIN, 14));
		lblNewLabel_2.setForeground(Color.RED);
		lblNewLabel_2.setBounds(190, 67, 153, 25);
		contentPane.add(lblNewLabel_2);
		
		btnOK.addActionListener(this);
		
		
	}



	public void actionPerformed(ActionEvent e)
	{
		try
		{
		
		int a = 0;
		int b = 0;
		
		if (e.getSource() == btnOK)
		{
			String A = textFieldA.getText();
			a = Integer.parseInt(A);
			
			String B = textFieldB.getText();
			b = Integer.parseInt(B);
		}
		
		if (a == 0 || b==0)
		{
			JOptionPane.showMessageDialog(this,"Ai introdus numerele gresit!!", "Error",JOptionPane.ERROR_MESSAGE);
		}
		else
		{
			int produs = MainClass.inmultireRusse(a, b);
			lblNewLabel_2.setText(String.valueOf(produs));
		}
		}
		catch (Exception EE )
		{
			JOptionPane.showMessageDialog(this,"Ai introdus numerele gresit!!", "Error",JOptionPane.ERROR_MESSAGE);
		}
	
		
	}
}
