package mainPack;

public class Nod

{
	int data;
	Nod next;
	Nod prev;
	
	Nod(int data, Nod next, Nod prev)
	{
		this.data = data;
		this.next = next;
		this.prev = prev;
		
	}
	Nod(int data)
	{
		this.data = data;
	}
	
	public int getData()
	{
		return data;
	}
	
	public Nod getNext()
	{
		return next;
	}
	
	public Nod getPrev()
	{
		return prev;
	}
	

}
