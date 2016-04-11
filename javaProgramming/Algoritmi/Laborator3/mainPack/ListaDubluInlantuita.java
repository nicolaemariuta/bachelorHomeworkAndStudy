package mainPack;

import javax.crypto.NullCipher;

public class ListaDubluInlantuita
{
	Nod first;
	Nod last;
	
	ListaDubluInlantuita(Nod first, Nod last)
	{
		this.first = first;
		this.last =  last;
		
		first.next = last;
		first.prev = null;
		
		last.prev = first;
		last.next = null;
	}
	
	
	
	
	public void insertAfter(Nod nod, Nod newNode)
	{
		newNode.prev = nod;
		newNode.next = nod.next;
		
		if (nod.next == null)
		{
			this.last = newNode;
			
		}
		else
		{
			nod.next.prev = newNode;
		}
		nod.next = newNode;
	}
	
	public void insertAfter(int dupa, int numarNou)
	{
		Nod nod = this.first;
		while(true)
		{
			if(nod.data == dupa)
			{
				insertAfter(nod, new Nod(numarNou));
				break;
			}
			if(nod == this.last)
			{
				break;
			}
			nod = nod.next;
		
			
		}
		
	}
	
	
	
	
	
	public void insertBefore(Nod nod, Nod newNode)
	{
		newNode.prev = nod.prev;
		newNode.next = nod;
		if(nod.prev == null)
		{
			this.first = newNode;
		}
		else
		{
			nod.prev.next = newNode;
		}
		nod.prev = newNode;
		
	}
	
	public void insertBefore(int inainte, int numarNou)
	{
		Nod nod = this.first;
		while(true)
		{
			if(nod.data == inainte)
			{
				insertBefore(nod, new Nod(numarNou));
				break;
			}
			if(nod == this.last)
			{
				break;
			}
			nod = nod.next;
		
			
		}
		
	}
	
	
	
	
	public void insertBeginning(Nod newNode)
	{
		if(this.first == null)
		{
			this.first = newNode;
			this.last = newNode;
			newNode.prev = null;
			newNode.next = null;
		}
		else
		{
			insertBefore(this.first, newNode);
		}
	}
	
	
	public void insertBeginning(int nou)
	{
		insertBeginning(new Nod(nou));
	}
	
	
	public void insertLast(Nod newNode)
	{
		if(this.last == null)
		{
			this.first = newNode;
			this.last = newNode;
			newNode.prev = null;
			newNode.next = null;
		}
		else
		{
			insertAfter(this.last, newNode);
		}
	}
	
	
	public void insertLast(int nou)
	{
		insertLast(new Nod(nou));
	}
	
	
	public void remove(Nod nod)
	{
		
		if(nod.prev == null)
		{
			this.first = nod.next;
		}
		else
		{
			nod.prev.next = nod.next;
		}
		if(nod.next == null)
		{
			this.last = nod.prev;
			
		}
		else
		{
			nod.next.prev = nod.prev;
		}
		

		
	
		nod = null;
	}
	
	
	public void remove(int n)
	{
		Nod nod = this.first;
		int contor = 0;
		
	try
	{
		if(nod != null)
		{
		while(true)
		{
			
			if(nod.data == n)
			{
				remove(nod);
				contor++;
			}
			if(nod == this.last)
			{
				break;
			}
			nod = nod.next;
		
			
		}}
	}
	catch( NullPointerException e)
	{
		
		try
		{
			if(this.last!= null)
			{
				if(last.data == n)
				{
					contor = 1;
				}
			}
		}
		catch(NullPointerException E){}
	}
		
		
		
		if(contor == 0)
		{
			System.out.println("Numarul nu a fost gasit");
		}
	}
	
	
	
	
	public void parcurgereInainte()
	{
		Nod nod = this.first;
		System.out.println("Primul nod: "+ nod.getData());
		
		while(nod.next!=null)
		{
			nod = nod.next;
			
			System.out.println("Nodul curent: "+ nod.getData());
			
		}
	}
	
	public void parcurgereInapoi()
	{
		Nod nod = this.last;
		System.out.println("Ultimul nod: "+ nod.getData());
		
		while(nod!=null)
		{
			nod = nod.prev;
			if (nod == this.first)
			{
				System.out.println("Primul nod este: "+ nod.getData());
			}
			else
			{
				System.out.println("Nodul curent: "+ nod.getData());
			}
		}
	}
	
	public int cautareElementInainte(int n)
	{
		Nod nod;
		nod = this.first;
		int contor = 0;
		int pozitie = 0;
		try
		{
		while(true)
		{
			contor++;
			if (nod.data == n )
			{
				pozitie =  contor;
				break;
				
			}
			nod = nod.next;
			if(nod == this.last)
			{
				break;
			}
			
		}
		if(pozitie == 0)
		{
			System.out.println("Elementul nu a fost gasit in lista");
		}
		}
		catch(NullPointerException e)
		{
			try
			{
				if(this.last.data == n)
				{
					pozitie = contor+1;
				}
			}
			catch(NullPointerException E) {}
		}
		return pozitie;
	}
	
	
	public int cautareElementInapoi(int n)
	{
		Nod nod;
		nod = this.last;
		int contor = 0;
		int pozitie = 0;
		try
		{
		while(true)
		{
			contor++;
			if (nod.data == n )
			{
				pozitie =  contor;
				break;
				
			}
			nod = nod.prev;
			if(nod == this.first)
			{
				break;
			}
			
		}
		}
		catch(NullPointerException e)
		{
			try
			{
				if(last.data == n)
				{
					pozitie = contor+1;
				}
			}
			catch(NullPointerException E){}
		}
		
		return pozitie;
	}
	
	

}
