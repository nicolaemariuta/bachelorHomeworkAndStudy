package mainPack;

public class TestSincronizare1
{
	public static void main(String[] args)
	{
		Buffer b = new Buffer();
		Producator p1 = new Producator(b);
		Consumator c1 = new Consumator (b);
		p1.start();
		c1.start();
		
		
	}

}
