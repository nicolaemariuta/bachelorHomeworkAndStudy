package mainPack;

import java.io.File;
import java.io.IOException;
import java.net.URL;

import javax.media.CannotRealizeException;
import javax.media.Manager;
import javax.media.NoPlayerException;
import javax.media.Player;


public class SimpleAudioPlayer
{
	private Player audioPlayer = null;
	
	
	public SimpleAudioPlayer (URL url) throws IOException, NoPlayerException, CannotRealizeException
	{
		audioPlayer = Manager.createRealizedPlayer(url);		
	}
	public SimpleAudioPlayer (File file) throws IOException, NoPlayerException, CannotRealizeException
	{
		this(file.toURL());
	}
	
	public void play()
	{
		audioPlayer.start();
	}
	public void stop()
	{
		audioPlayer.stop();
		audioPlayer.close();
	}

}
