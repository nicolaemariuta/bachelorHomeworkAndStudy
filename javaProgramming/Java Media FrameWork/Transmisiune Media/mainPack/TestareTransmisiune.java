package mainPack;

import java.io.File;
import java.io.IOException;
import java.net.MalformedURLException;

import javax.media.Manager;
import javax.media.MediaLocator;
import javax.media.NoDataSourceException;

import com.sun.media.protocol.DataSource;

public class TestareTransmisiune
{
	public static void main(String[] args) throws NoDataSourceException, MalformedURLException, IOException
	{
		File mediaFile = new File ("Get_Outta_Town.mp3");
		javax.media.protocol.DataSource source = Manager.createDataSource(new MediaLocator(mediaFile.toURL()));
	}

}
