package mainPack;

import java.io.*;

public class MainClass10 

{
	public static void main(String[] args)  
	{
		try
		{
		// pentru Windows
		PrintWriter imp = new PrintWriter(new FileWriter("lpt1"));
		
		// pentru UNIX
		// PrintWriter imp = new PrintWriter(new FileWriter("/dev/lp"));
		
		imp.println("Test imprimanta");
		imp.println("ABCD");
		imp.close();
		}
		
		catch (Exception e)
		{
			System.out.println(e);
		}
		
		
		
		
	}

}
