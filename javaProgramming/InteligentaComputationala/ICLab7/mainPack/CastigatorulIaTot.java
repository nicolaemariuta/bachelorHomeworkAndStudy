package mainPack;

import java.util.ArrayList;

public class CastigatorulIaTot {
	
	public static void main(String[] args) {
		
		// variabile
		double c = 1;
		int epoci = 10;
		
		//alegerea prototipurilor
		
		Mobila scaun = new Mobila(90+(int)(Math.random()*20), 40+(int)(Math.random()*10));
		Mobila masa = new Mobila(40+(int)(Math.random()*10), 40+(int)(Math.random()*10));
		Mobila pat = new Mobila(40+(int)(Math.random()*20), 90+(int)(Math.random()*10));
		scaun.setNume("Scaun");
		masa.setNume("Masa");
		pat.setNume("Pat");
		
		
		ArrayList<Mobila> prototipuri = new ArrayList<Mobila>();
		prototipuri.add(scaun);
		prototipuri.add(masa);
		prototipuri.add(pat);
		
		
		System.out.println("Prototipurile la inceput: ");
		for(Mobila p:prototipuri)
		{
			System.out.println(p.toString());
		}
		
		//alegerea patternurilor
		ArrayList<Mobila> patternuri = new ArrayList<Mobila>();
		
		for(int i =0; i<10; i++)
		{
			patternuri.add(new Mobila (20+(int)(Math.random()*90), 20+(int)(Math.random()*90)));
		}
		
		System.out.println("Patternurile: ");
		for(Mobila p:patternuri)
		{
			System.out.println("Patterunul cu numarul "+(patternuri.indexOf(p)+1)+p.toString());
		}
		
		
		//epoci de instruire
		for(int i =0; i <epoci; i++)
		{
			for(Mobila m:patternuri )
			{
				//pasul 2
	//			double[] array = new double[patternuri.indexOf(m)+1];
				Mobila wm = new Mobila(Integer.MAX_VALUE,Integer.MAX_VALUE);
				
				for(Mobila p:prototipuri)
				{
					double a =  Mobila.getDelta(p, m);
					double b = Mobila.getDelta(wm, m);
					
					if(a<b)
					{
			//			System.out.println("&&&&&&");
						m.setNume(p.getNume());
						wm = p;
					}
					
				}
		//		System.out.println("wm="+wm.getNume());
				//pasul 3
				wm.setLungime(wm.getLungime() + (int)(c*(m.getLungime()-wm.getLungime())) );
				wm.setLatime(wm.getLatime() + (int)(c*(m.getLatime()-wm.getLatime())) );
				
			}
		}
		
		
		System.out.println("Patternurile: ");
		for(Mobila p:patternuri)
		{
			System.out.println("Patterunul cu numarul "+(patternuri.indexOf(p)+1)+" "+p.toString());
		}
		
		System.out.println("Prototipurile la sfarsit: ");
		for(Mobila p:prototipuri)
		{
			System.out.println(p.toString());
		}
	}

}
