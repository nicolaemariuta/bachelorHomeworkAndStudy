package mainPack;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.PipedInputStream;
import java.io.PipedOutputStream;

public class TestPipes
{
	public static void main(String[] args) 
	{
		PipedOutputStream pipeOut =  new PipedOutputStream();
		PipedInputStream pipeIn = new PipedInputStream();
		
		DataOutputStream out = new DataOutputStream(pipeOut);
		DataInputStream in = new DataInputStream(pipeIn);
		
		Producator2 p1 = new Producator2(out);
		Consumator2 c1 = new Consumator2(in);
		
		p1.start();
		c1.start();
		
		
	}

}
