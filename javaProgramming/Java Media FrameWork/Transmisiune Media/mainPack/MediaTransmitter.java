package mainPack;

import java.io.File;

import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;

import javax.media.*;
import javax.media.format.AudioFormat;
import javax.media.protocol.ContentDescriptor;


import com.sun.media.protocol.DataSource;

public class MediaTransmitter
{
	private MediaLocator mediaLocator = null;    
	private DataSink dataSink = null;              
	private Processor mediaProcessor = null;   
												
	private static final Format[] FORMATS =  new Format[] { new AudioFormat (AudioFormat.MPEG_RTP) };
	private static final ContentDescriptor CONTENT_DESCRIPTOR = new ContentDescriptor (ContentDescriptor.RAW_RTP); 
	MediaTransmitter () throws NoDataSinkException, NotRealizedError, NoDataSourceException, MalformedURLException, IOException
	{
		dataSink.setOutputLocator(mediaLocator);
		dataSink = Manager.createDataSink(mediaProcessor.getDataOutput(), mediaLocator); 
		
	
		
	}
	public void setMediaLocator (MediaLocator url)
	{
		mediaLocator = url;
	}
	public void setDataSource (DataSource ds) throws NoProcessorException, CannotRealizeException, IOException 
	{
		mediaProcessor = Manager.createRealizedProcessor(new ProcessorModel(ds, FORMATS,  CONTENT_DESCRIPTOR));
	}
	public void startTransmitting () throws SecurityException, IOException
	{
		mediaProcessor.start();
		
		dataSink.open();
		dataSink.start();
	}
	
	public void stopTransmitting() throws IOException
	{
		mediaProcessor.stop();
		
		dataSink.stop();
		dataSink.close();
		
	}
	
	

}
