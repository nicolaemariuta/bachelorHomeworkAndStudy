package mainPack;


import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

import netscape.javascript.JSObject;



import uk.ac.shef.wit.simmetrics.similaritymetrics.JaroWinkler;
import youtubeVideo.RetrieveVideos;
import youtubeVideo.YouTubeVideo;

import de.umass.lastfm.Tag;

import javafx.application.Application;
import javafx.beans.value.ChangeListener;
import javafx.beans.value.ObservableValue;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.concurrent.Worker;
import javafx.event.ActionEvent;
import javafx.event.EventHandler;
import javafx.geometry.Rectangle2D;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.ListView;
import javafx.scene.control.TextField;
import javafx.scene.input.MouseButton;
import javafx.scene.input.MouseEvent;
import javafx.scene.layout.Pane;
import javafx.scene.layout.StackPane;
import javafx.scene.layout.VBox;
import javafx.scene.web.WebEngine;
import javafx.scene.web.WebView;
import javafx.stage.Screen;
import javafx.stage.Stage;
import javafx.stage.StageStyle;
import javafx.stage.WindowEvent;

public class FereastraPrincipala extends Application implements Runnable{

	Button btn_update;
	Button btn_search;
	ArrayList<Melodie> lista;
	Stage secondaryStage;
	WebEngine webEngine;
	WebView webView;
	String content_Url;
	
	Melodie curenta;
	
	String titlu;
	
	public boolean deschis = false;
	boolean terminat = false;
	
	final ListView<String> listView = new ListView<>();
	final ObservableList<String> list =FXCollections.observableArrayList ();
	
	ArrayList<Melodie> listaTemp = new ArrayList<Melodie>();
	public ArrayList<String> artistiRecenti = new ArrayList<String>();
	public ArrayList<Melodie> melodiiRecente = new ArrayList<Melodie>();
	public Melodie urmatoarea = null;
	
