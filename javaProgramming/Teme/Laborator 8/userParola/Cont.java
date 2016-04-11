package userParola;

import java.io.*;
import java.util.Scanner;
import java.util.Stack;

public class Cont implements Serializable
{
	String user;
	String parola;
	
	Cont (String user, String parola)
	{
		this.user = user;
		this.parola = parola;
	
	}
	
	
	
	public static void verificareCont( String url)
	
	{
		Stack<Cont> conturi = Cont.citireConturi(url);
		Scanner scan = new Scanner(System.in);
		System.out.println("Introduceti datele contului: ");
	
		boolean b = false;
		int contor = 0;
		
		
		
	
		while (b == false)
		{
			
			contor++;
			System.out.println("Userul nu a fost gasit, scrie din nou datele contului");
			Cont cont = Cont.citireCont();
			
			
			for (int i = 0; i < conturi.size(); i++)
			{
				if (cont.user.equals(conturi.get(i).user))
				{
					while (contor<3)
					{
						if(cont.parola.equals(conturi.get(i).parola))
						{
							System.out.println("Ai accesat contul");
							contor = 6;
							b = true;
							break;
							
						}
						else 
							
						{
							System.out.println( "Parola gresita, screti-o din nou !" );
							cont.parola = scan.next();
							contor++;
						}
						
					}
					
					
				
				}
				
				if (contor == 3 || contor == 6)
				{
					if (contor == 3)
					{
						System.out.println("Cont blocat");
					}
					break;
				}
				
			}
			
			if (contor == 3 || contor == 6)
			{
				if (contor == 3)
				{
					System.out.println("Cont blocat");
				}
				break;
			}
			
			
		}
		
		
		
		
		
	}
	
	
	public static Cont citireCont()
	{
		Scanner k = new Scanner(System.in);
		
		System.out.println("Introduceti userul:");
		String user = k.next();
		
		System.out.println("Introduceti parola:");
		String parola = k.next();
		
		return new Cont(user,parola);
		
		
	}
	
	
	
	public void salvareCont (String url)
	{
		String user = this.user;
		String parola = this.parola;
		
		byte[] u = user.getBytes();
		byte[] p = parola.getBytes();
		
		try
		{
			FileOutputStream out = new FileOutputStream(url,true);
			PrintStream ps = new PrintStream(out);
			
			ps.print(user);
			ps.print('\t');
			ps.print(parola);
			ps.println();
			
			out.close();
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		
		
	}
	
	
	public static Stack<Cont> citireConturi(String url)
	{
		Stack<Cont> conturi= new Stack();
		
		try
		{
			BufferedInputStream in = new BufferedInputStream(new FileInputStream(url));
			
			StringBuffer buf = new StringBuffer();
			
			while (true)
			{
				int a = in.read();
				
				
				if (a == -1) { break;}
				char c = (char) a;
				buf.append(c);
			
			}
			
			Scanner scan = new Scanner (buf.toString());
	
			while(scan.hasNext())
			{
				String user = scan.next();
				String parola = scan.next();
				
				Cont cont = new Cont(user,parola);
				conturi.add(new Cont(user,parola));
			
			}
			
			in.close();
			
			
    		
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return conturi;
	}

	
	public String toString()
	{
		return "Nume:" + this.user + "\t Parola:" + this.parola;
	}

}
