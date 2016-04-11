package inregistrareClientGrup;

import java.io.IOException;
import java.net.DatagramPacket;
import java.net.InetAddress;
import java.net.MulticastSocket;
import java.net.UnknownHostException;

public class MulticastClient
{
	
	public static void main(String[] args) throws IOException
	{
		// adresa IP si portul care reprezinta grupul de clienti
		InetAddress group = InetAddress.getByName("230.0.0.1");
		int port = 4444;
		
		MulticastSocket socket = null;
		byte buf[];
		
		try
		{
			// ne alaturam grupului aflat la adresa si portul specificate
			socket = new MulticastSocket(port);
			socket.joinGroup(group);
			
			// asteptam un pachet venit pe adresa grupului
			buf = new byte[256];
			DatagramPacket packet = new DatagramPacket(buf,buf.length);
			
			System.out.println("Asteptam un pachet");
			socket.receive(packet);
			System.out.println(new String(packet.getData()).trim());
			
		}
		finally
		{
			if (socket!=null)
			{
				socket.close();
			}
		}
		
		
	}
	

}
