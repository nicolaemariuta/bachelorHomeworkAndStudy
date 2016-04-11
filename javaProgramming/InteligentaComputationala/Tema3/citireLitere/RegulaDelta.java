package citireLitere;

import java.util.ArrayList;

public class RegulaDelta  {

	ArrayList<Pattern> lista;
	int[] iesiriDorite;

	double c; // constanta de invatare
	double Emax; // eroarea maxima
	double[] w;

	RegulaDelta(ArrayList<Pattern> lista, int[] iesiriDorite) {
		this.lista = lista;
		this.iesiriDorite = iesiriDorite;

		c = 0.6;
		Emax = 0.1;

		w = new double[9];

		for (int j = 0; j < w.length; j++) {
			w[j] = (Math.random() * 2) - 1;
		}

		

	}

	public double[] instruire() {
		
		double E =0;

		for (int contor = 0; contor < 100; contor++) {
			
			E = 0;
			for (int indice = 0; indice < lista.size(); indice++) {
				

				// pasul 2 de la regula delta
				double iesire = lista.get(indice).iesire(w);

				// pasul 3
				for (int i = 0; i < 9; i++) {
					w[i] = w[i] + 0.5 * c * (iesiriDorite[indice] - iesire)
							* (1 - Math.pow(iesire, 2))
							* lista.get(indice).x[i];
				}

				// pasul 4
				E = E + 0.5 * Math.pow(iesire - iesiriDorite[0], 2);

				// verific eroarea maxima
			

			}
			if (E < Emax) {
				System.out.println("Solutia a fost gasita dupa epoca "
						+ contor);
				
				break;
			}
			System.out.println("E=" + E);

		}
		System.out.println("E=" + E);
		return w;

	}

}
