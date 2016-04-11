package figuriGeometrice;

public class TestFiguriGeometrice 
{
	public static void main(String[] args)
	{
		Punct pc1 = new Punct(0,0,0);
		Punct pc2 = new Punct(0,6.9,0);
		Cub c = new Cub(pc1,pc2);
		System.out.println("Lungimea laturii cubului este : "+ c.lungimeLatura());
		System.out.println("Aria totala a cubului este: " + c.ariaTotala());
		System.out.println("Volumul cubului este: " + c.volumul());
		System.out.println("Centrul de coordonate al cubului are coordonatele:");
		Punct.afisarePunct(c.centrulGreutate());
		
		
		Punct ps1 = new Punct(0,0,0);
		Punct ps2 = new Punct(0,2,0);
		Sfera s = new Sfera(ps1,ps2);
		System.out.println("Lungimea razei sferei este : "+ s.razaSfera());
		System.out.println("Aria totala a sferei este: " + s.ariaTotala());
		System.out.println("Volumul sferei este: " + s.volumul());
		System.out.println("Centrul de coordonate al sferei are coordonatele:");
		Punct.afisarePunct(s.centrulGreutate());
		
		
	}

}
