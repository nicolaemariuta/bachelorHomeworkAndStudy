
package mainPack;


public class TestException1 
{
	public static void main(String[] args)
	{
		for (int i =0; i<= 1; i++)
		{
			try
			{
				System.out.println("\n Caz " + i);
				metoda1(i);
				System.out.println("Sfarsit cazul " + i);
			}
			catch(Exception ex)
			{
				System.out.println("A aparut o exceptie. Mesajul ei este " + ex.getMessage());
			}
			finally
			{
				System.out.println("Se executa blocul finally");
			}
		}
		
	}
	
	private static void metoda1(int i) throws Exception
	{
		System.out.println("Am intrat in metoda 1");
		if (i!=0)
		{
			throw new Exception("Exceptia din metoda 1");
		}
		System.out.println("Am iesit din metoda 1");
		
	}

}
