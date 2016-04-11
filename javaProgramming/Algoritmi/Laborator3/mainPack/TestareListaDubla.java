package mainPack;

public class TestareListaDubla
{
	public static void main(String[] args)
	{
	/*	Nod nod1 = new Nod(1);
		Nod nod2 = new Nod(2);
		ListaDubluInlantuita lista = new ListaDubluInlantuita(nod1, nod2);
		
		Nod nod3 = new Nod(3);
		lista.insertAfter(lista.first, nod3);
		
		Nod nod4 = new Nod(4);
		lista.insertBefore(nod2, nod4);
		
		Nod nod5 = new Nod(5);
		lista.insertAfter(nod4, nod5);
		
		Nod nod6 = new Nod(6);
		lista.insertAfter(nod6, nod6);   */
		
		
		ListaDubluInlantuita lista =new ListaDubluInlantuita(new Nod(5), new Nod(6));
		
		lista.remove(5);
		
		lista.insertBefore(6, 5);
		
		lista.parcurgereInainte();

		
		
	
		
		
		
		
		
	}

}
