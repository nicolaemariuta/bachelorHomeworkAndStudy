package mainPack;

import java.util.ArrayList;

import youtubeVideo.RetrieveVideos;
import youtubeVideo.YouTubeVideo;

import javafx.application.Platform;
import javafx.scene.web.WebEngine;
import javafx.scene.web.WebView;
import javafx.stage.Stage;

public class RulareMelodii extends Thread {
	
	
	

	int contor = 0;
	boolean terminat;
	
	FereastraPrincipala fp;

	
	

	public RulareMelodii( FereastraPrincipala fp,
			boolean terminat) {
		
		
		this.fp = fp;
		this.terminat = terminat;
	}

	public void run()
	{
		
			
			System.out.println("Numar melodie:" + contor);
			contor++;
			
			
			while(!terminat)
			{
	//			System.out.println("Astept");
          
        	   try {

				Thread.sleep(1000);
				
			} catch (InterruptedException e) {
			
				e.printStackTrace();
			}
        	   System.out.println(terminat);
        	
			
			}  
			
			
//			terminat = false;
			
			
        	   
			Platform.runLater(new Runnable() {
		        @Override
		        public void run() {
		        	fp.terminat = false;
		        	fp.rulareMelodie();
		        }
		   });  
   
    }
     
}
