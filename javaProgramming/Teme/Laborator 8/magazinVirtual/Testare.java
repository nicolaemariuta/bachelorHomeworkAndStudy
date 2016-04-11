package magazinVirtual;

import java.util.Stack;

public class Testare


{
	public static void main(String[] args) 
	{
	//	Client ion = Client.salvareCLient();
	//	System.out.println(ion.toString());
	//	ion.salvareFisier("C:\\Documents and Settings\\user_2\\Desktop\\Magazin.txt");
		
		Stack<Client> clienti = Client.citireClienti("C:\\Documents and Settings\\user_2\\Desktop\\Magazin.txt");
		Client.afisareClienti(clienti);
	}

}
