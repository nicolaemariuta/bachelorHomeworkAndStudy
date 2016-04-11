package gradientul;

public class Gradient {
	
	
	
	public static void gradient1()
	{
		double c = 0.01; //constanta de invatare c= 0.01
		double x0 = Math.random();// x0 se alege aleator
		double x1;
		double m = 0;
		
		int counter = 0;
		
		
		   // modificarile componentelor xn
		do	
		{
			x1= x0 - c*12 *(x0 - 1); 
			m= Math.abs(x0 - x1);
			x0 = x1;
			counter++;
			System.out.println("Dupa pasul " + counter + " valoarea lui f(x) este: "+ (6*x1*x1 - 12*x1 + 1));
			
		}while(m > 0.00001);
		
		System.out.println("S-a gasit rezultatul: " + x0 + " dupa " + counter+ " iteratii.");
	}
	
	public static void gradient2()
	{
		double c = 0.01;  // constanta de invatare c= 0.01
		double x0 = Math.random();// x0 se alege aleator
		double y0 = Math.random();// y0 se alege aleator
		
		double x1, y1;
		double m = 0, n = 0;
		
		
		int counter = 0;
		
		do
		{
			x1 = x0- c*2*x0;
			m = Math.abs(x1- x0);
			y1 = y0 - c*4*y0;
			n = Math.abs(y1- y0);
			x0 = x1;
			y0 = y1;
			counter++;
			
			System.out.println("Dupa pasul " + counter + " valoarea lui f(x) este: "+ (x1*x1 + 2*y1*y1));
			
		
		}while ((m > 0.00001) && (n > 0.00001));
		
	
		System.out.println("S-a gasit rezultatul: "+ x0 + " si " + y0+ " dupa " + counter +" iteratii.");
	}
	
	
	public static void gradient3()
	{
		double c = 0.01; // constanta de invatare c = 0.01
		double x0 = Math.random();
		double y0 = Math.random();
		double x1, y1;
		double m= 0, n = 0;
		
		int counter = 0;
		
		
		do
		{
			x1 = x0-c*202*x0 - 200*(y0*y0) - 2;
			x0 = x1;
			m = Math.abs(x1-x0);
			y1 = y0 - c*400*y0*((y0*y0)*x0);// 400y(y^2-x)
			y0 = y1;
			n = Math.abs(y1-y0);
			counter++;
			
			System.out.println("Dupa pasul " + counter + " valoarea lui f(x) este: "+ ((1-x1)*(1-x1) + 100*(x1-y1*y1)*(x1-y1*y1)));
			
		}while((m > 0.00000001) && (n > 0.00000001));
		
	
		System.out.println("S-a gasit rezultatul " + x0 + " si " + y0
				+ " dupa " + counter + " iteratii.");
	}
	

}
