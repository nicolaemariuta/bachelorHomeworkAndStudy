package mainPack;

import java.awt.*;

public class PanelTry {
	
	public static void main(String[] args) {
		Frame f = new Frame ("Test Panel");
		
		
		Panel panel1 = new Panel ();
		panel1.setLayout(new GridLayout(1,3));
		panel1.add(new Label("Text:"));
		panel1.add(new TextField("", 30));
		panel1.add(new Button("Apasaaaaa!"));
		
		Panel panel2 = new Panel ();
		panel2.setLayout(new BorderLayout());
		panel2.add(new Button("Activeaza"),BorderLayout.EAST);
		panel2.add(new Button("Incarca"), BorderLayout.WEST);
		panel2.add(new Button("Trage"),BorderLayout.CENTER);
		
		
		Panel intro = new Panel();
		intro.setLayout(new FlowLayout());
		intro.add(new TextField("Panoul de control",100));
		intro.add(new Button("Launch nuke bomb1"));
		intro.add(new Button("Launch nuke bomb2"));
		intro.add(new Button("Launch nuke bomb3"));
		
		
		f.add(panel1, BorderLayout.NORTH);
		f.add(panel2, BorderLayout.CENTER);
		f.add(intro, BorderLayout.EAST);
		
		f.pack();
		f.show();
		
	}

}
