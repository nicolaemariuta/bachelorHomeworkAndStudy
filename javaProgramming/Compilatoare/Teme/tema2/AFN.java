package tema2;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Scanner;

import tema1.Vocabular;

public class AFN {

	/*
	 * Format fisier
	 * 
	 * 3 // n = numarul de stari
	 *  2 // m = numarul de simboluri 
	 * a b //simbolurile automatului 
	 * 2 -  // matricea T de tranzitii 2,3 2 - 
	 * - 1 // p = numarul de stari finale 
	 * 2 // indicele singurei stari finale
	 *  0 // indice
	 * stare start
	 */
	//

	public int nrStari;
	public int nrSimboluri;
	public Vocabular vocabular;
	public String[][] matriceTranzitii;
	public int stariFinale;
	public int[] indiciSF;
	public int start;

	boolean acceptat;
	boolean blocaj;

	AFN(int nrStari, int nrSimboluri, Vocabular vocabular,
			String[][] matriceTranzitii, int stariFinale, int[] indiciSF,
			int start) {
		this.nrStari = nrStari;
		this.nrSimboluri = nrSimboluri;
		this.vocabular = vocabular;
		this.matriceTranzitii = matriceTranzitii;
		this.stariFinale = stariFinale;
		this.indiciSF = indiciSF;
		this.start = start;

	}

	public static AFN citireFisier(String url) {
		AFN afd = null;

		try {
			Scanner in = new Scanner(new File(url));

			int nrStari = in.nextInt(); // citeste nr stari
			int nrSimboluri = in.nextInt(); // citeste nr simboluri

			String vocab = "";
			for (int i = 0; i < nrSimboluri; i++) // creeaza vocabularul
			{
				String litera = in.next();

				if (!vocab.contains(litera)) {
					vocab = vocab + litera;
				}
			}
			Vocabular vocabular = new Vocabular(vocab, nrSimboluri);

			String[][] matriceTranzitii = new String[nrStari][nrSimboluri]; // citire
																			// matrice
																			// tranzitii

			for (int i = 0; i < nrStari; i++) {
				for (int j = 0; j < nrSimboluri; j++) {
					matriceTranzitii[i][j] = in.next();
				}
			}

			int stariFinale = in.nextInt(); // citire nr stari finale

			int[] indiciSF = new int[stariFinale]; // citire indici stari finale
			for (int i = 0; i < stariFinale; i++) {
				indiciSF[i] = in.nextInt();
			}

			int start = in.nextInt();

			afd = new AFN(nrStari, nrSimboluri, vocabular, matriceTranzitii,
					stariFinale, indiciSF, start); // construire afd

		} catch (FileNotFoundException e) {
			System.out.println("Fisierul nu a fost gasit");
			e.printStackTrace();

		}

		catch (Exception e) {
			e.printStackTrace();
			System.out.println("Fisierul a fost scris gresit!");
		}

		return afd;
	}

	public void parcurgere(String cuvant) {
		acceptat = false;
		blocaj = false;

		int l = cuvant.length();
		
		try
		{

		iteratie(start, cuvant);
		}
		catch(Exception e) {System.out.println("Cuvantul nu face parte din vocabular");}
		

		if (acceptat) {
			System.out.println("Cuvantul a fost acceptat");
		} else if (blocaj) {
			System.out.println("A aparut blocaj");
		} else {
			System.out.println("Cuvantul nu a fost acceptat");
		}

	}

	public void iteratie(int start, String cuvant) {

		System.out.println(cuvant.length());

		if (cuvant.length() == 0) {

			for (int i : indiciSF) {
				if (start == i) {
					acceptat = true;
					break;
				}
			}
			if(!acceptat) {blocaj = false;}
		} else {
			
			String tranz = matriceTranzitii[start][vocabular.getVocabular()
					.indexOf(cuvant.substring(0, 1))];

			tranz = tranz.replaceAll(",", " ");

			Scanner scan = new Scanner(tranz);

			{
				if (tranz.equals("-")) {

					
						blocaj = true;
					
				} else
					do {

						int next = scan.nextInt();
						String c = cuvant.substring(0, 1);

						if (c.equals("~")) {

							iteratie(next, cuvant);
						} else {

							iteratie(next, cuvant.substring(1, cuvant.length()));
						}
					} while (scan.hasNext());
			}
		}

	}

	public String transformare(String stari, String litera) {

		stari = stari.replaceAll(",", " ");
		String cuvant = "";

		Scanner scan = new Scanner(stari);

		do {
			int i = scan.nextInt();
			cuvant = cuvant
					+ matriceTranzitii[i][vocabular.getVocabular().indexOf(
							litera)] + ",";
		} while (scan.hasNext());

		// eliminare duplicate si sortare din cuv iesire
		cuvant = cuvant.replaceAll(",", " ");

		scan = new Scanner(cuvant);
		String iesire = "";
		ArrayList<Integer> lista = new ArrayList<Integer>();

		do {
			int s = scan.nextInt();
			if (!lista.contains(s)) {
				lista.add(s);
			}
		} while (scan.hasNext());

		Collections.sort(lista);

		for (int i : lista) {
			iesire = iesire + i + ",";
		}

		return iesire;
	}

	public static void main(String[] args) {

		AFN afn = citireFisier("citireAFN");
		afn.parcurgere("ab");

	}

}
