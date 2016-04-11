package trimitereaMesajCatreGrup;

import java.io.IOException;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;

public class MulticastSend
{
	public static void main(String[] args) throws IOException
	{
		InetAddress group = InetAddress.getByName("230.0.0.1");
		int port = 4444;
		byte[] buf;
		DatagramPacket packet = null;
		
		
		// cream un socket cu un numar oarecare
		DatagramSocket socket = new DatagramSocket(0);
		try
		{
			//trimitem un packet catre toti clinetii din grup
			buf = (new String("Salut grup!")).getBytes();
			packet = new DatagramPacket(buf, buf.length, group, port);
			socket.send(packet);
			
		}
		finally
		{
			socket.close();
		}
		
		
	}

}
