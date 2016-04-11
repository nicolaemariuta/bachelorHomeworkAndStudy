package mainPack;

import javax.swing.plaf.nimbus.State;

import netscape.javascript.JSObject;
import javafx.application.Application;
import javafx.beans.value.ChangeListener;
import javafx.beans.value.ObservableValue;
import javafx.concurrent.Worker;
import javafx.scene.Scene;
import javafx.scene.web.WebEngine;
import javafx.scene.web.WebView;
import javafx.stage.Stage;

public class TestOnClick extends Application {

    @Override
    public void start(Stage stage) throws Exception {
        try {
            final WebView webView = new WebView();
            final WebEngine webEngine = webView.getEngine();

            Scene scene = new Scene(webView);

            stage.setScene(scene);
            stage.setWidth(1200);
            stage.setHeight(600);
            stage.show();

            String webPage = "<html>\n"
                    + "    <body>\n"
                    + "        <a href=\"\" onclick=\"app.onClick()\">Click here</a>\n"
                    + "    </body>\n"
                    + "</html>";

            System.out.println(webPage);

            webView.getEngine().loadContent(webPage);

         
            
            
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

    public static void main(String[] args) {
        launch(args);
    }

    public static class JavaApp {

        public void onClick() {
            System.out.println("Clicked");
        }
    }
}
