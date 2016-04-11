package mainPack;

import javafx.application.Application;
import javafx.collections.ObservableList;
import javafx.geometry.VPos;
import javafx.scene.Group;
import javafx.scene.Node;
import javafx.scene.Scene;
import javafx.scene.effect.*;
import javafx.scene.paint.Color;
import javafx.scene.shape.Circle;
import javafx.scene.shape.Rectangle;
import javafx.scene.text.Font;
import javafx.scene.text.FontWeight;
import javafx.scene.text.Text;
import javafx.stage.Stage;

public class HelloEffects extends Application {

	Stage stage;
	Scene scene;
	
	
	
	
	@Override
	public void start(Stage stage) throws Exception {
		stage.show();
		scene = new Scene(new Group(), 840, 680);
		ObservableList<Node> content = ((Group)scene.getRoot()).getChildren();
		
		
		//BlendMode
		content.add(blendMode());
		//Bloom
		content.add(bloom());
		//BoxBlur
		content.add(boxBlur());
		//MotionBlur
		content.add(motionBlur());
		//GaussianBlur
		content.add(gaussianBlur());
		//DropShadow
		content.add(dropShadow());
		//InnerShadpow
		content.add(innerShadow());
		//Reflection
		content.add(reflection());
		
		
		stage.setScene(scene);
		
	}
	
	
	static Node blendMode()
	{
		Group g = new Group();
		Rectangle r = new Rectangle();
		r.setX(590);
		r.setY(50);
		r.setWidth(50);
		r.setHeight(50);
		r.setFill(Color.BLUE);
		
		Circle c = new Circle();
		c.setFill(Color.rgb(255, 0, 0, 0.5f));
		c.setCenterX(590);
		c.setCenterY(50);
		c.setRadius(25);
		
		
		g.setBlendMode(BlendMode.MULTIPLY);
		g.getChildren().add(r);
		g.getChildren().add(c);
		return g;
		
		
	}

	
	static Node bloom()
	{
		Group g = new Group();
		
		Rectangle r = new Rectangle();
		r.setX(10);
		r.setY(10);
		r.setWidth(160);
		r.setHeight(80);
		r.setFill(Color.DARKBLUE);
		
		Text t = new Text();
		t.setText("Bloom!");
		t.setFill(Color.YELLOW);
		t.setFont(Font.font("null", FontWeight.BOLD, 36));
		t.setX(25);
		t.setY(65);
		
		g.setCache(true);
//		g.setEffect(new Bloom());
		Bloom bloom = new Bloom();
		bloom.setThreshold(1.0);
	g.setEffect(bloom);
		g.getChildren().add(r);
		g.getChildren().add(t);
		g.setTranslateX(350);
		return g;
	}
	
	
	static Node boxBlur()
	{
		Text t = new Text();
		t.setText("Blurry Text!");
		t.setFill(Color.RED);
		t.setFont(Font.font("null", FontWeight.BOLD, 36));
		t.setX(10);
		t.setY(40);
		
		BoxBlur bb = new BoxBlur();
		bb.setWidth(10);
		bb.setHeight(6);
		bb.setIterations(3);
		
		t.setEffect(bb);
		t.setTranslateX(300);
		t.setTranslateY(100);
		
		return t;
	}
	
	
	static Node motionBlur()
	{
		Text t = new Text();
		t.setX(20.0f);
		t.setY(80.0f);
		t.setText("Motion Blur");
		t.setFill(Color.RED);
		t.setFont(Font.font("null", FontWeight.BOLD,60));
		
		MotionBlur mb = new MotionBlur();
		mb.setRadius(25.0f);
		mb.setAngle(45.0f);
		
		t.setEffect(mb);
		
		t.setTranslateX(300);
		t.setTranslateY(150);
		
		return t;
		
		
	}
	
	
	static Node gaussianBlur()
	{
		Text t2 = new Text();
		t2.setX(10.0f);
		t2.setY(140.0f);
		t2.setCache(true);
		t2.setText("Gaussian Blur!");
		t2.setFill(Color.RED);
		t2.setFont(Font.font("null", FontWeight.BOLD,36));
		t2.setEffect(new GaussianBlur());
		return t2;
		
	}
	
	static Node dropShadow()
	{
		Group g = new Group();
		
		DropShadow ds = new DropShadow();
		ds.setOffsetY(3.0f);
		ds.setOffsetX(3.0f);
		ds.setColor(Color.GRAY);
		
		Text t = new Text();
		t.setEffect(ds);
		t.setCache(true);
		t.setX(20.0f);
		t.setY(70.f);
		t.setFill(Color.RED);
		t.setText("JavaFX drop shadow effect");
		t.setFont(Font.font("null", FontWeight.BOLD, 32));
		
		
		DropShadow ds1 = new DropShadow();
		ds1.setOffsetY(4.0f);
		ds1.setOffsetX(4.0f);
		ds1.setColor(Color.CORAL);
		
		Circle c = new Circle();
		c.setEffect(ds1);
		c.setCenterX(50.0f);
		c.setCenterY(325.0f);
		c.setRadius(30.0f);
		c.setFill(Color.RED);
		c.setCache(true);
		
		
		g.getChildren().add(t);
		g.getChildren().add(c);
		return g;
	}
	
	static Node innerShadow()
	{
		InnerShadow is = new InnerShadow();
		is.setOffsetX(2.0f);
		is.setOffsetY(2.0f);
		
		Text t = new Text();
		t.setEffect(is);
		t.setX(20);
		t.setY(100);
		t.setText("Inner Shadow");
		t.setFill(Color.RED);
		t.setFont(Font.font("null", FontWeight.BOLD, 80));
		
		t.setTranslateX(300);
		t.setTranslateY(300);
		return t;
	}
	
	static Node reflection()
	{
		Text t = new Text();
		t.setX(10.0f);
		t.setY(50.0f);
		t.setCache(true);
		t.setText("Reflection in JavaFX...");
		t.setFill(Color.RED);
		t.setFont(Font.font("null", FontWeight.BOLD, 30));
		
		Reflection r = new Reflection();
		r.setFraction(0.9);
		
		t.setEffect(r);
		
		t.setTranslateY(400);
		return t;
	}
	
	
	public static void main(String[] args) {
		launch(args);
	}
}
