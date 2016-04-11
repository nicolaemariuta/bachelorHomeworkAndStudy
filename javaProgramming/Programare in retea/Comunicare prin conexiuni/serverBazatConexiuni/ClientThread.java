package serverBazatConexiuni;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.Socket;

public class ClientThread extends Thread
{
	Socket socket = null;
	
	public ClientThread (Socket socket)
	{
		this.socket = socket;
	}
	public void run ()
	{
		// executam solicitarea clientului
		String cerere, raspuns;
		
		
	try
	{
		BufferedReader in = new BufferedReader (new InputStreamReader (socket.getInputStream()));
		// out este un flux de iesire catre client
		PrintWriter out = new PrintWriter (socket.getOutputStream());
		
		// primim cerere de la client
		cerere = in.readLine();
		
		// trimitem raspuns clientului
		raspuns = "Hello " + cerere + "!";
		out.println(raspuns);
		out.flush();
		
	}
	catch (IOException e)
	{
		System.out.println(e);
	}
	
	finally 
	{
		//inchidem socketul pentru clientul curent
		try 
		{
			socket.close();
		}
		catch (IOException e)
		{
			System.out.println("Socketul nu a putu fi inchist \n" + e);
		}
	}
		
	}

}
