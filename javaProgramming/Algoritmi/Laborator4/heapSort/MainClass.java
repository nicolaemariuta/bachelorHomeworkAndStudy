package heapSort;

public class MainClass
{
	
	public static void main(String[] args)
	{
		int[] array = {3,6,7,1,8,6,5};
		Heap heap = new Heap(array, 7);
		
		heap.heap_sort();
		heap.afisare();
		heap.alter_heap(3, 2);
		heap.afisare();
		
	}

}
