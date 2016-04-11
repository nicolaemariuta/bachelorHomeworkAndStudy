package listaCirculara;

public class ListaCirculara
{
	Nod first;
	
	ListaCirculara(Nod first)
	{
		this.first = first;
		first.next = first;
				
	}
	
	ListaCirculara(int n)
	{
		this.first = new Nod(n,first);
		first.next = first;
				
	}
	
	public Nod cautareElement(int n)
	{
		boolean b = false;
		Nod nod = first;
		if (first == null)
		{
			System.out.println("Lista este goala");
		}
		else
		{
			
			while(nod.next!=first)
			{
				if( nod.data == n)
				{
					b = true;
					break;
				}
				nod = nod.next;
			}
			
		}
		
		if(b = true)
		{
		return nod;}
		else
		{
			System.out.println("Elementul nu a fost gasit");
			return null;
		}
	}
	
	
	public void insertAfter(int n, int n2)
	{
		Nod nod = cautareElement(n);
		Nod newNode = new Nod();
		newNode.setData(n2);
		if(nod!=null)
		{
			
			newNode.next = nod.next;
			nod.next = newNode;
		}
	}
	
	
	public void removeAfter(int n)
	{
		Nod nod = cautareElement(n);
		if(nod!=null)
		{
			if(nod.next == nod)
			{
				System.out.println("Lista are un singur element");
			}
			else
			{
			nod.next = nod.next.next;
			}
		}
	}
	
	
	public void afisare(int index)
	{
		

		Nod nod = first;
		for(int i = 1; i <index;i++)
		{
			nod = nod.next;
		}
		System.out.println("Primul nod " + nod.getData());
		Nod nod2 = nod.next;
		while(nod2.next!=nod)
		{
			nod2 = nod2.next;
			System.out.println("Valoarea nodului curent: " + nod2.getData());
		}
	}
	
}
