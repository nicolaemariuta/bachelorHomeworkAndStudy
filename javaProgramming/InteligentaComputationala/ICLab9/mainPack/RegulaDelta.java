package mainPack;

import java.util.ArrayList;

public class RegulaDelta {
	
	public static void main(String[] args) {
		
		//initializare patternuri
		ArrayList<Mobilier> patternuri = new ArrayList<Mobilier>();
		double[] d1 = {45,85,-1};
		Mobilier p1 = new Mobilier(d1);
		patternuri.add(p1);
		
		double[] d2 = {50,43,-1};
		Mobilier p2 = new Mobilier(d2);
		patternuri.add(p2);
		
		double[] d3 = {40,80,-1};
		Mobilier p3 = new Mobilier(d3);
		patternuri.add(p3);
		
		double[] d4 = {55,42,-1};
		Mobilier p4 = new Mobilier(d4);
		patternuri.add(p4);
		
		double[] d5 = {200,43,-1};
		Mobilier p5 = new Mobilier(d5);
		patternuri.add(p5);
		
		double[] d6 = {48,40,-1};
		Mobilier p6 = new Mobilier(d6);
		patternuri.add(p6);
		
		double[] d7 = {195,41,-1};
		Mobilier p7 = new Mobilier(d7);
		patternuri.add(p7);
		
		double[] d8 = {43,87,-1};
		Mobilier p8 = new Mobilier(d8);
		patternuri.add(p8);
		
		double[] d9 = {200,43,-1};
		Mobilier p9 = new Mobilier(d9);
		patternuri.add(p9);
		
		//initializare iesiri dorite
		ArrayList<Mobilier> iesiriDorite = new ArrayList<Mobilier>();
		double[] i1 = {1,-1,-1};
		Mobilier y1 = new Mobilier(i1);
		iesiriDorite.add(y1);
		
		double[] i2 = {-1,1,-1};
		Mobilier y2 = new Mobilier(i2);
		iesiriDorite.add(y2);
		
		double[] i3 = {1,-1,-1};
		Mobilier y3 = new Mobilier(i3);
		iesiriDorite.add(y3);
		
		double[] i4 = {-1,1,-1};
		Mobilier y4 = new Mobilier(i4);
		iesiriDorite.add(y4);
		
		double[] i5 = {-1,-1,1};
		Mobilier y5 = new Mobilier(i5);
		iesiriDorite.add(y5);
		
		double[] i6 = {-1,1,-1};
		Mobilier y6 = new Mobilier(i6);
		iesiriDorite.add(y6);
		
		double[] i7 = {-1,-1,1};
		Mobilier y7 = new Mobilier(i7);
		iesiriDorite.add(y7);
		
		double[] i8 = {1,-1,-1};
		Mobilier y8 = new Mobilier(i8);
		iesiriDorite.add(y8);
		
		double[] i9 = {-1,-1,1};
		Mobilier y9 = new Mobilier(i9);
		iesiriDorite.add(y9);
		
		
		ArrayList<Conexiuni> conexiuni = new ArrayList<Conexiuni>();
		// initializare conexiuni
		for(int i =0; i < patternuri.size(); i++)
		{
			conexiuni.add(new Conexiuni());
		}
		
		
		// afisare patternuri, iesirile dorite si conexiuni 
		for(int i = 0; i< patternuri.size(); i++)
		{
			afisare(patternuri.get(i), iesiriDorite.get(i), conexiuni.get(i));
		}
		
		
		double c = 4;   // constanta de instruire
		double Emax = 40;
		double E = 0;
		
		int contor = 0;
		while(true)
		{
		
		for(int i =0; i<patternuri.size(); i++)
		{
			
			//pasul 2
			double o1 = conexiuni.get(i).w[0][0]*patternuri.get(i).y[0]+conexiuni.get(i).w[0][1]*patternuri.get(i).y[1]+conexiuni.get(i).w[0][2]*patternuri.get(i).y[2];
			double o2 = conexiuni.get(i).w[1][0]*patternuri.get(i).y[0]+conexiuni.get(i).w[1][1]*patternuri.get(i).y[1]+conexiuni.get(i).w[1][2]*patternuri.get(i).y[2];
			double o3 = conexiuni.get(i).w[2][0]*patternuri.get(i).y[0]+conexiuni.get(i).w[2][1]*patternuri.get(i).y[1]+conexiuni.get(i).w[2][2]*patternuri.get(i).y[2];;
			
			double f1 = (2/(1-Math.pow(Math.E, o1)))-1;
			double f2 = (2/(1-Math.pow(Math.E, o2)))-1;
			double f3 = (2/(1-Math.pow(Math.E, o3)))-1;
			
			
			double[] o = {f1,f2,f3};
			
			//pasul 3
			for(int j =0; j<3; j++)
			{
				for(int k =0; k<3; k++)
				{
					conexiuni.get(i).w[k][j] = conexiuni.get(i).w[k][j] + 0.5*c*(iesiriDorite.get(i).y[j]-o[j])*(1 - o[j]*o[j])*patternuri.get(i).y[j];
				}
			}
			
			//pasul 4
			
			E = E + 0.5*Math.pow((iesiriDorite.get(i).y[0]-o[0]), 2) + 0.5*Math.pow((iesiriDorite.get(i).y[1]-o[1]), 2) + 0.5*Math.pow((iesiriDorite.get(i).y[2]-o[2]), 2);
			
			
		}
		if(E<Emax)
		{
			break;
		}
		else
		{
			E =0;
			contor++;
			System.out.println("Afisare dupa epoca " + contor + ":");
			// afisare patternuri, iesirile dorite si conexiuni 
			for(int i = 0; i< patternuri.size(); i++)
			{
				afisare(patternuri.get(i), iesiriDorite.get(i), conexiuni.get(i));
			}
		}
		
		}
		
		
		System.out.println("Afisare dupa instruire:");
		// afisare patternuri, iesirile dorite si conexiuni 
				for(int i = 0; i< patternuri.size(); i++)
				{
					afisare(patternuri.get(i), iesiriDorite.get(i), conexiuni.get(i));
				}
	
		
		
	}
	
	public static void afisare(Mobilier pattern, Mobilier iesire, Conexiuni conexiune)
	{
		System.out.println("Patternul: " + pattern.y[0] + "  " +pattern.y[1] + "  " + pattern.y[2] );
		System.out.println("Are iesirea dorita " + "  " + iesire.y[0] + "  " + iesire.y[1] + "  " + iesire.y[2]);
		System.out.println("Si conexiunile: ");
		
		
		for(int i =0; i < 3; i++)
		{
			for(int j = 0; j < 3; j++)
			{
				System.out.print(conexiune.w[i][j]+ "  ");
			}
			System.out.println();
		}
		
	}

}
