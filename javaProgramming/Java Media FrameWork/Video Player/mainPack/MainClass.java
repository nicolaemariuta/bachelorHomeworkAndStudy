package mainPack;

import java.io.IOException;

import javax.media.CannotRealizeException;
import javax.media.MediaLocator;
import javax.media.NoPlayerException;

public class MainClass
{
	public static void main(String[] args) 
	{
		MediaLocator locator = new MediaLocator("poze 071.MPG");
		try {
			MediaPlayerFrame f = new MediaPlayerFrame(locator);
			f.show();
		}
		catch (Exception e)
		{
			System.out.println(e);
		}
		
	}

}
