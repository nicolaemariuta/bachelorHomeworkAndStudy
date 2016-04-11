
package mainPack;


public class TestExceptions2
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
			catch (Throwable exTH)
			{
				System.out.println("A aparut o exceptie Throwable in main");
				exTH.printStackTrace(System.out);
			}
			
			finally
			{
				System.out.println("Se executa blocul finally");
			}
			
			
		}
	}
	public static void metoda1(int i) throws Throwable
	{
		System.out.println("Am intrat in metoda 1");
		metoda2(i);
		System.out.println("Am iesit din metoda 1");
	}
	
	public static void metoda2(int i) throws Throwable
	{
		System.out.println("Am intrat in metoda 2");
		
		if ( i!= 0)
		{
			throw new Throwable ("Exceptia din metoda 2");
		}
		
		System.out.println("Am iesit din metoda 2");
	}
	

}