	RulareMelodii rulare = new RulareMelodii(this, terminat);
	
	
	
	
	public void start(final Stage primaryStage) {
		Screen screen = Screen.getPrimary();
	    Rectangle2D bounds = screen.getVisualBounds();
		lista = Melodie.readFile();
		listaTemp = lista;
		secondaryStage = new Stage(StageStyle.UTILITY);
		
		//creare butoane 
		
		primaryStage.setTitle("Smart Player");
		
		btn_update = new Button();
		btn_update.setText("Update");
		
		btn_search = new Button();
		btn_search.setText("Search");
		
		
		
		btn_update.setOnAction(new EventHandler<ActionEvent>() {
			public void handle(ActionEvent event) {
				lista = Melodie.update();
				Melodie.writeFile(lista);
			}
		});
		
		
		

		
		
		
		
		// adaugare butoane 
		Pane root = new Pane();
		btn_update.setLayoutX(bounds.getWidth()*20/100);
		btn_update.setLayoutY(bounds.getHeight()*8.5/100);
		
		btn_search.setLayoutX(bounds.getWidth()*1.5/100);
		btn_search.setLayoutY(bounds.getHeight()*8.5/100);
		
		
		root.getChildren().add(btn_update);
		root.getChildren().add(btn_search);
		
		// adaugare selectie taguri
		Label tag1 = new Label("Tag 1:");
		Label tag2 = new Label("Tag 2:");
		Label tag3 = new Label("Tag 3:");
		
		
		final TextField text1 = new TextField();
		final TextField text2 = new TextField();
		final TextField text3 = new TextField();
		
		text1.setMaxWidth(bounds.getWidth()*5/100);
		text2.setMaxWidth(bounds.getWidth()*5/100);
		text3.setMaxWidth(bounds.getWidth()*5/100);
		
		
		tag1.setLayoutX(bounds.getWidth()*0.5/100);
		tag1.setLayoutY(bounds.getHeight()*0.5/100);
		
		text1.setLayoutX(bounds.getWidth()*3.5/100);
		text1.setLayoutY(bounds.getHeight()*0.5/100);
		
		
		tag2.setLayoutX(bounds.getWidth()*9.5/100);
		tag2.setLayoutY(bounds.getHeight()*0.5/100);
		
		text2.setLayoutX(bounds.getWidth()*12.5/100);
		text2.setLayoutY(bounds.getHeight()*0.5/100);
		
		tag3.setLayoutX(bounds.getWidth()*18.5/100);
		tag3.setLayoutY(bounds.getHeight()*0.5/100);
		
		text3.setLayoutX(bounds.getWidth()*21.5/100);
		text3.setLayoutY(bounds.getHeight()*0.5/100);
		
		
		
		
		root.getChildren().add(tag1);
		root.getChildren().add(text1);
		root.getChildren().add(tag2);
		root.getChildren().add(text2);
		root.getChildren().add(tag3);
		root.getChildren().add(text3);
		
		// label+textfield search dupa nume
		
		Label search = new Label("Search");
		final TextField text_search = new TextField();
		
		search.setLayoutX(bounds.getWidth()*0.5/100);
		search.setLayoutY(bounds.getHeight()*4.5/100);
		
		text_search.setLayoutX(bounds.getWidth()*3.5/100);
		text_search.setLayoutY(bounds.getHeight()*4.5/100);
		text_search.setMinWidth(bounds.getWidth()*23/100);

		
		
		root.getChildren().add(search);
		root.getChildren().add(text_search);
		
		// creare lista melodii
	
		
/*		
		for(int i =0; i<100; i++)
		{
			list.add(new Integer(i).toString());
		}
		*/
		
		Collections.sort(lista);
		 
		for(Melodie melodie: lista)
		{
			list.add(melodie.toString());
		}
		
		 listView.setItems(list);
		 
		 listView.setMinHeight(bounds.getHeight()*80/100);
		 
		 VBox vBox = new VBox();
		 vBox.getChildren().add(listView);
		 vBox.setLayoutX(bounds.getWidth()*0.5/100);
		 vBox.setLayoutY(bounds.getHeight()*14.5/100);
		 
		 
		 vBox.setMinHeight(bounds.getHeight()*80/100);
		 vBox.setMinWidth (bounds.getWidth()*27/100);
		 
		root.getChildren().add(vBox);
		
		//fereastra principala
	
	    primaryStage.setResizable(false);
	    primaryStage.setX(bounds.getWidth()*72/100);
	    primaryStage.setY(0);
	    
	    primaryStage.setScene(new Scene(root,bounds.getWidth()*27/100,bounds.getHeight()*19/20));
		primaryStage.show();
		
		// fereastra secundara 
		
	//	 content_Url = "<iframe width=\"560\" height=\"315\" src=\"http://www.youtube.com/embed/9bZkp7q19f0\" frameborder=\"0\" allowfullscreen></iframe>";
		 webView = new WebView();
	     webEngine = webView.getEngine();
	     webEngine.loadContent(content_Url);


	     StackPane root2 = new StackPane();
		
		root2.getChildren().add(webView);
		
		
		Scene scene = new Scene(root2, bounds.getWidth()*32/100, bounds.getHeight()*33/100);
		secondaryStage.setScene(scene);
		secondaryStage.setX(0);
		secondaryStage.setY(0);

		secondaryStage.setOnHiding(new EventHandler<WindowEvent>()
				{

					
					public void handle(WindowEvent arg0) {
					deschis = false;
						
					}
			
				});
		
		
		// ascultare buton search
		btn_search.setOnAction(new EventHandler<ActionEvent>() {
			public void handle(ActionEvent event) {
				
				Collection<Tag> topTags = Tag.getTopTags("b958bdc1633a31eb1dcaf9fd085d9940");
				
				String tag1= text1.getText();
				String tag2= text2.getText();
				String tag3= text3.getText();
				String nume = text_search.getText();
			
				JaroWinkler algorithm = new JaroWinkler();
				
				
				
				listaTemp = new ArrayList<Melodie>();
				
				for(Melodie melodie : lista)
				{
					if(tag1.length()<3 || melodie.taguri.contains(tag1))
					{
						if(tag2.length()<3 || melodie.taguri.contains(tag2))
						{
							if(tag3.length()<3 || melodie.taguri.contains(tag3))
							{
								if(nume.length()==0 || ( nume.length()>3 &&  melodie.toString().contains(nume)))
								{
									listaTemp.add(melodie);
								}
							}
						}
					}
					
				
				}
				
				System.out.println(listaTemp.size());
				
				list.clear();
				for(Melodie melodie: listaTemp)
				{
					list.add(melodie.toString());
				}
				
				 listView.setItems(list);
				 
				
			
			}
		});
		

		
		// selectie listView
		 listView.setOnMouseClicked(new EventHandler<MouseEvent>(){
			 
	          @Override
	          public void handle(MouseEvent mouseEvent) {
	        	  
	        	  if(mouseEvent.getButton().equals(MouseButton.PRIMARY)){
	                  if(mouseEvent.getClickCount() == 2){
	                	  
	              titlu = "" + listView.getSelectionModel().getSelectedItems();
	              titlu = titlu.substring(1, titlu.length()-1);
	              titlu.replace("-->", " ");
	              
	            
	              
	              
	              
	           int index = listView.getSelectionModel().getSelectedIndex();
	              
	           System.out.println("^^" + lista.get(index).toString());
	           curenta = listaTemp.get(index);
	           
	           if(artistiRecenti.size() == 5)
	      		{
	      			artistiRecenti.remove(0);
	      		}
	      		artistiRecenti.add(curenta.getArtist());
	      		
	      		if(melodiiRecente.size() == 100)
	      		{
	      			melodiiRecente.remove(0);
	      		}
	      		melodiiRecente.add(curenta);
	           
	           
	           
	           
	           rulareMelodie();  
	           
	                  }
	              }
	        	
	          }
	 
	            });
		 
		try{ 
		 
		   webEngine.getLoadWorker().stateProperty().addListener(new ChangeListener<Worker.State>() {
	             

				@Override
				public void changed(
						ObservableValue<? extends javafx.concurrent.Worker.State> observable,
						javafx.concurrent.Worker.State oldValue,
						javafx.concurrent.Worker.State t1) {
					 if (t1 == Worker.State.SUCCEEDED) {
	                        JSObject window = (JSObject) webEngine.executeScript("window");
	                        window.setMember("app", new JavaApp());
	                    }
					
				}
           });
           
       } catch (Exception e) {
           e.printStackTrace();
       }
		
		 
		
		
	}
	
	
	
	
	
