
package sectiunea1B;


public class LinkedListDemo 
{
	public static void main(String[] args)
	{
		LinkedList list = new LinkedList();
		list.data = 29;
		list.next = new LinkedList();
		list.next.data = 10;
		list.next.next = new LinkedList();
		list.next.next.data = 49;
		
	// parcurgerea listei de la primul element
		
		LinkedList iterator = list;
		do
		{
			System.out.println(iterator.data);
		} while((iterator = iterator.next)!=null);
		
		
	} 

}
