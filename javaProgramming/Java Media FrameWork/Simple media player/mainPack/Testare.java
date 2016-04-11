package mainPack;

import java.io.File;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;

import javax.media.CannotRealizeException;
import javax.media.NoPlayerException;

public class Testare
{
	public static void main(String[] args) 
	{
		try {
			File file = new File("C:\\Users\\Public\\Music\\Sample Music\\Sleep Away.mp3");
			SimpleAudioPlayer player = new SimpleAudioPlayer (file);
			player.play();
			player.wait();
			player.stop();
		}
		catch (Exception e)
		{
			
			System.out.println(e);
		}
		
	}

}
