
package sectiunea1B;

public class LinkedList2Demo 
{
	public static void main(String[] args)
	{
		LinkedList2 list = new 	LinkedList2();
		list.head = list;
		list.data = 28;
		list.next = new LinkedList2(list);
		list.next.data = 10;
		list.next.next = new LinkedList2(list);
		list.next.next.data = 49;
		
		// parcurgerea listei de la primul element
		while(list.next!=null)
		{
			System.out.println(list.data);
			list = list.next;
			
		}
		
		System.out.println(list.data);
		
		while(list.next!=null)
		{
			System.out.println(list.data);
			list = list.next;
			
		}
		
		System.out.println(list.data);
		
		

	}

}
