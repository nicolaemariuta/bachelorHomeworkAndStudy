package mainPack;

import javafx.application.Application;
import static javafx.application.Application.launch;
import javafx.scene.Scene;
import javafx.scene.layout.StackPane;
import javafx.scene.web.WebEngine;
import javafx.scene.web.WebView;
import javafx.stage.Stage;
 
/**
 * @web http://java-buddy.blogspot.com/
 */
public class JavaFX_WebViewYoutube extends Application {
 
    String content_Url = "<iframe width=\"560\" height=\"315\" src=\"http://www.youtube.com/v/iAkI4mMSJSY&feature=youtube_gdata_player\" frameborder=\"0\" allowfullscreen></iframe>";
    
    
    String content_Url2 = 
    		"<html>"
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
    				+   "       videoId: 'iAkI4mMSJSY',    "
    				+   "       events: {   "
    				+   "         'onReady': onPlayerReady,     "
    				+   "         'onStateChange': onPlayerStateChange     "
    				+   "       }   "
    				+   "     });   "
    				+   "   } "
    				+	"  player.loadVideoByUrl(5, 0, small;  "
    				+   "    function onPlayerReady(event) {   "
    				+   "     event.target.playVideo();    "
    				+   "   }    "
    				+   "   var done = false;   "
    				+   "   function onPlayerStateChange(event) {     "
    				+   "     if (event.data == YT.PlayerState.PLAYING && !done) {    "
    				+   "       setTimeout(stopVideo, 6000);   "
    				+   "       done = true;   "
    				+   "     }     "
    				+   "   }    "
    				+   "   function stopVideo() {    "
    				+   "     player.stopVideo();   "
    				+   "   }  "
    				+   " </script>  "
    				+   "  </body>  "
    				+ "</html>  ";
    
    
    static boolean finished;
 
    @Override
    public void start(Stage primaryStage) {
        WebView webView = new WebView();
        WebEngine webEngine = webView.getEngine();
        webEngine.loadContent(content_Url2);
        
        
//        webEngine.executeScript(arg0);
 
        StackPane root = new StackPane();
        root.getChildren().add(webView);
 
        Scene scene = new Scene(root, 300, 250);
 
        primaryStage.setTitle("http://java-buddy.blogspot.com/");
        primaryStage.setScene(scene);
        primaryStage.show();
    }
 
    public static void main(String[] args) {
        launch(args);
        
        while(!finished)
        {
        	
        }
        
        System.out.println("Video ended");
    }
    
    
    
    
    
    public void change()
    {
    	finished = true;
    }
    
}