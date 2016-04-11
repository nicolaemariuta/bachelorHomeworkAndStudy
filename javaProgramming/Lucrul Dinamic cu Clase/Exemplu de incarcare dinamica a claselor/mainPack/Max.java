package mainPack;

public class Max extends Functie
{


	public int executa()
	{
		if (v==null)
		{
			return -1;
		}
		int max = v[0];
		for (int i =0; i<v.length; i++)
		{
			if (max<v[i])
			{
				max = v[i];
			}
		}
		System.out.println("maximul este " + max);

		return 0;
	}

}
