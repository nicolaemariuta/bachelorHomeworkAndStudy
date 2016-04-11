package serverDatagrame;

import java.io.IOException;
import java.net.*;

public class DatagramServer
{
	public static final int PORT = 8250;
	private DatagramSocket socket = null;
	DatagramPacket cerere, raspuns = null;

	public void start() throws IOException
	{
		socket = new DatagramSocket(PORT);
	
		try
		{
			while (true)
			{
				// declaram pachetul in care va fi receptionata cererea
				byte[] buf = new byte[256];
				cerere = new DatagramPacket(buf, buf.length);
				
				System.out.println("Asteptam un pachet .......");
				socket.receive(cerere);
				
				// aflam adresa si portul de la care vine cererea
				InetAddress adresa = cerere.getAddress();
				int port = cerere.getPort();
		
				// construim raspunsul
				String mesaj = new String(cerere.getData());
			//	buf = mesaj.getBytes();
				System.out.println("Am primit ceva !!! "+mesaj);
				
				// trimitem un pachet cu raspunsul catre client 
		//		raspuns = new DatagramPacket (buf, buf.length, adresa, port);
		//		socket.send(raspuns);
				
			}
		}
		
		finally
		{
			if (socket != null)
			{
				socket.close();
			}
		}
	}
	
	public static void main(String[] args) throws IOException 
	{
		new DatagramServer().start();		
	}
}
