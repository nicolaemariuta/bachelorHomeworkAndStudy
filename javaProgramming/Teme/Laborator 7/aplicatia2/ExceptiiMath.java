package aplicatia2;

public class ExceptiiMath 
{
	
	
	public static void main(String[] args)
	{
		
		try
		{
			//1.testare exceptie sqrt
			double y = -20;
			System.out.println("Radicalul lui " + y + "este: " + mySqrt(y) );
			
			
		}
		catch (SqrtException e )
		{
			e.printStackTrace();
		}
		
		
		try
		{
			// 2.testare exceptie log
			double y = 0;
			System.out.println("Logaritmul lui " + y + "este: " + myLog(y));
		}
		catch(LogException e)
		{
			e.printStackTrace();
		}
		
		try
		{
			// 3.testare exceptie log10
			double y = 0;
			System.out.println("Logaritmul in baza 10 a lui " + y + "este: " + myLog10(y));
		}
		catch(LogException e)
		{
			e.printStackTrace();
		}
		
		
		try
		{
			// 4.testare exceptie log1p
			double y = -1;
			System.out.println("Logaritmul in baza 10 a lui " + y + "este: " + myLog1p(y));
		}
		catch(LogException e)
		{
			e.printStackTrace();
		}
		
		
		try
		{
			//5. testare exceptie max pentru numere int
			int x = 2;
			int y = 2;
			System.out.println("Maximul dintre " + x + "si " + y + " este: "+ myIntMax(x, y));
		}
		catch(MaxException e)
		{
			e.printStackTrace();
		}
		
		try
		{
			//6. testare exceptie max pentru numere double
			double x = 2.2;
			double y = 2.2;
			System.out.println("Maximul dintre " + x + "si " + y + " este: "+ myDoubleMax(x, y));
		}
		catch(MaxException e)
		{
			e.printStackTrace();
		}
		
		
		try
		{
			//7. testare exceptie min pentru numere int 
			int x = 2;
			int y = 2;
			System.out.println("Maximul dintre " + x + "si " + y + " este: "+ myIntMin(x, y));
		}
		catch(MinException e)
		{
			e.printStackTrace();
		}
		
		
		
		
		try
		{
			//8. testare exceptie min pentru numere double
			double x = 2.3;
			double y = 2.3;
			System.out.println("Maximul dintre " + x + "si " + y + " este: "+ myDoubleMin(x, y));
		}
		catch(MinException e)
		{
			e.printStackTrace();
		}
	
		try
		{
			//9. testare exceptie abs
			double x = Math.log(0);
			
			System.out.println("Modulul lui" + x + " este : " + myAbs(x));
			
		}
		
		catch (AbsException e)
		{
			e.printStackTrace();
		}
		
		try
		{
			// 10. testare exceptie nextUp
			double x = Math.log(0);
			System.out.println("Urmatorul numar dupa " + x + " este : " + myNext(x));
			
		}
		catch(NextException e )
		{
			e.printStackTrace();
		}
	
		
		
		
		
	}
	
	private static double mySqrt(double y) throws SqrtException
	{
		
		if (y<0)
		{
			throw new SqrtException("Cannot use sqrt with a negative number");
		}
		else
		{
			return Math.sqrt(y);
		}
		
	}
	
	private static double myLog(double y) throws LogException
	{
		
		if (y<0 || y ==0)
		{
			throw new LogException("Cannot use log with a negative number");
		}
		else
		{
			return Math.log(y);
		}
		
		
	}
	
	
	
	private static double myLog10(double y) throws LogException
	{
		
		if (y<0 || y ==0)
		{
			throw new LogException("Cannot use log10 with a negative number");
		}
		else
		{
			return Math.log10(y);
		}
		
	}
	
	private static double myLog1p(double y) throws LogException
	{
		
		if (y<-1 || y ==-1)
		{
			throw new LogException("Cannot use log1p with a negative number");
		}
		else
		{
			return Math.log1p(y);
		}
		
	}
	
	
	
	private static int myIntMax(int x, int y) throws MaxException
	{
		if (x==y)
		{
			throw new MaxException("Numbers are eqal!");
		}
		else
		{
			return Math.max(x, y);
		}
	}
	
	
	
	private static double myDoubleMax(double x, double y) throws MaxException
	{
		if (x==y)
		{
			throw new MaxException("Numbers are eqal!");
		}
		else
		{
			return Math.max(x, y);
		}
	}
	
	private static int myIntMin(int x, int y) throws MinException
	{
		if (x==y)
		{
			throw new MinException("Numbers are eqal!");
		}
		else
		{
			return Math.max(x, y);
		}
	}
	
	
	
	private static double myDoubleMin(double x, double y) throws MinException
	{
		if (x==y)
		{
			throw new MinException("Numbers are eqal!");
		}
		else
		{
			return Math.max(x, y);
		}
	}
	
	private static double myAbs (double x) throws AbsException
	{
		if (Double.isNaN(x)|| Double.isInfinite(x))
		{
			throw new AbsException("Cannot use this function if number is Nan or Infinite");
		}
		else
		{
			return Math.abs(x);
		}
		
	}
	
	private static double myNext ( double x) throws NextException
	{
		if (Double.isNaN(x)|| Double.isInfinite(x))
		{
			throw new NextException("Cannot use this function if number is Nan or Infinite");
		}
		else
		{
			return Math.nextUp(x);
		}
	}
	

}
