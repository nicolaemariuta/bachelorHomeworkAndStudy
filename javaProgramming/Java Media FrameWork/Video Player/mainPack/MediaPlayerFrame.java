package mainPack;

import java.awt.BorderLayout;
import java.awt.Component;
import java.io.File;
import java.io.IOException;
import java.net.URL;

import javax.media.*;
import javax.swing.*;

public class MediaPlayerFrame extends JFrame 
{
	private Player videoPlayer = null;



	
	
	
	public MediaPlayerFrame (MediaLocator locator) throws IOException, NoPlayerException, CannotRealizeException
	{
		 setLayout( new BorderLayout() ); // use a BorderLayout
		  
       	 // Use lightweight components for Swing compatibility
 	 Manager.setHint( Manager.LIGHTWEIGHT_RENDERER, true );
         
      	 try
         	 {
            	 // create a player to play the media specified in the URL
            	 Player mediaPlayer = Manager.createRealizedPlayer( locator );
  
            	 // get the components for the video and the playback controls
           	 Component video = mediaPlayer.getVisualComponent();
            	Component controls = mediaPlayer.getControlPanelComponent();
           
           	 if ( video != null )
               	 add( video, BorderLayout.CENTER ); // add video component
   
            	 if ( controls != null )
               	 add( controls, BorderLayout.SOUTH ); // add controls
   
            	 mediaPlayer.start(); // start playing the media clip
         	 } // end try
         	 catch ( NoPlayerException noPlayerException )
        	 {
            	 System.err.println( "No media player found" );
         	 } // end catch
         	 catch ( CannotRealizeException cannotRealizeException )
         	 {
           	 System.err.println( "Could not realize media player" );         	 
         	 } // end catch
         	 catch ( IOException iOException )
	   {
            	 System.err.println( "Error reading from the source" );
         	 } // end catch
	      } 
		
	}
	

