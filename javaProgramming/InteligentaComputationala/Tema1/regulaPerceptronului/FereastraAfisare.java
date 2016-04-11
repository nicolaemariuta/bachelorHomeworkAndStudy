package regulaPerceptronului;

import java.awt.BorderLayout;
import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JTextArea;
import javax.swing.JTextPane;
import javax.swing.border.EmptyBorder;
import javax.swing.JLabel;
import java.awt.Font;
import javax.swing.JTextField;
import javax.swing.JButton;
import java.awt.Color;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import javax.swing.JScrollPane;
import javax.swing.ScrollPaneConstants;

public class FereastraAfisare extends JFrame implements ActionListener{

	private JPanel contentPane;
	
	private JTextField w1;
	private JTextField w2;
	private JTextField w3;
	
	private JTextField x11;
	private JTextField x12;
	private JTextField x13;
	private JTextField x21;
	private JTextField x22;
	private JTextField x23;
	
	
	private JTextField c;
	private JTextField d1;
	private JTextField d2;
	
	private JTextPane afisare;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					FereastraAfisare frame = new FereastraAfisare();
					frame.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}

	/**
	 * Create the frame.
	 */
	public FereastraAfisare() {
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 383, 491);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		JPanel panel = new JPanel();
		panel.setBounds(0, 0, 115, 256);
		contentPane.add(panel);
		panel.setLayout(null);
		
		JLabel lblNewLabel = new JLabel(" Perceptron:");
		lblNewLabel.setFont(new Font("Tahoma", Font.PLAIN, 12));
		lblNewLabel.setBounds(10, 11, 95, 33);
		panel.add(lblNewLabel);
		
		JLabel lblNewLabel_1 = new JLabel("w[1]= ");
		lblNewLabel_1.setFont(new Font("Tahoma", Font.PLAIN, 12));
		lblNewLabel_1.setBounds(10, 55, 46, 33);
		panel.add(lblNewLabel_1);
		
		JLabel lblW = new JLabel("w[2]= ");
		lblW.setFont(new Font("Tahoma", Font.PLAIN, 12));
		lblW.setBounds(10, 113, 46, 33);
		panel.add(lblW);
		
		JLabel lblW_1 = new JLabel("w[3]= ");
		lblW_1.setFont(new Font("Tahoma", Font.PLAIN, 12));
		lblW_1.setBounds(10, 170, 46, 33);
		panel.add(lblW_1);
		
		w1 = new JTextField();
		w1.setText("0");
		w1.setFont(new Font("Tahoma", Font.PLAIN, 12));
		w1.setBounds(59, 62, 46, 20);
		panel.add(w1);
		w1.setColumns(10);
		
		w2 = new JTextField();
		w2.setText("1");
		w2.setFont(new Font("Tahoma", Font.PLAIN, 12));
		w2.setColumns(10);
		w2.setBounds(59, 120, 46, 20);
		panel.add(w2);
		
		w3 = new JTextField();
		w3.setText("0");
		w3.setFont(new Font("Tahoma", Font.PLAIN, 12));
		w3.setColumns(10);
		w3.setBounds(59, 177, 46, 20);
		panel.add(w3);
		
		JLabel lblC = new JLabel("c = ");
		lblC.setFont(new Font("Tahoma", Font.PLAIN, 12));
		lblC.setBounds(10, 212, 46, 33);
		panel.add(lblC);
		
		c = new JTextField();
		c.setText("0.1");
		c.setFont(new Font("Tahoma", Font.PLAIN, 12));
		c.setColumns(10);
		c.setBounds(59, 219, 46, 20);
		panel.add(c);
		
		JPanel panel_1 = new JPanel();
		panel_1.setLayout(null);
		panel_1.setBounds(123, 0, 115, 256);
		contentPane.add(panel_1);
		
		JLabel lblIntrarea = new JLabel("Intrarea 1:");
		lblIntrarea.setFont(new Font("Tahoma", Font.PLAIN, 12));
		lblIntrarea.setBounds(10, 11, 95, 33);
		panel_1.add(lblIntrarea);
		
		JLabel lblX = new JLabel("x[1]= ");
		lblX.setFont(new Font("Tahoma", Font.PLAIN, 12));
		lblX.setBounds(10, 55, 46, 33);
		panel_1.add(lblX);
		
		JLabel lblX_1 = new JLabel("x[2]= ");
		lblX_1.setFont(new Font("Tahoma", Font.PLAIN, 12));
		lblX_1.setBounds(10, 113, 46, 33);
		panel_1.add(lblX_1);
		
		JLabel lblX_2 = new JLabel("x[3]= ");
		lblX_2.setFont(new Font("Tahoma", Font.PLAIN, 12));
		lblX_2.setBounds(10, 170, 46, 33);
		panel_1.add(lblX_2);
		
		x11 = new JTextField();
		x11.setText("2");
		x11.setFont(new Font("Tahoma", Font.PLAIN, 12));
		x11.setColumns(10);
		x11.setBounds(59, 62, 46, 20);
		panel_1.add(x11);
		
		x12 = new JTextField();
		x12.setText("1");
		x12.setFont(new Font("Tahoma", Font.PLAIN, 12));
		x12.setColumns(10);
		x12.setBounds(59, 120, 46, 20);
		panel_1.add(x12);
		
		x13 = new JTextField();
		x13.setText("-1");
		x13.setFont(new Font("Tahoma", Font.PLAIN, 12));
		x13.setColumns(10);
		x13.setBounds(59, 177, 46, 20);
		panel_1.add(x13);
		
		JLabel sddss = new JLabel("d = ");
		sddss.setFont(new Font("Tahoma", Font.PLAIN, 12));
		sddss.setBounds(10, 214, 46, 33);
		panel_1.add(sddss);
		
		d1 = new JTextField();
		d1.setText("-1");
		d1.setFont(new Font("Tahoma", Font.PLAIN, 12));
		d1.setColumns(10);
		d1.setBounds(59, 221, 46, 20);
		panel_1.add(d1);
		
		JPanel panel_2 = new JPanel();
		panel_2.setLayout(null);
		panel_2.setBounds(248, 0, 115, 256);
		contentPane.add(panel_2);
		
		JLabel lblIntrarea_1 = new JLabel("Intrarea 2:");
		lblIntrarea_1.setFont(new Font("Tahoma", Font.PLAIN, 12));
		lblIntrarea_1.setBounds(10, 11, 95, 33);
		panel_2.add(lblIntrarea_1);
		
		JLabel lblX_3 = new JLabel("x[1]= ");
		lblX_3.setFont(new Font("Tahoma", Font.PLAIN, 12));
		lblX_3.setBounds(10, 55, 46, 33);
		panel_2.add(lblX_3);
		
		JLabel lblX_4 = new JLabel("x2]= ");
		lblX_4.setFont(new Font("Tahoma", Font.PLAIN, 12));
		lblX_4.setBounds(10, 113, 46, 33);
		panel_2.add(lblX_4);
		
		JLabel lblX_5 = new JLabel("x[3]= ");
		lblX_5.setFont(new Font("Tahoma", Font.PLAIN, 12));
		lblX_5.setBounds(10, 170, 46, 33);
		panel_2.add(lblX_5);
		
		x21 = new JTextField();
		x21.setText("0");
		x21.setFont(new Font("Tahoma", Font.PLAIN, 12));
		x21.setColumns(10);
		x21.setBounds(59, 62, 46, 20);
		panel_2.add(x21);
		
		x22 = new JTextField();
		x22.setText("-1");
		x22.setFont(new Font("Tahoma", Font.PLAIN, 12));
		x22.setColumns(10);
		x22.setBounds(59, 120, 46, 20);
		panel_2.add(x22);
		
		x23 = new JTextField();
		x23.setText("-1");
		x23.setFont(new Font("Tahoma", Font.PLAIN, 12));
		x23.setColumns(10);
		x23.setBounds(59, 177, 46, 20);
		panel_2.add(x23);
		
		JLabel lblD_1 = new JLabel("d = ");
		lblD_1.setFont(new Font("Tahoma", Font.PLAIN, 12));
		lblD_1.setBounds(10, 212, 46, 33);
		panel_2.add(lblD_1);
		
		d2 = new JTextField();
		d2.setText("1");
		d2.setFont(new Font("Tahoma", Font.PLAIN, 12));
		d2.setColumns(10);
		d2.setBounds(59, 219, 46, 20);
		panel_2.add(d2);
		
		JPanel panel_3 = new JPanel();
		panel_3.setBounds(0, 280, 357, 173);
		contentPane.add(panel_3);
		panel_3.setLayout(null);
		
		JButton btn = new JButton("RULEAZA");
		btn.setForeground(Color.RED);
		btn.setFont(new Font("Tahoma", Font.PLAIN, 14));
		btn.setBounds(115, 11, 111, 39);
		panel_3.add(btn);
		
		JScrollPane scrollPane = new JScrollPane();
		scrollPane.setHorizontalScrollBarPolicy(ScrollPaneConstants.HORIZONTAL_SCROLLBAR_NEVER);
		scrollPane.setBounds(10, 58, 337, 104);
		panel_3.add(scrollPane);
		
		afisare = new JTextPane();
		scrollPane.setViewportView(afisare);
		afisare.setEditable(false);
		afisare.setFont(new Font("Tahoma", Font.PLAIN, 12));
		
		btn.addActionListener(this);		
	}


	public void actionPerformed(ActionEvent e) {
	
		try
		{
		double y1[] = {Double.parseDouble(x11.getText()), Double.parseDouble(x12.getText()), Double.parseDouble(x13.getText())};
		IntrarePerceptron x1 = new IntrarePerceptron(y1, Double.parseDouble(d1.getText()));
		
		
		double y2[] = {Double.parseDouble(x21.getText()), Double.parseDouble(x22.getText()), Double.parseDouble(x23.getText())};
		IntrarePerceptron x2 = new IntrarePerceptron(y2, Double.parseDouble(d2.getText()));
		
		
		double v[] = {Double.parseDouble(w1.getText()), Double.parseDouble(w2.getText()), Double.parseDouble(w3.getText())};
		Perceptron  w= new Perceptron(v, Double.parseDouble(c.getText()));
		
		Perceptrare perceptrare = new Perceptrare (w,x1,x2, afisare);
		perceptrare.start();
		}
		catch(Exception exc)
		{
			JOptionPane.showMessageDialog(this,"Ai introdus valorile gresit!", "Error",JOptionPane.ERROR_MESSAGE);
		}
	}
}
