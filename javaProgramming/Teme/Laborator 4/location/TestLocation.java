package location;

public class TestLocation
{
	public static void main(String[] args)
	{
		// a)
		Location l = new Location(2,3);            
		System.out.println(l.toString());
		
		
		//b)
		Location a = new Location (0,2);
		Location b = new Location (0,0);
		Location c = new Location (3,0);
		System.out.println("Coordonatele triunghiului sunt: ");
		System.out.println("A: "+ a.toString());
		System.out.println("B: "+ b.toString());
		System.out.println("C: "+ c.toString());
		System.out.println("Lungimile laturilor triunghiului sunt: ");
		System.out.println("AB= " + Location.distance(a, b));
		System.out.println("AC= " + Location.distance(a, c));
		System.out.println("BC= " + Location.distance(c, b));
		
		//c)
		Object l2;
		l2 = l.clone();
		
		if (l2==l)
		{
			System.out.println("Pentru '==' se obtine true");
		}
		else
		{
			System.out.println("Pentru '==' se obtine false");
		}
		
		if (l2.equals(l))
		{
			System.out.println("Pentru .equals() se obtine true");
		}
		else
		{
			System.out.println("Pentru .equals() se obtine false");
		}
		// se observa ca pentru == se obtine false, iar pentru .equals() se obtine true
		
		//d)
		Location A = new Location (3,2);
		Location B = new Location (1,7);
		Location C = Location.midpoint(A, B);
		if (Location.distance(A, C)== Location.distance(B, C))
		{
			System.out.println("Distantele AC si BC sunt egale");
		}
		else
		{
			System.out.println("Distantele AC si BC nu sunt egale");
		}
		// distanta de la A la C este egala cu distanta de la B la C
		
		//e)
		A.rotate90();
		System.out.println("Folosind metoda rotate, punctul A devine "+ A.toString());
		B.shift(1, 2);
		System.out.println("Folosind metoda shift, punctul B devine "+ B.toString());
	}

}
