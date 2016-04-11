
package sectiunea1B;


public class LinkedList2
{
	int data;
	LinkedList2 next;
	LinkedList2 head;
	
	public LinkedList2()
	{
		head = this;
		next = null;
		data = 0;
	}
	public LinkedList2(LinkedList2 head )
	{
		this.head = head;
		next = null;
		data = 0;
	}
}
