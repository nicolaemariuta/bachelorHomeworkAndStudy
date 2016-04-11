package mainPack;

public class Dezordonare
{
	
	
	public static void perechiDezordonate( int[] sir)
	{
		int contor = 0;
		for (int i = 0; i < sir.length; i++)
		{
			for (int j = 0; j < sir.length; j++)
			{
				if(i<j && sir[i]> sir[j])
				{
					System.out.println("("+sir[i]+ ","+sir[j]+")");
					contor = contor+1;
				}
			}
		}
		System.out.println("Numarul perechilor dezordonate: " + contor);
	}
	
	public static void main(String[] args)
	{
		int[] array = {1,13,2,4};
		perechiDezordonate(array);
		
	}

}
