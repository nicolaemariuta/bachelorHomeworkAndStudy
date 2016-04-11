package mainPack;

import java.io.IOException;

public class TestTerminare 
{
	public static void main(String[] args) throws IOException
	{
		NumaraSecunde fir = new NumaraSecunde();
		fir.start();
		
		System.out.println("Apasati tasta enter");
		System.in.read();
		
		//oprim firul de executie
		fir.executie = false;
		System.out.println("Sau scurs "+ fir.sec + " secunde!k'");
		
		
	}

}
