package magazinVirtual;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.util.*;

public class Client
{
	String nume;
	String prenume;
	int varsta;
	
	Client (String nume, String prenume, int varsta)
	{
		this.nume = nume;
		this.prenume = prenume;
		this.varsta = varsta;
	}
	
	public boolean verificareMajor()
	{
		if (this.varsta <18)
		{
			return false;
		}
		
		else
		{
			return true;
		}
	}
	
	public static Client salvareCLient ()
	{
		Scanner k = new Scanner(System.in);
		
		System.out.println("Introduceti numele: ");
		String nume = k.next();
		
		System.out.println("Introduceti prenumele: ");
		String prenume = k.next();
		
		System.out.println("Introduceti varsta clientului: ");
		int varsta = k.nextInt();
		
		
		return new Client (nume,prenume,varsta);
		
	}
	
	
	public String toString()
	{
		return "Nume: "+this.nume+ "\t Prenume: " + this.prenume + "\t varsta: "+ this.varsta;
	}
	
	public void salvareFisier(String url)
	{
		try
		{
			BufferedWriter in = new BufferedWriter(new FileWriter (url,true));
			
			in.write(this.nume+"\t");
			in.write(this.prenume+ "\t");
			in.write(String.valueOf(this.varsta)+ "\t");
			in.newLine();
			
			in.close();
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
	}
	
	public static Stack<Client> citireClienti(String url)
	{
		Stack<Client> clienti = new Stack();
		
	
			try
			{
				
				Scanner in = new Scanner ( new File(url));
				while (in.hasNext())
				{
					String nume = in.next();
					String prenume = in.next();
					int varsta = in.nextInt();
					
					clienti.add(new Client(nume,prenume,varsta));
				}
			
				
			}
			catch (Exception e)
			{
				e.printStackTrace();
				
			}
		
		
		return clienti;
	}
	
	
	public static void afisareClienti(Stack<Client> clienti)
	{
		for (int i = 0; i< clienti.size();i++)
		{
			if ( clienti.get(i).verificareMajor())
			{
				System.out.println(clienti.get(i)+ "\t" + "Major");
			}
			else
			{
				System.out.println(clienti.get(i)+ "\t" + "Minor");
			}
			
		}
	}
	

}