	public void rulareMelodie()
	{
            
           Melodie next =  Melodie.getNext(curenta,  lista,  artistiRecenti,   melodiiRecente );
            
           String titlu = curenta.getArtist() + " " + curenta.getNumeMelodie();
         
           YouTubeVideo video = null;
           
   		try {
   			video = RetrieveVideos.retrieveVideo(titlu);
   		} catch (Exception e) {
   			// TODO Auto-generated catch block
   			e.printStackTrace();
   		}
   		
   		
   		
           String content_Url = video.getWebPlayerUrl();
      	  
      	  
            
            System.out.println("Urmatoarea melodie" +next.toString());
      	  
      	  
            // deschidere fereastra  	  
          
      	 
              System.out.println("Content url: " + content_Url);	  
              
              
              
      //      content_Url = s1+ content_Url  + s2;
         	  
              String s1 = "<iframe width=\"560\" height=\"315\" src=\"";
              String s2 = "\"frameborder=\"0\" allowfullscreen></iframe>";
              
              
//              content_Url.replace("&feature=youtube_gdata_player", "");
              
//                  content_Url = s1+content_Url+s2;
              
//                   content_Url = "<iframe width=\"560\" height=\"315\" src=\"http://www.youtube.com/embed/g9x2MdPmLms\" frameborder=\"0\" allowfullscreen></iframe>";
              
              
              
              content_Url = 	"<html>"
      				+  "<body>"
      				+  "  <!-- 1. The <iframe> (and video player) will replace this <div> tag. -->  "
      				+  "  <div id=\"player\"></div>  "

      				+   " <script> "
      				+   "   var tag = document.createElement('script');  "
      				+   "   tag.src = \"https://www.youtube.com/iframe_api\";   "
      				+   "   var firstScriptTag = document.getElementsByTagName('script')[0];  "
      				+   "   firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);  "

      				+   "   var player;     "
      				+   "   function onYouTubeIframeAPIReady() {       "
      				+   "     player = new YT.Player('player', {    "
      				+   "       height: '390',       "
      				+   "       width: '640',    "
      				+   "       videoId: '"+video.getID()+"',    "
      				+   "       events: {   "
      				+   "         'onReady': onPlayerReady,     "
      				+   "         'onStateChange': onPlayerStateChange     "
      				+   "       }   "
      				+   "     });   "
      				+   "   } "
      			//	+	"  player.loadVideoByUrl(5, 0, small;  "
      				+   "    function onPlayerReady(event) {   "
      				+   "     event.target.playVideo();    "
      				+   "   }    "
      				+   "   var done = false;   "
      				+   "   function onPlayerStateChange(event) {     "
      				+   "     if (event.data == YT.PlayerState.ENDED && !done) {    "
      				+   "       app.onClick();   "
      				+   "       done = true;   "
      				+   "     }     "
      				+   "   }    "
      				+   "   function stopVideo() {    "
      				+   "     player.stopVideo();   "
      				+   "   }  "
      				+   " </script>  "
      				+   "  </body>  "
      				+ "</html>  ";
              
              
           
              
              if(secondaryStage.isShowing())
              {
              	
              	webEngine.loadContent(content_Url);
//              	webView.getEngine().load(content_Url);
              	secondaryStage.setTitle(titlu);
              }
              else
              {
              	deschis = true;
              	webEngine.loadContent(content_Url);
//              webView.getEngine().load(content_Url);
              	secondaryStage.show();
              	secondaryStage.setTitle(titlu);
              }
              
              
             
              
        
              
            curenta = next;
    	         
            System.out.println("&");
              
              
              
              
       	   if(deschis = false)
    	   {
       		   webEngine.reload();
    		}
       	   
       	   else
       	   {
       		   rulare.stop();
       		   rulare = new RulareMelodii(this, terminat);
       		   System.out.println(terminat);
       		   rulare.start();
       		}
	
		
	}
	


	


	public static void main(String[] args) {
		launch(args);
	}


	@Override
	public void run() {
		// TODO Auto-generated method stub
		
	}
	
	  public  class JavaApp {

	        public void onClick() {
	        	
	        	rulare.terminat = true;
	        	terminat = true;
	            System.out.println("Clicked");
	        }
	    }
	
	
	
}
