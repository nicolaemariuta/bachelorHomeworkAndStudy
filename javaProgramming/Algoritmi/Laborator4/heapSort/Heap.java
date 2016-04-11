package heapSort;

public class Heap



{
	int[] array = new int[1000000];
	int size;
	
	Heap(int[] array, int size)
	{
		
		
		this.array = array;
		this.size = array.length;
		
	}
	
	public void alter_heap(int i, int v)
	{
		int x = array[i];
		array[i] = v;
		if(v<x)
		{
			sift_down(i);
		}
		else
		{
			percolate(i);
		}
	}
	
	public void sift_down(int i)
	{
		int k = i;
		int j;
		do
		{
			j = k;
			if(2*j==size-1 && array[2*j]> array[k])
			{
				k = 2*j;
			}
			if(2*j<size-1 && array[2*j+1]> array[k] )
			{
				k = 2*j+1;
			}
			int w = array[j];
			array[j] = array[k];
			array[k] = w;
					
		}while(j!=k);
	}
	
	
	public void percolate(int i)
	{
		int k = i;
		int j;
		
		do
		{
			j = k;
			if(j>1 && array[j/2]<array[k])
			{
				k = j/2;
			}
			int w = array[j];
			array[j] = array[k];
			array[k] = w;
			
			
		} while(j!=k);
		
	}
	
	public void heap_sort()
	{
		for (int i = size-1; i>1; i--)
		{
			int w = array[0];
			array[0] = array[i];
			array[i] = w;
			sift_down(0);
		}
	}
	
	public void afisare()
	{
		for (int i = 0; i<size; i++)
		{
			System.out.print(array[i]+ " ");
			
		}
		System.out.println();
		
	}
	
	
	

}
