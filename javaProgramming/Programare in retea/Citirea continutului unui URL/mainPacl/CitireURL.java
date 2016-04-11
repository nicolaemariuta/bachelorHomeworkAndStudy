package mainPacl;

import java.io.*;
import java.net.MalformedURLException;
import java.net.URL;

public class CitireURL
{
	public static void main(String[] args) throws IOException
	{
		String adresa = "htp://ebs.ro/ro/centru-media.html/evenimente.html";
		if (args.length >0)
		{
			adresa = args[0];
		}
		BufferedReader br = null;
		
		try
		{
			URL url = new URL(adresa);
			InputStream in = url.openStream();
			br = new BufferedReader(new InputStreamReader(in));
			String linie;
			while ((linie = br.readLine())!=null)
			{
				//afisam linia citita
				System.out.println(linie);
			}
		}
		catch (MalformedURLException E)
		{
			System.out.println("URL invalid! \n"+E);
		}
		finally 
		{
			br.close();
		}
	}

}
