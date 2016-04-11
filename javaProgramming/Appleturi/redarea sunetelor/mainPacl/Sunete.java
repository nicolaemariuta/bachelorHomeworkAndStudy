package mainPacl;

import java.applet.*;
import java.awt.*;
import java.awt.event.*;

public class Sunete extends Applet implements ActionListener
{
	Button play = new Button("Play");
	Button loop = new Button ("Loop");
	Button stop = new Button ("Stop");
	AudioClip clip = null;
	
	
	public void init()
	{
		// fisierul cu sunetul trebuie sa fie in acelasi director cu appletul
		clip = getAudioClip(getCodeBase(), "die.au");
		add(play);
		add(loop);
		add(stop);
		
		play.addActionListener(this);
		loop.addActionListener(this);
		stop.addActionListener(this);
	}


	public void actionPerformed(ActionEvent e)
	
	{
		Object src = e.getSource();
		if (src == play)
		{
			clip.play();
		}
		if (src == loop)
		{
			clip.loop();
		}
		if (src == stop)
		{
			clip.stop();
		}
		
		
	}

}
