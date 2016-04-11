package listaCirculara;

public class Nod 

{
	int data;
	Nod next;
	
	Nod()
	{
		data = 0;
		next = null;
	}
	
	Nod(int data, Nod next)
	{
		this.data = data;
		this.next = next;
	}
	
	public int getData() {
		return data;
	}

	public void setData(int data) {
		this.data = data;
	}

	public Nod getNext() {
		return next;
	}

	public void setNext(Nod next) {
		this.next = next;
	}

	
	

}
