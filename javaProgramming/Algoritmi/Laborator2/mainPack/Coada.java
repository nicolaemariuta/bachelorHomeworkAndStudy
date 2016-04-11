package mainPack;

import java.util.ArrayList;

public class Coada
{
	int[] array;
	int head = 0;
	int tail = 0;
	
	public Coada(int n)
	{
		array = new int[n];
	}
	
	public void insert_qeue (int x)
	{
		head = (head+1)%(array.length+1);
		System.out.println(head);
		if (head == tail)
		{
			System.out.println("Coada este plina");
		}
		else
		{
			array[head-1] = x;
		}
	}
	
	public int delete_qeue()
	{
		if(head==tail)
		{
			System.out.println("Coada este goala");
			return 0;
		}
		else
		{
			tail = (tail+1)%(array.length+1);
			int x = array[tail-1];
			return x;
		}
	}
	
	public void afisare()
	{
		for (int i = 0; i <array.length; i++)
		{
			System.out.println("Elementul cu numarul " + i+" este: "+ array[i]);
		}
	}

}
