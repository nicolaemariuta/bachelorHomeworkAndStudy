package mainPack;

import java.util.*;

public class SumaMaxima 
{
	public static void main(String[] args) 
	{
		Vector<Integer> vector = new Vector(10);
		
		Scanner k = new Scanner(System.in);
		
		vector.add(2);
		vector.add(4);
		vector.add(1);
		vector.add(6);
		
		System.out.println("Introduceti valoarea lui m: ");
		int m = k.nextInt();
		
		int suma = 0;
		
		for (int i =0; i<m; i++)
		{
			int index = 0;
			 for (int j =0; j<vector.size(); j++)
			 {
				 if (vector.elementAt(j)>vector.elementAt(index))
				 {
					 index = j;
				 }
			 }
			 suma = suma + vector.remove(index);
		}
			System.out.println("Suma maxima este " + suma);
		
	
	

		
	}

}
