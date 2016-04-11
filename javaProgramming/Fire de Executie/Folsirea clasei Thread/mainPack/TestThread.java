package mainPack;

public class TestThread

{
	public static void main(String[] args)
	{
		AfisareNumere fir1, fir2;
		
		fir1 = new AfisareNumere(0,100,5);  //  Numara de la 0 la 100 cu pasul 5
		fir2 = new AfisareNumere (100,200,10);  // umara de la 100 la 100 cu pasul 10
		
		fir1.start();
		fir2.start();
		// Pornim firele de executie
		// Ele vr fi distruse automat la terminarea lor 
		
	}

}
