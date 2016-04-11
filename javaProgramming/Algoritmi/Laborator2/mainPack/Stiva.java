package mainPack;

import java.util.ArrayList;

public class Stiva
{
	int[] array;
	int top = 0;
	
 	
	public Stiva(int n)
	{
		this.array = new int[n];
	}
	
	public void push (int n)
	{
		if( top == array.length )
		{
			System.out.println("Stiva este plina");
		}
		else
		{
			array[top] = n;
			top++;
		}
		
	}
	
	public int  pop()
	{
		
		if (top == 0)
		{
			System.out.println("Stiva este goala");
			return 0;
		}
		else
		{
			top--;
			int x = array[top];
			return x;
		}
		
	}
	
	public void afisare()
	{
		for (int i = 0; i <top; i++)
		{
			System.out.println("Elementul cu numarul " + i+" este: "+ array[i]);
		}
	}

}
