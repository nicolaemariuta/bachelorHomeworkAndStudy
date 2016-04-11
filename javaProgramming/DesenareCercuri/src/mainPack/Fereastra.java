package mainPack;

import java.awt.*;
import java . awt. event .*;

public class Fereastra extends Frame {
	
	Fereastra (String titlu)
	{
		super(titlu);
		setSize(400,400);
		this.addWindowListener(new WindowAdapter(){  public void windowsClosing(WindowEvent e){	System.exit(0);}	});
		final Label label = new Label("",Label.CENTER);
		label.setBackground(Color.YELLOW);
		add(label, BorderLayout.NORTH);
		
		this.addMouseListener(new MouseAdapter(){
			public void mouseClicked(MouseEvent e)
			{
				label.setText("Click.....");
				Graphics g = Fereastra.this.getGraphics();
				g.setColor(Color.BLUE);
				int raza = (int)(Math.random()*50);
				
				g. fillOval(e.getX(),e.getY(), raza, raza);
				
			}
			
		});
		
		this.addMouseMotionListener(new MouseMotionAdapter(){
			public void mouseMoved(MouseEvent e)
			{
				Graphics h = Fereastra.this.getGraphics();
				h.setColor(Color.RED);
				h.drawOval(e.getX(), e.getY(), 2, 2);
			}});
		this.addKeyListener(new KeyAdapter()
		{
			public void keyTyped(KeyEvent e)
			{
				label.setText("Ati apasat "+e.getKeyChar()+" ");
			}
			
		});	
			
		this.addWindowListener(new WindowAdapter()
		{
			public void windowClosing(WindowEvent e)
			{
				dispose();
			}
	});
			
			
		
		
		
	}

}
