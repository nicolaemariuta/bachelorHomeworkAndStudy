package regulaDelta;

public class Clasificator {

	public static void main(String[] args) {
		double[] x1 = { 1, 0, 0, 1, 0, 0, 1, 1, 1 }; // litera L
		double[] x2 = { 0, 1, 0, 0, 1, 0, 0, 1, 0 }; // litera I
		int[] d1 = { 1, -1 }; // iesirea dorita pentru litera L
		int[] d2 = { -1, 1 }; // iesirea dorita pentru litera I

		double[][] w = new double[2][9];

		for (int i = 0; i < 9; i++) {
			for (int j = 0; j < w.length; j++) {
				w[j][i] = (Math.random()*2) - 1;
			}
		}

		double c = 0.5; // constanta de invatare
		double Emax = 0.01; // eroarea maxima
		double E = 0; // eroarea
		
		
		
		
		// afisare matrice w
//		System.out.println("Matricea w inainte de  epoci");
//		for(int i =0; i < 9; i++)
//		{
//			
//			for(int j = 0; j < 2; j++)
//			{
//				System.out.print(w[j][i]+ "  ");
//			}
//			System.out.println();
//		}

		for (int contor = 0; contor < 1000; contor++) {
			c*=.95;
			// pentru primul pattern
			// pasul 2 de la regula delta
			// pentru prima iesire
			double net1 = 0;
			for (int i = 0; i < 9; i++) {
				net1 = net1 + w[0][i] * x1[i];
			}
			//System.out.println("net1= " + net1);
			double fnet1 = (2 / (1 + Math.pow(Math.E, -net1))) - 1;

			// pentru a doua iesire
			double net2 = 0;
			for (int i = 0; i < 9; i++) {
				net2 = net2 + w[1][i] * x1[i];
			}

			double fnet2 = (2 / (1 + Math.pow(Math.E, -net2))) - 1;

			// pasul 3
			// pentru prima iesire
			for (int i = 0; i < 9; i++) {
				w[0][i] = w[0][i] + 0.5 * c * (d1[0] - fnet1) * (1 - Math.pow(fnet1, 2))*x1[i];
			}

			// pentru a doua iesire
			for (int i = 0; i < 9; i++) {
				w[1][i] = w[1][i] + 0.5 * c * (d1[1] - fnet2)
						* (1 - Math.pow(fnet2, 2))*x1[i];
			}

			// pasul 4
			E = E + 0.5 * Math.pow(fnet1 - d1[0], 2) + 0.5
					* Math.pow(fnet2 - d1[1], 2);

			// aceleasi calcule pentru al doilea pattern
			// pasul 2 de la regula delta
			// pentru prima iesire
			double net3 = 0;
			for (int i = 0; i < 9; i++) {
				net3 = net3 + w[0][i] * x2[i];
			}

			double fnet3 = (2 / (1 + Math.pow(Math.E, -net3))) - 1;

			// pentru a doua iesire
			double net4 = 0;
			for (int i = 0; i < 9; i++) {
				net4 = net4 + w[1][i] * x2[i];
			}

			double fnet4 = (2 / (1 + Math.pow(Math.E, -net4))) - 1;

			// pasul 3
			// pentru prima iesire
			for (int i = 0; i < 9; i++) {
				w[0][i] = w[0][i] + 0.5 * c * (d2[0] - fnet3)
						* (1 - Math.pow(fnet3, 2))*x2[i];
			}

			// pentru a doua iesire
			for (int i = 0; i < 9; i++) {
				w[1][i] = w[1][i] + 0.5 * c * (d2[1] - fnet4)
						* (1 - Math.pow(fnet4, 2))*x2[i];
			}

			// pasul 4
			E = E + 0.5 * Math.pow(fnet3 - d2[0], 2) + 0.5
					* Math.pow(fnet4 - d2[1], 2);
			
			
			// verific eroarea maxima
			if(E<Emax)
			{
				System.out.println("Solutia a fost gasita dupa epoca " + contor);
				break;
			}
			else
			{
				System.out.println("E= " + E);
				E = 0;
			}
			
	

		}
		
		// afisare matrice w
		System.out.println("Matricea w dupa epoci");
		for(int i =0; i < 9; i++)
		{
			
			for(int j = 0; j < 2; j++)
			{
				System.out.print(w[j][i]+ "  ");
			}
			System.out.println();
		}
		
		
		
		
		// Depistare variante perturbate ale literelor I si L
		double[] x3 = { 1, 0, 0, 1, 0, 0, 1, 1, 1 }; // litera L
		double[] x4 = { 0, 1, 0, 0, 1, 0, 0, 1, 0 }; // litera I
		
		
		double net1 = 0;
		for (int i = 0; i < 9; i++) {
			net1 = net1 + w[0][i] * x3[i];
		}

		double fnet1 = (2 / (1 + Math.pow(Math.E, -net1))) - 1;
		int o1 = (int) fnet1;
		
		double net2 = 0;
		for (int i = 0; i < 9; i++) {
			net2 = net2 + w[1][i] * x3[i];
		}

		double fnet2 = (2 / (1 + Math.pow(Math.E, -net2))) - 1;
		int o2 = (int) fnet2;
		
		System.out.println("Iesirile pentru varianta perturbata a literei L");
		System.out.println("o1= " + fnet1);
		System.out.println("o2= " + fnet2);
		
		
		
		
		double net3 = 0;
		for (int i = 0; i < 9; i++) {
			net3 = net3 + w[0][i] * x4[i];
		}

		double fnet3 = (2 / (1 + Math.pow(Math.E, -net3))) - 1;
		int o3 = (int) fnet3;
		
		double net4 = 0;
		for (int i = 0; i < 9; i++) {
			net4 = net4 + w[1][i] * x4[i];
		}

		double fnet4 = (2 / (1 + Math.pow(Math.E, -net4))) - 1;
		int o4 = (int) fnet4;
		
		System.out.println("Iesirile pentru varianta perturbata a literei I");
		System.out.println("o1= " + fnet3);
		System.out.println("o2= " + fnet4);
		

	}

}
