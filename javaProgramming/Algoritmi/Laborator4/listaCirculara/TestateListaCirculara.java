package listaCirculara;

public class TestateListaCirculara
{
	public static void main(String[] args) 
	
	{
		ListaCirculara lista = new ListaCirculara(6);
		lista.insertAfter(6, 2);
		lista.insertAfter(6, 3);
		lista.insertAfter(2, 1);
		lista.insertAfter(1, 6);
		
		lista.removeAfter(3);
		
		lista.afisare(20);
		
		
	}
	
	

}
