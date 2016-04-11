/*
 * Created on Dec 6, 2012
 *
 * TODO To change the template for this generated file go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
package mainPack;

import java.util.ArrayList;

/**
 * @author user
 *
 * TODO To change the template for this generated type comment go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
public class BackPropagation {
	
	public static void main(String[] args) {
		
		// Initializare patternuri
		ArrayList<Propagation> lista = new ArrayList<Propagation>();
		
		double[] m1 = {45, 85, -1};
		lista.add(new Propagation(m1, 1));
		
		double[] m2 = {50, 43, -1};
		lista.add(new Propagation(m2, -1));
		
		double[] m3 = {40, 80, -1};
		lista.add(new Propagation(m3, 1));
		
		double[] m4 = {187, 107, -1};
		lista.add(new Propagation(m4, -1));
		
		double[] m5 = {55, 42, -1};
		lista.add(new Propagation(m5, -1));
		
		double[] m6 = {200, 43, -1};
		lista.add(new Propagation(m6, 1));
		
		
		double[] m7 = {48, 40, -1};
		lista.add(new Propagation(m7, -1));
		
		double[] m8 = {195, 41, -1};
		lista.add(new Propagation(m8, 1));
		
		double[] m9 = {43, 87, -1};
		lista.add(new Propagation(m9, 1));
		
		double[] m10 = {192, 105, -1};
		lista.add(new Propagation(m10, -1));
		
		double[] m11 = {190, 40, -1};
		lista.add(new Propagation(m11, 1));
		
		double[] m12 = {188, 100, -1};
		lista.add(new Propagation(m12, -1));
		
		
		// initializare constanta de invatare
		double Emax = 0.1;
		double E = 0;
		double c = 1;
		
		System.out.println("Sistemul la inceput");
		for(int i =0; i< lista.size(); i++)
		{
			System.out.println("Patternul " + (i+1));
			lista.get(i).afisarePatternuri();
			lista.get(i).afisareConexiuni();
		}
		
		
		for(int epoci = 0; epoci<200; epoci++)
		{
			for(Propagation pattern:lista)
			{
				for(int i =0; i < pattern.y.length-1; i++)
				{
					// calcul y
					pattern.y[i] = Propagation.fNet( pattern.v[i][0]*pattern.x[i]  +  pattern.v[i][1]*pattern.x[i]  + pattern.v[i][2]*pattern.x[i]);
				}
				   // calcul o
					pattern.o = Propagation.fNet(pattern.w[0]*pattern.y[0] + pattern.w[1]*pattern.y[1] + pattern.w[2]*pattern.y[2] + pattern.w[3]*pattern.y[3] );
					
					// calcul semnale de eroare
					pattern.err = 0.5*(pattern.d - pattern.o)*(1-Math.pow(pattern.o, 2));
					for(int i =0; i <pattern.error.length; i++)
					{
						pattern.error[i] = 0.5*(1-Math.pow(pattern.y[i], 2) * pattern.err*(pattern.w[0] + pattern.w[1] + pattern.w[2]));
					}
					
					// actualizare ponderi retea
					for(int i =0; i <pattern.w.length; i++)
					{
						pattern.w[i] = pattern.w[i] + c*pattern.err*pattern.y[i];
						
						for(int j =0; j< pattern.x.length; j++)
						{
							pattern.v[i][j] = pattern.v[i][j] + c*pattern.error[i]*pattern.x[i];
						}
					}
					
					// calcul eroare cumulata
					E = E + 0.5*Math.pow(pattern.d-pattern.o, 2);
					
			}
			
			//intrerupe daca eroarea este destul de mica
			if(E<Emax)
			{
				System.out.println("Solutia a fost gasita dupa  " + epoci + " epoci");
				for(int i =0; i< lista.size(); i++)
				{
					System.out.println("Patternul " + (i+1));
					lista.get(i).afisarePatternuri();
					lista.get(i).afisareConexiuni();
				}
				
				break;
			}
			else   // daca nu, sistemul este afisat
			{
				System.out.println("Sistemul dupa epoca " + epoci);
				for(int i =0; i< lista.size(); i++)
				{
					System.out.println("Patternul " + (i+1));
					lista.get(i).afisarePatternuri();
					lista.get(i).afisareConexiuni();
				}
			}
		}
		
		
		
		
		
		
		

		
		
	}

}
