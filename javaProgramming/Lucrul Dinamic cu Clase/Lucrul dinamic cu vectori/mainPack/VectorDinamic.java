package mainPack;

import java.lang.reflect.Array;

public class VectorDinamic
{
	public static void main(String[] args)
	{
		Object a = Array.newInstance(int.class, 10);
		for (int i =0; i< Array.getLength(a); i++)
		{
			Array.set(a, i, new Integer(i));
		}
		
		for (int i =0; i<Array.getLength(a); i++)
		{
			System.out.println(Array.get(a, i)+ " ");
		}
		
	}

}
