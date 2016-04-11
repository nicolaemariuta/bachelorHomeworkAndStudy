package clientBazatConexiuni;

import java.io.*;
import java.net.*;

public class SimpleClient
{
	public static void main(String[] args) throws IOException
	{
		// adresa Ip a serverului
		String adresaServer = "79.116.199.144";
		
		// portul la care serverul ofera serviciul
		int PORT = 8100;
		
		Socket socket = null;
		PrintWriter out = null;
		BufferedReader in = null;
		
		String cerere, raspuns;
		
		try
		{
			socket = new Socket (adresaServer,PORT);
			out = new PrintWriter(socket.getOutputStream(), true);
			in = new BufferedReader (new InputStreamReader (socket.getInputStream()));
			
			//trimitem o cerere la server
			cerere = "Duke";
			out.println(cerere);
			
			// asteptam raspuns de la server ("Hello Duke!")
			
			raspuns = in.readLine();
			System.out.println(raspuns);
			
			
			
		}
		catch (UnknownHostException e)
		{
			System.out.println("Serverul nu poate fi gasit \n"+ e);
			System.exit(1);
		}
		finally
		{
			if (out != null)
			{
				out.close();
				
			}
			if (in != null)
			{
				in.close();
			}
			if (socket!=null)
			{
				socket.close();
			}
		}
		
	}

}


