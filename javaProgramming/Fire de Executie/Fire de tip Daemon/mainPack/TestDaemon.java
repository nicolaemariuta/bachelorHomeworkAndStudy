package mainPack;

import java.io.IOException;

public class TestDaemon 
{
	public static void main(String[] args) throws IOException 
	{
		Thread t = new Thread(new Beeper());
		t.setDaemon(true);
		t.start();
		
		System.out.println("Apasati Enter.... ");
		System.in.read();
		
		
		// "Daemonu" s-a terminat automat la terminarea aplicatiei
		
		
		
	}

}
