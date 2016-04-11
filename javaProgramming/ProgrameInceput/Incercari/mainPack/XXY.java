package mainPack;

import java.awt.BorderLayout;
import java.awt.EventQueue;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import javax.swing.JButton;
import javax.swing.JLabel;
import javax.swing.JTextArea;

public class XXY extends JFrame implements ActionListener {

	private JPanel contentPane;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					XXY frame = new XXY("GGGGGGG");
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
	
	JTextArea textArea;
	JButton btn;
	
	public XXY(String temp) {
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 450, 300);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		btn = new JButton("New button");
		btn.setBounds(10, 216, 414, 35);
		contentPane.add(btn);
		
		
		
		textArea = new JTextArea();
		textArea.setBounds(10, 11, 414, 194);
		contentPane.add(textArea);
		textArea.setEditable(false);
		textArea.setText(temp);
		
		
		btn.addActionListener(this);
	}

	@Override
	public void actionPerformed(ActionEvent arg0) {
		
	
		
	}
}
