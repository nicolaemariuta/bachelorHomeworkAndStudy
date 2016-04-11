package serverBazatConexiuni;

import java.io.IOException;
import java.net.*;

public class SimpleServer
{
	// definim portul pe care se gaseste serverul 
	// in afara intervalului (1-1024)
	public static final int  PORT = 8100;
	
	public SimpleServer() throws IOException
	{
		ServerSocket serverSocket = null;
		try
		{
			serverSocket = new ServerSocket (PORT);
			while (true)
			{
				System.out.println("Asteptam un client.........");
				Socket socket = serverSocket.accept();
				
				
				// executam solicitarea clientului intrun fir de executie
				ClientThread t = new ClientThread(socket);
				t.start();
			}
		}
		catch (IOException e )
		{
			System.out.println(e);
		}
		finally
		{
			serverSocket.close();
		}
	}
	
	public static void main(String[] args) throws IOException
	{
		SimpleServer sv = new SimpleServer();
		
	}
	
	

}
