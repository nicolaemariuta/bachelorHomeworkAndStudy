package mainPack;

import java.util.Arrays;

public class Sort extends Functie

{
	public int executa()
	{
		if (v == null)
		{
			return -1;
		}
		Arrays.sort(v);
		for (int i =0; i< v.length; i++)
		{
			System.out.println(v[i]+ " ");
		}
		return 0;
		
	}
}
