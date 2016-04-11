package citireLitere;

import java.util.ArrayList;

public class MainClass {

	public static void main(String[] args)

	{
		ArrayList<Pattern> lista = new ArrayList<Pattern>();

		double[] x1 = { 1, 0, 0, 1, 0, 0, 1, 1, 1 }; // litera L
		double[] x2 = { 0, 1, 0, 0, 1, 0, 0, 1, 0 }; // litera I

		int d1 = 1; // iesirea dorita pentru litera L
		int d2 = -1; // iesirea dorita pentru litera I
		int[] d = { d1, d2 };

		lista.add(new Pattern(x1, "L"));
		lista.add(new Pattern(x2, "I"));

		

		RegulaDelta delta = new RegulaDelta(lista, d);
		double[] w = delta.instruire();
		
		
		
		// afisare matrice w
		System.out.println("Matricea w dupa instruire");
		for (int i = 0; i < 9; i++) {

			for (int j = 0; j < 2; j++) {
				System.out.print(w[i] + "  ");
			}
			System.out.println();
		}
		
		
		new CitireLitere(w).setVisible(true);
		
		
		double[] x3 = { 1, 0, 0, 1, 0, 0, 1, 0, 1 }; // litera L
		Pattern perturbat = new Pattern(x3);
		System.out.println(perturbat.iesire(w));
		
		
		double[] x4 = { 0, 1, 0, 0, 1, 0, 0, 1, 1 }; // litera L
		Pattern perturbat2 = new Pattern(x4);
		System.out.println(perturbat2.iesire(w));

	}

}
