package mainPack;

import javafx.application.Application;
import javafx.event.ActionEvent;
import javafx.event.EventHandler;
import javafx.geometry.Insets;
import javafx.geometry.Pos;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.PasswordField;
import javafx.scene.control.TextField;
import javafx.scene.layout.GridPane;
import javafx.scene.layout.HBox;
import javafx.scene.paint.Color;
import javafx.scene.text.Font;
import javafx.scene.text.FontWeight;
import javafx.scene.text.Text;
import javafx.stage.Stage;

public class LoginForm extends Application

{

	public static void main(String[] args) {
		launch(args);
	}
	
	
	@Override
	public void start(Stage primaryStage) throws Exception {
		primaryStage.setTitle("JavaFX Welcome");
		
		//GridPane with Gap and Padding Properties
		
		GridPane grid = new GridPane();
		grid.setAlignment(Pos.CENTER);
		grid.setHgap(10);
		grid.setVgap(10);
		grid.setPadding(new Insets(25,25,25,25));
		
		//Add Text, Labels, and Text Fields
		Text scenetitle = new Text("Welcome");
		scenetitle.setFont(Font.font("Tahoma", FontWeight.NORMAL,20));
	//	scenetitle.setId("welcometext");
		grid.add(scenetitle, 0, 0, 2, 1);
		
		Label userName = new Label("User Name:"); 
		grid.add(userName, 0, 1);
		
		TextField userTextField = new TextField();
		grid.add(userTextField, 1, 1);
		
		Label pw = new Label("Password:");
		grid.add(pw, 0, 2);
		
		PasswordField pwBox = new PasswordField();
		grid.add(pwBox, 1, 2);
		
		//Add a Button and Text
		Button btn = new Button("Sign in");
		HBox hbBtn = new HBox(10);	
		hbBtn.setAlignment(Pos.BOTTOM_RIGHT);
		hbBtn.getChildren().add(btn);
		grid.add(hbBtn,1,4);
		
		final Text actionTarget = new Text();
	//	actionTarget.setId("actionTarget");
		grid.add(actionTarget, 1, 6);
		
		
		//Add Code to Handle an Event
		btn.setOnAction(new EventHandler<ActionEvent>() {
			public void handle(ActionEvent e)
			{
				
				actionTarget.setFill(Color.FIREBRICK);
				actionTarget.setText("Sign in button pressed");
				
				
			}
		});
		
		
		
		
		Scene scene = new Scene(grid,300,275);
		primaryStage.setScene(scene);
		
		
		
		
		primaryStage.show();
		scene.getStylesheets().add(LoginForm.class.getResource("Login.css").toExternalForm());
		
	}

}
