
package fractie;


public class TestFractie {

	public static void main(String[] args)
	{
		Fractie f1 = new Fractie(4,6);
		Fractie f2 = new Fractie(2,3);
		f1.afisareFractie();
		f2.afisareFractie();
		
		System.out.println("Simplificare: ");
		Fractie f3 = Fractie.simplificareFractie(f1);
		f3.afisareFractie();
		
		System.out.println("Adunare: ");
		Fractie f4 = Fractie.adunareFractie(f1,f2);
		f4.afisareFractie();
		
		System.out.println("Scadere: ");
		Fractie f5 = Fractie.scadereFractie(f1,f2);
		f5.afisareFractie();
		
		System.out.println("Inmultire: ");
		Fractie f6 = Fractie.inmultireFractie(f1,f2);
		f6.afisareFractie();
		
		System.out.println("Impartire: ");
		Fractie f7 = Fractie.impartireFractie(f1,f2);
		f7.afisareFractie();
	}
}
