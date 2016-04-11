package clientDatagrame;

import java.io.IOException;
import java.net.*;

public class DatagramClient
{
	public static void main(String[] args) throws IOException 
	{
		// adresa IP si portul la care lucreaza serverul
		InetAddress adresa = InetAddress.getByName("82.137.14.154");
		int port = 8250;
		
		DatagramSocket socket = null;
		DatagramPacket packet = null;
		byte[] buf;
		
		try
		{
			// construim un socket pentru comunicare
			socket = new DatagramSocket();
			
			// contruim si trimitem pachetul cu cererea catre server
			buf = "Duke".getBytes();
			packet = new DatagramPacket (buf, buf.length, adresa, port);
			socket.send(packet);
			
			//asteptam pachetul cu raspunsul de la server
		//	buf = new byte[256];
		//	packet = new DatagramPacket(buf, buf.length);
			
			// afisam raspunsul ("Hello Duke!")
		//	System.out.println(new String(packet.getData()));
			
		}
		
		finally
		{
			if(socket!= null)
			{
				socket.close();
			}
		}
 		
		
	}
	

}
